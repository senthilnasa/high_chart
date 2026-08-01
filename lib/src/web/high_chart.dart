import 'dart:convert';
import 'dart:ui';

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
    this.themeMode = ThemeMode.system, // Theme mode for the chart
    this.globalOptions, // Options applied via Highcharts.setOptions()
    this.onEvent, // Callback for events sent from the chart via sendToFlutter()
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

  /// Global Highcharts options applied via `Highcharts.setOptions()` before
  /// the chart is created. Useful for settings that live outside a single
  /// chart's configuration, such as `lang`.
  ///
  /// Example:
  /// ```dart
  /// String globalOptions = '''{
  ///   lang: { decimalPoint: ',', thousandsSep: '.' }
  /// }''';
  /// ```
  /// Reference: [Highcharts.setOptions](https://api.highcharts.com/class-reference/Highcharts#.setOptions)
  final String? globalOptions;

  /// Invoked whenever the chart's JavaScript calls the injected
  /// `sendToFlutter(data)` helper, e.g. from a Highcharts event handler.
  /// [event] is the JSON-decoded payload.
  ///
  /// Example:
  /// ```dart
  /// xAxis: {
  ///   events: {
  ///     setExtremes: function (e) {
  ///       sendToFlutter({ min: e.min, max: e.max });
  ///     }
  ///   }
  /// }
  /// ```
  final void Function(dynamic event)? onEvent;

  /// Theme mode for the chart.
  /// It can be set to `ThemeMode.system`, `ThemeMode.light`, or `ThemeMode.dark`.
  /// ```dart
  /// themeMode = ThemeMode.system,
  /// ```
  /// This property is used to set the theme of the chart.
  final ThemeMode themeMode;

  @override
  HighChartsState createState() => HighChartsState();
}

// Highcharts' own JS defaults hard-code light-theme colors (e.g. title style
// color `#333333`) as inline styles, which override the `.highcharts-dark`
// CSS class entirely. This re-points those inline defaults at the same dark
// palette the CSS uses, without enabling `styledMode` (which would also
// silently discard any custom series colors the user sets).
const String _darkThemeOptions = '''{
  chart: { style: { color: 'rgb(214,214,214)' } },
  title: { style: { color: 'rgb(214,214,214)' } },
  subtitle: { style: { color: 'rgb(173,173,173)' } },
  caption: { style: { color: 'rgb(173,173,173)' } },
  legend: {
    itemStyle: { color: 'rgb(214,214,214)' },
    itemHoverStyle: { color: 'rgb(255,255,255)' },
    itemHiddenStyle: { color: 'rgb(133,133,133)' }
  },
  xAxis: {
    labels: { style: { color: 'rgb(214,214,214)' } },
    title: { style: { color: 'rgb(173,173,173)' } }
  },
  yAxis: {
    labels: { style: { color: 'rgb(214,214,214)' } },
    title: { style: { color: 'rgb(173,173,173)' } }
  },
  tooltip: { style: { color: 'rgb(214,214,214)' } }
}''';

class HighChartsState extends State<HighCharts> {
  final String _highChartsId =
      "HighChartsId${Random().nextInt(900000) + 100000}";

  // A per-instance name so multiple charts on the same page each get their
  // own callback and don't clobber one another's global `window` property.
  late final String _callbackName = "${_highChartsId}Callback";

  // Whether the chart should render using the dark palette, resolving
  // `ThemeMode.system` against the platform's current brightness.
  bool _isDarkTheme() {
    return widget.themeMode == ThemeMode.dark ||
        (widget.themeMode == ThemeMode.system &&
            PlatformDispatcher.instance.platformBrightness ==
                Brightness.dark);
  }

  @override
  void didUpdateWidget(covariant HighCharts oldWidget) {
    if (oldWidget.data != widget.data ||
        oldWidget.size != widget.size ||
        oldWidget.networkScripts != widget.networkScripts ||
        oldWidget.localScripts != widget.localScripts ||
        oldWidget.globalOptions != widget.globalOptions ||
        oldWidget.themeMode != widget.themeMode ||
        oldWidget.loader != widget.loader) {
      _load();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    if (widget.onEvent != null) {
      registerJsCallback(_callbackName, (payload) {
        try {
          widget.onEvent!(jsonDecode(payload));
        } catch (_) {
          widget.onEvent!(payload);
        }
      });
    }
    _load();
    super.initState();
  }

  @override
  void dispose() {
    unregisterJsCallback(_callbackName);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String themeClass =
        _isDarkTheme() ? "highcharts-dark" : "highcharts-light";
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(_highChartsId, (int viewId) {
      final html.Element htmlElement = html.HTMLDivElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..setAttribute("id", _highChartsId)
        ..setAttribute("class", themeClass);
      return htmlElement;
    });

    return SizedBox(
      height: widget.size.height,
      width: widget.size.width,
      child: HtmlElementView(viewType: _highChartsId),
    );
  }

  void _load() {
    _loadHighChartCss();
    // Load local scripts
    for (final script in widget.localScripts) {
      loadScript(script);
    }
    for (final script in widget.networkScripts) {
      loadScript(script);
    }

    // `registerViewFactory` in build() only takes effect on the very first
    // render for a given view type, so a later `themeMode` change wouldn't
    // otherwise reach the already-created div. Update its class directly.
    final String themeClass =
        _isDarkTheme() ? 'highcharts-dark' : 'highcharts-light';
    web.document.getElementById(_highChartsId)?.className = themeClass;

    Future.delayed(const Duration(milliseconds: 250), () {
      // In dark mode, re-point Highcharts' own hard-coded text colors at the
      // dark palette before applying the user's global options and creating
      // the chart, so title/legend/axis text stays readable.
      final String themeOptionsScript = _isDarkTheme()
          ? "Highcharts.setOptions($_darkThemeOptions);"
          : '';
      final String globalOptionsScript = widget.globalOptions != null
          ? "Highcharts.setOptions(${widget.globalOptions});"
          : '';
      // Wrapped in an IIFE so `sendToFlutter` is scoped to this chart
      // instance's closures (its event handlers) rather than clobbering a
      // global of the same name used by another chart on the same page.
      // Errors (e.g. a syntax mistake in the user's chart `data`, or a
      // script that failed to load) must not crash the app.
      try {
        eval('''
(function() {
  function sendToFlutter(data) {
    try {
      var fn = window['$_callbackName'];
      if (fn) { fn(JSON.stringify(data)); }
    } catch (e) {}
  }
  $themeOptionsScript
  $globalOptionsScript
  Highcharts.chart('$_highChartsId', ${widget.data});
})();
''');
      } catch (error) {
        debugPrint('High Charts Error -> $error');
      }
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

  void _loadHighChartCss() {
    final web.StyleSheetList styles = web.document.styleSheets;
    bool cssExists = false;
    if (styles.length == 0) {
      // No stylesheets found
      cssExists = false;
    } else {
      for (var i = 0; i < styles.length; i++) {
        final style = styles.item(i);
        if (style == null) continue;
        if (style.href?.startsWith(
                'https://code.highcharts.com/css/highcharts.css') ==
            true) {
          cssExists = true;
          break;
        }
      }

      // If CSS does not exist, create and append it
      if (!cssExists) {
        final linkElement = web.HTMLLinkElement();
        linkElement.href = 'https://code.highcharts.com/css/highcharts.css';
        linkElement.rel = 'stylesheet';
        web.document.head?.append(linkElement);
        debugPrint('HighCharts: CSS loaded');
      } else {
        debugPrint('HighCharts: CSS already loaded');
      }
    }
  }
}
