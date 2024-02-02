import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

///
///A Chart library based on [High Charts (.JS)](https://www.highcharts.com/)
///
class HighCharts extends StatefulWidget {
  const HighCharts(
      {required this.data,
      required this.size,
      this.loader = const Center(child: CircularProgressIndicator()),
      this.scripts = const [],
      super.key});

  ///Custom `loader` widget, until script is loaded
  ///
  ///Has no effect on Web
  ///
  ///Defaults to `CircularProgressIndicator`
  final Widget loader;

  ///Chart data
  ///
  ///(use `jsonEncode` if the data is in `Map<String,dynamic>`)
  ///
  ///Reference: [High Charts API](https://api.highcharts.com/highcharts)
  ///
  ///```dart
  ///String chart_data = '''{
  ///      title: {
  ///          text: 'Combination chart'
  ///      },
  ///      xAxis: {
  ///          categories: ['Apples', 'Oranges', 'Pears', 'Bananas', 'Plums']
  ///      },
  ///      labels: {
  ///          items: [{
  ///              html: 'Total fruit consumption',
  ///              style: {
  ///                  left: '50px',
  ///                  top: '18px',
  ///                  color: (
  ///                      Highcharts.defaultOptions.title.style &&
  ///                      Highcharts.defaultOptions.title.style.color
  ///                  ) || 'black'
  ///              }
  ///          }]
  ///      },
  ///
  ///      ...
  ///
  ///    }''';
  ///
  ///```
  ///
  ///Reference: [High Charts API](https://api.highcharts.com/highcharts)
  final String data;

  ///Chart size
  ///
  ///Height and width of the chart is required
  ///
  ///```dart
  ///Size size = Size(400, 300);
  ///```
  final Size size;

  ///Scripts to be loaded
  ///
  ///Url's of the hightchart js scripts.
  ///
  ///Reference: [Full Scripts list](https://code.highcharts.com/)
  ///
  ///or use any CDN hosted script
  ///
  ///### For `android` and `ios` platforms, the scripts must be provided
  ///
  ///```dart
  ///List<String> scripts = [
  ///  'https://code.highcharts.com/highcharts.js',
  ///  'https://code.highcharts.com/modules/exporting.js',
  ///  'https://code.highcharts.com/modules/export-data.js'
  /// ];
  /// ```
  ///
  ///### For `web` platform, the scripts must be provided in `web/index.html`
  ///
  ///```html
  ///<head>
  ///   <script src="https://code.highcharts.com/highcharts.js"></script>
  ///   <script src="https://code.highcharts.com/modules/exporting.js"></script>
  ///   <script src="https://code.highcharts.com/modules/export-data.js"></script>
  ///</head>
  ///```
  ///
  final List<String> scripts;
  @override
  HighChartsState createState() => HighChartsState();
}

class HighChartsState extends State<HighCharts> {
  bool _isLoaded = false;

  late WebViewController _controller;

  @override
  void initState() {
    super.initState();

    // #docregion platform_features
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    _controller = WebViewController.fromPlatformCreationParams(params);

    if (_controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (_controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
      AndroidWebViewController.enableDebugging(kDebugMode);
    }

    if (_controller.platform is WebKitWebViewController) {
      WebKitWebViewController webKitWebViewController =
          _controller.platform as WebKitWebViewController;
      webKitWebViewController.setInspectable(kDebugMode);
    }

    _controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..enableZoom(false)
      ..setBackgroundColor(Colors.transparent)
      ..loadHtmlString(_htmlContent())
      ..setNavigationDelegate(
        NavigationDelegate(onWebResourceError: (err) {
          debugPrint(err.toString());
        }, onPageFinished: ((url) {
          _loadData();
        }), onNavigationRequest: ((request) async {
          if (await canLaunchUrlString(request.url)) {
            try {
              launchUrlString(request.url);
            } catch (e) {
              debugPrint('High Charts Error ->$e');
            }
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        })),
      );
  }

  @override
  void didUpdateWidget(covariant HighCharts oldWidget) {
    if (oldWidget.data != widget.data ||
        oldWidget.size != widget.size ||
        oldWidget.scripts != widget.scripts) {
      _controller.loadHtmlString(_htmlContent());
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height,
      width: widget.size.width,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          !_isLoaded ? widget.loader : const SizedBox.shrink(),
          WebViewWidget(controller: _controller)
        ],
      ),
    );
  }

  String _htmlContent() {
    String html = "";
    html += '''<!DOCTYPE html>
          <html>
            <head>
              <meta charset="utf-8">
              <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0"/> 
              <style>html,body{height:100%;width:100%;margin:0;padding:0;}</style>
            </head> 
            <body>
              <div style="height:100%;width:100%;" id="highChartsDiv"></div>
              <script>function senthilnasa(a){ eval(a); return true;}</script>''';
    for (String src in widget.scripts) {
      html += '<script async="false" src="$src"></script>';
    }
    html += '</body></html>';

    return html;
  }

  void _loadData() {
    if (mounted) {
      setState(() {
        _isLoaded = true;
      });
      _controller.runJavaScriptReturningResult(
          "senthilnasa(`Highcharts.chart('highChartsDiv',${widget.data} )`);");
    }
  }
}
