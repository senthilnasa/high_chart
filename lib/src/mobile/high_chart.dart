import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'high_chart_script.dart';

class HighCharts extends StatefulWidget {
  HighCharts(
      {required this.data,
      required this.size,
      this.loader = const CircularProgressIndicator(),
      this.scripts = const []});
  final Widget loader;
  final String data;
  final Size size;
  final List<String> scripts;
  @override
  _HighChartsState createState() => _HighChartsState();
}

class _HighChartsState extends State<HighCharts> {
  bool _isLoaded = false;

  WebViewController? _controller;

  @override
  void didUpdateWidget(covariant HighCharts oldWidget) {
    if (oldWidget.data != widget.data ||
        oldWidget.size != widget.size ||
        oldWidget.scripts != widget.scripts ||
        oldWidget.loader != widget.loader) {
      _loadHtml(_controller!);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height,
      width: widget.size.width,
      child:
          Stack(alignment: Alignment.center, fit: StackFit.expand, children: [
        !_isLoaded ? widget.loader : SizedBox.shrink(),
        WebView(
          allowsInlineMediaPlayback: true,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
            _loadHtml(webViewController);
          },
          onWebResourceError: (error) {
            print(error.description);
          },
          onPageFinished: (String url) {
            _loadData();
          },
        ),
      ]),
    );
  }

  void _loadHtml(WebViewController _) {
    String html = "";
    html +=
        '<!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0"/> </head> <body><div style="height:100%;width:100%;" id="highChartsDiv"></div><script>function senthilnasa(a){ eval(a); return true;}</script>';
    html += '<script>$highchartsScript</script>';
    for (String src in widget.scripts) {
      html += '<script async="false" src="$src"></script>';
    }
    html += '</body></html>';
    _.loadHtmlString(html);
  }

  void _loadData() {
    _controller!.runJavascriptReturningResult(
        "senthilnasa(`Highcharts.chart('highChartsDiv',${widget.data} )`);");
  }
}
