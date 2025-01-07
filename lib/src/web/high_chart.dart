import 'package:web/web.dart' as html;
import 'dart:math';
import 'dart:ui_web' as ui;
import 'package:web/web.dart' as web;

import 'package:flutter/material.dart';

import 'js.dart';

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

  @Deprecated('Use this instead: `networkScripts` or `localScripts`')
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
        oldWidget.networkScripts != widget.networkScripts ||
        oldWidget.localScripts != widget.localScripts ||
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
    ui.platformViewRegistry.registerViewFactory(_highChartsId, (int viewId) {
      final html.Element htmlElement = html.HTMLDivElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..setAttribute("id", _highChartsId);
      return htmlElement;
    });

    return SizedBox(
      height: widget.size.height,
      width: widget.size.width,
      child: HtmlElementView(viewType: _highChartsId),
    );
  }

  void _load() {
    // Load local scripts
    for (final script in widget.localScripts) {
      loadScript(script);
    }
    for (final script in widget.networkScripts) {
      loadScript(script);
    }
    Future.delayed(const Duration(milliseconds: 250), () {
      eval("Highcharts.chart('$_highChartsId',${widget.data});");
    });
  }

  void loadScript(String scriptUrl) {
    final web.HTMLCollection scripts = web.document.scripts;
    bool scriptExists = false;
    for (var i = 0; i < scripts.length; i++) {
      final script = scripts.item(i) as web.HTMLScriptElement?;
      if (script == null) continue;
      if (script.src.startsWith(scriptUrl)) {
        scriptExists = true;
        break;
      }
    }
    // If script does not exist, create and append it
    if (!scriptExists) {
      final scriptElement = web.HTMLScriptElement();
      scriptElement.src = scriptUrl;
      scriptElement.async = true;
      scriptElement.defer = true;
      scriptElement.type = 'text/javascript';
      web.document.head?.append(scriptElement);
      debugPrint('HighCharts: Script loaded: $scriptUrl');
    } else {
      debugPrint('HighCharts: Script already loaded: $scriptUrl');
    }
  }
}
