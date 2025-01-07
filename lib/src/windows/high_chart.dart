import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_windows/webview_windows.dart';

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
        child:
            CircularProgressIndicator()), // Loader widget while the chart loads
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

  /// Deprecated: Combined list of scripts. Use `networkScripts` or `localScripts` instead.
  @Deprecated('Use this instead: `networkScripts` or `localScripts`')
  final List<String> scripts;

  @override
  HighChartsState createState() => HighChartsState();
}

// Global key for navigator, used for handling dialog interactions
final navigatorKey = GlobalKey<NavigatorState>();

class HighChartsState extends State<HighCharts> {
  final _controller = WebviewController(); // Controller for managing WebView
  bool _isLoaded = false; // Tracks whether the chart has been loaded

  /// Initializes the WebView platform state.
  ///
  /// Configures the WebView, sets the background color, handles popups, and loads the chart HTML content.
  Future<void> initPlatformState() async {
    try {
      if (!mounted) return;

      // Initialize the WebView controller
      await _controller.initialize();
      await _controller.setBackgroundColor(Colors.transparent);
      await _controller.setPopupWindowPolicy(WebviewPopupWindowPolicy.deny);

      // Load the HTML content into the WebView
      await _controller.loadStringContent(_htmlContent());
      // When the page finishes loading, inject local scripts if any
      for (String src in widget.localScripts) {
        String? scriptData = await getLocalAssetString(src);
        if (scriptData == null) {
          debugPrint(
              'High Charts Error -> $src not found'); // Log error if the script is missing
          continue;
        }
        _controller
            .executeScript(scriptData); // Inject the script into the WebView
      }
      _loadData(); // Render the chart with the provided data
      _isLoaded = true;
      setState(() {}); // Update the UI when the chart is loaded
    } on PlatformException catch (e) {
      // Handle platform exceptions and display an error dialog
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: const Text('Error'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Code: ${e.code}'), // Display error code
                      Text('Message: ${e.message}'), // Display error message
                    ],
                  ),
                  actions: [
                    TextButton(
                      child: const Text('Continue'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ));
      });
    }
  }

  @override
  void initState() {
    super.initState();
    initPlatformState(); // Initialize the platform state when the widget is created
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height, // Set widget height
      width: widget.size.width, // Set widget width
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          !_isLoaded
              ? widget.loader // Display loader until the chart is loaded
              : const SizedBox.shrink(),
          Webview(
            _controller,
            permissionRequested: _onPermissionRequested, // Handle permissions
          ),
        ],
      ),
    );
  }

  /// Handles permission requests for the WebView.
  Future<WebviewPermissionDecision> _onPermissionRequested(
      String url, WebviewPermissionKind kind, bool isUserInitiated) async {
    final decision = await showDialog<WebviewPermissionDecision>(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('WebView permission requested'),
        content: Text('WebView has requested permission \'$kind\''),
        actions: <Widget>[
          TextButton(
            onPressed: () =>
                Navigator.pop(context, WebviewPermissionDecision.deny),
            child: const Text('Deny'),
          ),
          TextButton(
            onPressed: () =>
                Navigator.pop(context, WebviewPermissionDecision.allow),
            child: const Text('Allow'),
          ),
        ],
      ),
    );

    return decision ?? WebviewPermissionDecision.none; // Default decision
  }

  /// Generates the HTML content for rendering the chart.
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
    ''';

    // Add network scripts to the HTML
    for (String src in widget.networkScripts) {
      html += '<script async="false" src="$src"></script>';
    }

    // Add deprecated scripts to the HTML
    // ignore: deprecated_member_use_from_same_package
    for (String src in widget.scripts) {
      html += '<script async="false" src="$src"></script>';
    }

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
      _controller.addScriptToExecuteOnDocumentCreated(
        "senthilnasa(`Highcharts.chart('highChartsDiv',${widget.data})`);",
      );
    }
  }
}
