import 'dart:math';

import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

import 'js.dart';

///
///A Chart library based on [High Charts (.JS)](https://www.highcharts.com/)
///
class HighCharts extends StatefulWidget {
  const HighCharts(
      {required this.data,
      this.size,
      this.globalOptions,
      this.loader = const CircularProgressIndicator(),
      this.scripts = const [],
      this.scriptsAreLocalAssets = false,
      super.key});

  ///Custom `loader` widget, until script is loaded
  ///
  ///Has no effect on Web
  ///
  ///Defaults to `CircularProgressIndicator`
  final Widget loader;

  ///Whether passed scripts are local assets.
  ///
  ///This can be used on mobile platforms if injection of local scripts (from assets) is necessary.
  final bool scriptsAreLocalAssets;

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

  ///Options that are passed to Highcharts.setOptions()
  ///Reference: [High Charts API](https://api.highcharts.com/highcharts)
  final String? globalOptions;

  ///Chart size
  ///
  ///Height and width of the chart is required
  ///
  ///```dart
  ///Size size = Size(400, 300);
  ///```
  final Size? size;

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
  final String _highChartsId =
      "HighChartsId${Random().nextInt(900000) + 100000}";

  @override
  void didUpdateWidget(covariant HighCharts oldWidget) {
    if (oldWidget.data != widget.data ||
        oldWidget.size != widget.size ||
        oldWidget.scripts != widget.scripts ||
        oldWidget.loader != widget.loader) {
      _load();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
/*    ui.platformViewRegistry.registerViewFactory(_highChartsId, (int viewId) {
      final html.Element htmlElement = html.HTMLDivElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..id = _highChartsId;
      return htmlElement;
    });*/
    return widget.size == null
        ? LayoutBuilder(
            builder: (context, constraints) => ConstrainedBox(
                constraints: constraints,
                child: HtmlElementView.fromTagName(
                  tagName: 'div',
                  onElementCreated: (element) {
                    element as web.HTMLElement;
                    element
                      ..style.width = '100%'
                      ..style.height = '100%'
                      ..id = _highChartsId;
                  },
                )))
        : SizedBox(
            height: widget.size!.height,
            width: widget.size!.width,
            child: HtmlElementView(viewType: _highChartsId),
          );
  }

  void _load() {
    Future.delayed(const Duration(milliseconds: 250), () {
      if (widget.globalOptions != null) {
        eval("Highcharts.setOptions(${widget.globalOptions});");
      }
      eval("Highcharts.chart('$_highChartsId',${widget.data});");
    });
  }
}
