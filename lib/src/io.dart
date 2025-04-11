import 'dart:io';

import 'package:flutter/material.dart';

import 'mobile/high_chart.dart' as mobile;
import 'windows/high_chart.dart' as windows;

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
    this.themeMode = ThemeMode.system, // Theme mode for the chart
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

class HighChartsState extends State<HighCharts> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
      return mobile.HighCharts(
        data: widget.data,
        size: widget.size,
        loader: widget.loader,
        networkScripts: widget.networkScripts,
        localScripts: widget.localScripts,
        themeMode: widget.themeMode,
      );
    } else if (Platform.isWindows) {
      return windows.HighCharts(
        data: widget.data,
        size: widget.size,
        loader: widget.loader,
        scripts: widget.networkScripts,
        networkScripts: widget.networkScripts,
        localScripts: widget.localScripts,
        themeMode: widget.themeMode,
      );
    } else {
      return SizedBox(
        height: widget.size.height,
        width: widget.size.width,
        child: Center(
          child: const Text('Unsupported Platform'),
        ),
      );
    }
  }
}
