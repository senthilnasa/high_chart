library highchart;

import 'dart:io' show Platform;
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'high_chart_script.dart';

class HighCharts extends StatefulWidget {
  HighCharts({
    Key? key,
    required this.data,
  }) : super(key: key);

  final String data;

  @override
  _HighChartsState createState() => _HighChartsState();
}

// <!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0" /></head><body><div id="chart"></div></body></html><script>function senthilnasa(a){ eval(a); return true;}</script></html>
/// 'data:text/html;base64,' + base64Encode(const Utf8Encoder().convert( /* STRING ABOVE */ ))
const highChartHtml =
    'data:text/html;base64, PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+PG1ldGEgY2hhcnNldD0idXRmLTgiPjxtZXRhIG5hbWU9InZpZXdwb3J0IiBjb250ZW50PSJ3aWR0aD1kZXZpY2Utd2lkdGgsIGluaXRpYWwtc2NhbGU9MS4wLCBtYXhpbXVtLXNjYWxlPTEuMCwgbWluaW11bS1zY2FsZT0xLjAsIHVzZXItc2NhbGFibGU9MCIgLz48L2hlYWQ+PGJvZHk+PGRpdiBpZD0iY2hhcnQiPjwvZGl2PjwvYm9keT48L2h0bWw+PHNjcmlwdD5mdW5jdGlvbiBzZW50aGlsbmFzYShhKXsgZXZhbChhKTsgcmV0dXJuIHRydWU7fTwvc2NyaXB0PjwvaHRtbD4=';

class _HighChartsState extends State<HighCharts> {
  String? _currentData;

  WebViewController? _controller;

  double _opacity = Platform.isAndroid ? 0.0 : 1.0;

  @override
  void initState() {
    super.initState();
    _currentData = widget.data;
  }

  void init() async {
    await _controller?.evaluateJavascript('''
      $highchartsScript
        var a= senthilnasa(`Highcharts.chart('chart',
        $_currentData
        )`);
    ''');
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _opacity,
      child: WebView(
        initialUrl: highChartHtml,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
        },
        onPageFinished: (String url) {
          if (Platform.isAndroid) {
            setState(() {
              _opacity = 1.0;
            });
          }
          init();
        },
      ),
    );
  }
}
