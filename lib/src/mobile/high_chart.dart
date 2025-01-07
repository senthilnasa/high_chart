import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';

///
/// A Chart library for Flutter based on [High Charts (.JS)](https://www.highcharts.com/).
///
/// This library uses `WebView` to render High Charts with data and configuration provided by the user.
/// It supports Android, iOS, Web, Windows, and MacOS platforms.
/// For the Web platform, High Charts scripts need to be included in the `web/index.html` file.
///
class HighCharts extends StatefulWidget {
  const HighCharts({
    required this.data, // Chart data in JSON format
    required this.size, // Size of the chart (height and width)
    this.loader = const Center(
      child: CircularProgressIndicator(),
    ), // Loader widget while the chart loads
    this.networkScripts = const [], // Network-based JS scripts for High Charts
    this.localScripts = const [], // Local JS scripts for High Charts
    this.scripts = const [], // Deprecated: Combined list of JS scripts
    super.key,
  });

  /// A custom loader widget displayed until the chart is fully loaded.
  /// Defaults to a `CircularProgressIndicator`. This setting has no effect on the Web platform.
  final Widget loader;

  /// Chart data and configuration in JSON format.
  ///
  /// Example:
  /// ```dart
  /// String chartData = '''
  /// {
  ///   title: { text: 'Sample Chart' },
  ///   xAxis: { categories: ['A', 'B', 'C'] },
  ///   series: [{ data: [1, 2, 3] }]
  /// }
  /// ''';
  /// ```
  /// Reference: [High Charts API](https://api.highcharts.com/highcharts)
  final String data;

  /// Dimensions of the chart widget. Both height and width are required.
  ///
  /// Example:
  /// ```dart
  /// Size chartSize = Size(400, 300);
  /// ```
  final Size size;

  /// List of URLs pointing to High Charts JavaScript files.
  ///
  /// Reference: [High Charts Scripts](https://code.highcharts.com/)
  /// Example:
  /// ```dart
  /// List<String> scripts = [
  ///   'https://code.highcharts.com/highcharts.js',
  ///   'https://code.highcharts.com/modules/exporting.js'
  /// ];
  /// ```
  final List<String> networkScripts;

  /// List of locally stored High Charts JavaScript files to be loaded.
  /// Example:
  /// ```dart
  /// List<String> localScripts = ['assets/highcharts.js'];
  /// ```
  final List<String> localScripts;

  @Deprecated('Use this instead: `networkScripts` or `localScripts`')
  final List<String> scripts;

  @override
  HighChartsState createState() => HighChartsState();
}

class HighChartsState extends State<HighCharts> {
  bool _isLoaded = false; // Tracks if the chart has been loaded
  late WebViewController
      _controller; // WebView controller for managing chart rendering

  @override
  void initState() {
    super.initState();

    // Initialize the WebView controller and configure it
    _controller = WebViewController();

    _controller
      ..setJavaScriptMode(JavaScriptMode
          .unrestricted) // Allow unrestricted JavaScript execution
      ..enableZoom(false) // Disable zoom
      ..loadHtmlString(
          _htmlContent()) // Load the HTML content for rendering High Charts
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (error) {
            debugPrint(error.toString()); // Print WebView errors for debugging
          },
          onPageFinished: (url) async {
            // When the page finishes loading, inject local scripts if any
            for (String src in widget.localScripts) {
              String? scriptData = await getLocalAssetString(src);
              if (scriptData == null) {
                debugPrint(
                    'High Charts Error -> $src not found'); // Log error if the script is missing
                continue;
              }
              _controller.runJavaScript(
                  scriptData); // Inject the script into the WebView
            }
            _loadData(); // Render the chart with the provided data
          },
          onNavigationRequest: (request) async {
            // Handle external link navigation
            if (await canLaunchUrlString(request.url)) {
              try {
                launchUrlString(request.url,
                    mode: LaunchMode
                        .externalApplication); // Open in external browser
              } catch (e) {
                debugPrint('High Charts Error -> $e'); // Log any errors
              }
              return NavigationDecision
                  .prevent; // Prevent navigation within the WebView
            }
            return NavigationDecision.navigate; // Allow normal navigation
          },
        ),
      );

    if (!Platform.isMacOS) {
      _controller.setBackgroundColor(Colors
          .transparent); // Set a transparent background for non-MacOS platforms
    }
  }

  @override
  void didUpdateWidget(covariant HighCharts oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Reload the WebView content if widget properties change
    if (oldWidget.data != widget.data ||
        oldWidget.size != widget.size ||
        oldWidget.localScripts != widget.localScripts ||
        oldWidget.networkScripts != widget.networkScripts) {
      _controller.loadHtmlString(_htmlContent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height, // Set the height of the widget
      width: widget.size.width, // Set the width of the widget
      child: Stack(
        alignment: Alignment.center, // Center align child widgets
        fit: StackFit.expand,
        children: [
          !_isLoaded
              ? widget.loader
              : const SizedBox
                  .shrink(), // Show loader until the chart is loaded
          WebViewWidget(
            controller: _controller,
          ), // Render the chart using WebView
        ],
      ),
    );
  }

  // Generate the HTML content for rendering the chart
  String _htmlContent() {
    String html = '''
      <!DOCTYPE html>
      <html>
        <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0"/>
        </head>
        <body>
          <div style="height:100%;width:100%;" id="highChartsDiv"></div>
          <script>if (typeof senthilnasa !== 'function') function senthilnasa(a){ eval(a); return true; }</script>
    ''';

    // Add network scripts to the HTML
    for (String src in widget.networkScripts) {
      html += '<script async="false" src="$src"></script>';
    }

    // Add deprecated scripts to the HTML
    // ignore: deprecated_member_use_from_same_package
    if (widget.scripts.isNotEmpty) {
      debugPrint('High Charts Warning -> The "scripts" property is deprecated. '
          'Please use "networkScripts" or "localScripts" instead.');
      // ignore: deprecated_member_use_from_same_package
      for (String src in widget.scripts) {
        html += '<script async="false" src="$src"></script>';
      }
    }
    html += '</body></html>';
    return html;
  }

  // Load local assets as strings
  Future<String?> getLocalAssetString(String path) async {
    try {
      return await rootBundle.loadString(path);
    } catch (_) {
      return null; // Return null if the asset is not found
    }
  }

  // Load the chart data into the WebView
  void _loadData() {
    if (mounted) {
      setState(() {
        _isLoaded = true; // Mark the chart as loaded
      });

      // Inject the chart data into the WebView
      _controller.runJavaScriptReturningResult(
        "senthilnasa(`Highcharts.chart('highChartsDiv',${widget.data})`);",
      );
    }
  }
}
