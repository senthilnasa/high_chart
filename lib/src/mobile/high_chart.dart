import 'dart:io';
import 'dart:ui';

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

  /// Theme mode for the chart.
  /// It can be set to `ThemeMode.system`, `ThemeMode.light`, or `ThemeMode.dark`.
  /// ```dart
  /// themeMode = ThemeMode.system,
  /// ```
  /// This property is used to set the theme of the chart.
  final ThemeMode themeMode;

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
    String themeClass = "highcharts-light";
    if (widget.themeMode == ThemeMode.dark) {
      themeClass = "highcharts-dark";
    } else if (widget.themeMode == ThemeMode.system &&
        PlatformDispatcher.instance.platformBrightness == Brightness.dark) {
      themeClass = "highcharts-dark";
    }
    String html = '''
      <!DOCTYPE html>
      <html>
        <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0"/>
          <style>:root,.highcharts-light{--highcharts-color-0:#2caffe;--highcharts-color-1:#544fc5;--highcharts-color-2:#00e272;--highcharts-color-3:#fe6a35;--highcharts-color-4:#6b8abc;--highcharts-color-5:#d568fb;--highcharts-color-6:#2ee0ca;--highcharts-color-7:#fa4b42;--highcharts-color-8:#feb56a;--highcharts-color-9:#91e8e1;--highcharts-background-color:#ffffff;--highcharts-neutral-color-100:#000000;--highcharts-neutral-color-80:#333333;--highcharts-neutral-color-60:#666666;--highcharts-neutral-color-40:#999999;--highcharts-neutral-color-20:#cccccc;--highcharts-neutral-color-10:#e6e6e6;--highcharts-neutral-color-5:#f2f2f2;--highcharts-neutral-color-3:#f7f7f7;--highcharts-highlight-color-100:#0022ff;--highcharts-highlight-color-80:#334eff;--highcharts-highlight-color-60:#667aff;--highcharts-highlight-color-20:#ccd3ff;--highcharts-highlight-color-10:#e6e9ff;--highcharts-positive-color:#06b535;--highcharts-negative-color:#f21313;--highcharts-annotation-color-0:rgba(130,170,255,.4);--highcharts-annotation-color-1:rgba(139,191,216,.4);--highcharts-annotation-color-2:rgba(150,216,192,.4);--highcharts-annotation-color-3:rgba(156,229,161,.4);--highcharts-annotation-color-4:rgba(162,241,130,.4);--highcharts-annotation-color-5:rgba(169,255,101,.4);}@media (prefers-color-scheme:dark){:root{--highcharts-background-color:rgb(48,48,48);--highcharts-neutral-color-100:rgb(255,255,255);--highcharts-neutral-color-80:rgb(214,214,214);--highcharts-neutral-color-60:rgb(173,173,173);--highcharts-neutral-color-40:rgb(133,133,133);--highcharts-neutral-color-20:rgb(92,92,92);--highcharts-neutral-color-10:rgb(71,71,71);--highcharts-neutral-color-5:rgb(61,61,61);--highcharts-neutral-color-3:rgb(57,57,57);--highcharts-highlight-color-100:rgb(122,167,255);--highcharts-highlight-color-80:rgb(108,144,214);--highcharts-highlight-color-60:rgb(94,121,173);--highcharts-highlight-color-20:rgb(65,74,92);--highcharts-highlight-color-10:rgb(58,63,71)}}.highcharts-dark{--highcharts-background-color:rgb(48,48,48);--highcharts-neutral-color-100:rgb(255,255,255);--highcharts-neutral-color-80:rgb(214,214,214);--highcharts-neutral-color-60:rgb(173,173,173);--highcharts-neutral-color-40:rgb(133,133,133);--highcharts-neutral-color-20:rgb(92,92,92);--highcharts-neutral-color-10:rgb(71,71,71);--highcharts-neutral-color-5:rgb(61,61,61);--highcharts-neutral-color-3:rgb(57,57,57);--highcharts-highlight-color-100:rgb(122,167,255);--highcharts-highlight-color-80:rgb(108,144,214);--highcharts-highlight-color-60:rgb(94,121,173);--highcharts-highlight-color-20:rgb(65,74,92);--highcharts-highlight-color-10:rgb(58,63,71);}.highcharts-container{position:relative;overflow:hidden;width:100%;height:100%;text-align:left;line-height:normal;z-index:0;-webkit-tap-highlight-color:rgba(0,0,0,0);font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Helvetica,Arial,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol",sans-serif;font-size:1rem;user-select:none;touch-action:manipulation;outline:none;}.highcharts-no-touch-action{touch-action:none;}.highcharts-root{display:block;}.highcharts-root text{stroke-width:0;}.highcharts-strong{font-weight:bold;}.highcharts-emphasized{font-style:italic;}.highcharts-anchor{cursor:pointer;}.highcharts-background{fill:var(--highcharts-background-color);}.highcharts-plot-border,.highcharts-plot-background{fill:none;}.highcharts-label-box{fill:none;}.highcharts-label text{fill:var(--highcharts-neutral-color-80);font-size:.8em;}.highcharts-button-box{fill:inherit;}.highcharts-tracker-line{stroke-linejoin:round;stroke:rgba(192,192,192,.0001);stroke-width:22;fill:none;}.highcharts-tracker-area{fill:rgba(192,192,192,.0001);stroke-width:0;}.highcharts-title{fill:var(--highcharts-neutral-color-80);font-size:1.2em;font-weight:bold;}.highcharts-subtitle{fill:var(--highcharts-neutral-color-60);font-size:.8em;}.highcharts-axis-line{fill:none;stroke:var(--highcharts-neutral-color-80);}.highcharts-yaxis .highcharts-axis-line{stroke-width:0;}.highcharts-axis-title{fill:var(--highcharts-neutral-color-60);font-size:.8em;}.highcharts-axis-labels{fill:var(--highcharts-neutral-color-80);cursor:default;font-size:.8em;}.highcharts-grid-line{fill:none;stroke:var(--highcharts-neutral-color-10);}.highcharts-xaxis-grid .highcharts-grid-line{stroke-width:0;}.highcharts-tick{stroke:var(--highcharts-neutral-color-80);}.highcharts-yaxis .highcharts-tick{stroke-width:0;}.highcharts-minor-grid-line{stroke:var(--highcharts-neutral-color-5);}.highcharts-crosshair-thin{stroke-width:1px;stroke:var(--highcharts-neutral-color-20);}.highcharts-crosshair-category{stroke:var(--highcharts-highlight-color-20);stroke-opacity:.25;}.highcharts-credits{cursor:pointer;fill:var(--highcharts-neutral-color-40);font-size:.6em;transition:fill 250ms,font-size 250ms;}.highcharts-credits:hover{fill:var(--highcharts-neutral-color-100);font-size:.7em;}.highcharts-tooltip{cursor:default;pointer-events:none;white-space:nowrap;transition:stroke 150ms;}.highcharts-tooltip .highcharts-tracker{fill:none;stroke:none;}.highcharts-tooltip text,.highcharts-tooltip foreignObject span{fill:var(--highcharts-neutral-color-80);font-size:.8em;}.highcharts-tooltip .highcharts-header{font-size:.8em;}.highcharts-tooltip-box{stroke-width:1px;fill:var(--highcharts-background-color);}.highcharts-tooltip-box{stroke-width:0;fill:var(--highcharts-background-color);}.highcharts-tooltip-box .highcharts-label-box{fill:var(--highcharts-background-color);}div.highcharts-tooltip{filter:none;font-size:.8em;}.highcharts-selection-marker{fill:var(--highcharts-highlight-color-80);fill-opacity:.25;}.highcharts-graph{fill:none;stroke-width:2px;stroke-linecap:round;stroke-linejoin:round;}.highcharts-empty-series{stroke-width:1px;fill:none;stroke:var(--highcharts-neutral-color-20);}.highcharts-state-hover .highcharts-graph{stroke-width:3;}.highcharts-point-inactive{opacity:.2;transition:opacity 50ms}.highcharts-series-inactive{opacity:.2;transition:opacity 50ms}.highcharts-state-hover path{transition:stroke-width 50ms}.highcharts-state-normal path{transition:stroke-width 250ms}g.highcharts-series,.highcharts-point,.highcharts-markers,.highcharts-data-labels{transition:opacity 250ms;}.highcharts-legend-series-active g.highcharts-series:not(.highcharts-series-hover),.highcharts-legend-point-active .highcharts-point:not(.highcharts-point-hover,.highcharts-point-select),.highcharts-legend-series-active .highcharts-markers:not(.highcharts-series-hover),.highcharts-legend-series-active .highcharts-data-labels:not(.highcharts-series-hover){opacity:.2;}.highcharts-color-0{fill:var(--highcharts-color-0);stroke:var(--highcharts-color-0);}.highcharts-color-1{fill:var(--highcharts-color-1);stroke:var(--highcharts-color-1);}.highcharts-color-2{fill:var(--highcharts-color-2);stroke:var(--highcharts-color-2);}.highcharts-color-3{fill:var(--highcharts-color-3);stroke:var(--highcharts-color-3);}.highcharts-color-4{fill:var(--highcharts-color-4);stroke:var(--highcharts-color-4);}.highcharts-color-5{fill:var(--highcharts-color-5);stroke:var(--highcharts-color-5);}.highcharts-color-6{fill:var(--highcharts-color-6);stroke:var(--highcharts-color-6);}.highcharts-color-7{fill:var(--highcharts-color-7);stroke:var(--highcharts-color-7);}.highcharts-color-8{fill:var(--highcharts-color-8);stroke:var(--highcharts-color-8);}.highcharts-color-9{fill:var(--highcharts-color-9);stroke:var(--highcharts-color-9);}.highcharts-area{fill-opacity:.75;stroke-width:0;}.highcharts-markers{stroke-width:1px;stroke:var(--highcharts-background-color);}.highcharts-a11y-markers-hidden .highcharts-point:not(.highcharts-point-hover,.highcharts-a11y-marker-visible),.highcharts-a11y-marker-hidden{opacity:0;}.highcharts-point{stroke-width:1px;}.highcharts-dense-data .highcharts-point{stroke-width:0;}.highcharts-data-label text,.highcharts-data-label span,text.highcharts-data-label{font-size:.7em;font-weight:bold;}.highcharts-data-label-box{fill:none;stroke-width:0;}.highcharts-data-label text,text.highcharts-data-label{fill:var(--highcharts-neutral-color-80);}.highcharts-data-label-connector{fill:none;}.highcharts-data-label-hidden{pointer-events:none;}.highcharts-halo{fill-opacity:.25;stroke-width:0;}.highcharts-series-label text{fill:inherit;font-weight:bold;}.highcharts-series:not(.highcharts-pie-series) .highcharts-point-select,.highcharts-markers .highcharts-point-select{fill:var(--highcharts-neutral-color-20);stroke:var(--highcharts-neutral-color-100);}.highcharts-column-series path.highcharts-point,.highcharts-bar-series path.highcharts-point{stroke:var(--highcharts-background-color);}.highcharts-column-series .highcharts-point{transition:fill-opacity 250ms;}.highcharts-column-series .highcharts-point-hover{fill-opacity:.75;transition:fill-opacity 50ms;}.highcharts-pie-series .highcharts-point{stroke-linejoin:round;stroke:var(--highcharts-background-color);}.highcharts-pie-series .highcharts-point-hover{fill-opacity:.75;transition:fill-opacity 50ms;}.highcharts-funnel-series .highcharts-point{stroke-linejoin:round;stroke:var(--highcharts-background-color);}.highcharts-funnel-series .highcharts-point-hover{fill-opacity:.75;transition:fill-opacity 50ms;}.highcharts-funnel-series .highcharts-point-select{fill:inherit;stroke:inherit;}.highcharts-pyramid-series .highcharts-point{stroke-linejoin:round;stroke:var(--highcharts-background-color);}.highcharts-pyramid-series .highcharts-point-hover{fill-opacity:.75;transition:fill-opacity 50ms;}.highcharts-pyramid-series .highcharts-point-select{fill:inherit;stroke:inherit;}.highcharts-solidgauge-series .highcharts-point{stroke-width:0;}.highcharts-treemap-series .highcharts-point{stroke-width:1px;stroke:var(--highcharts-neutral-color-10);transition:stroke 250ms,fill 250ms,fill-opacity 250ms;}.highcharts-treemap-series .highcharts-point-hover{stroke:var(--highcharts-neutral-color-40);transition:stroke 25ms,fill 25ms,fill-opacity 25ms;}.highcharts-treemap-series .highcharts-above-level{display:none;}.highcharts-treemap-series .highcharts-internal-node{fill:none;}.highcharts-treemap-series .highcharts-internal-node-interactive{fill-opacity:.15;cursor:pointer;}.highcharts-treemap-series .highcharts-internal-node-interactive:hover{fill-opacity:.75;}.highcharts-vector-series .highcharts-point{fill:none;stroke-width:2px;}.highcharts-windbarb-series .highcharts-point{fill:none;stroke-width:2px;}.highcharts-lollipop-stem{stroke:var(--highcharts-neutral-color-100);}.highcharts-focus-border{fill:none;stroke-width:2px;}.highcharts-legend-item-hidden .highcharts-focus-border{fill:none!important;}.highcharts-legend-box{fill:none;stroke-width:0;}.highcharts-legend-item>text,.highcharts-legend-item span{fill:var(--highcharts-neutral-color-80);font-size:.8em;cursor:pointer;stroke-width:0;}.highcharts-legend-item:hover text{fill:var(--highcharts-neutral-color-100);}.highcharts-legend-item-hidden *{fill:var(--highcharts-neutral-color-60)!important;stroke:var(--highcharts-neutral-color-60)!important;transition:fill 250ms;text-decoration:line-through;}.highcharts-legend-nav-active{fill:var(--highcharts-highlight-color-100);cursor:pointer;}.highcharts-legend-nav-inactive{fill:var(--highcharts-neutral-color-20);}circle.highcharts-legend-nav-active,circle.highcharts-legend-nav-inactive{fill:rgba(192,192,192,.0001);}.highcharts-legend-title-box{fill:none;stroke-width:0;}.highcharts-bubble-legend-symbol{stroke-width:2;fill-opacity:.5;}.highcharts-bubble-legend-connectors{stroke-width:1;}.highcharts-bubble-legend-labels{fill:var(--highcharts-neutral-color-80);font-size:.7em;}.highcharts-loading{position:absolute;background-color:var(--highcharts-background-color);opacity:.5;text-align:center;z-index:10;transition:opacity 250ms;}.highcharts-loading-hidden{height:0!important;opacity:0;overflow:hidden;transition:opacity 250ms,height 250ms step-end;}.highcharts-loading-inner{font-weight:bold;position:relative;top:45%;}.highcharts-plot-band,.highcharts-pane{fill:var(--highcharts-neutral-color-100);fill-opacity:.05;}.highcharts-plot-line{fill:none;stroke:var(--highcharts-neutral-color-40);stroke-width:1px;}.highcharts-plot-line-label{font-size:.8em;}.highcharts-boxplot-box{fill:var(--highcharts-background-color);}.highcharts-boxplot-median{stroke-width:2px;}.highcharts-bubble-series .highcharts-point{fill-opacity:.5;}.highcharts-errorbar-series .highcharts-point{stroke:var(--highcharts-neutral-color-100);}.highcharts-gauge-series .highcharts-data-label-box{stroke:var(--highcharts-neutral-color-20);stroke-width:1px;}.highcharts-gauge-series .highcharts-dial{fill:var(--highcharts-neutral-color-100);stroke-width:0;}.highcharts-polygon-series .highcharts-graph{fill:inherit;stroke-width:0;}.highcharts-waterfall-series .highcharts-graph{stroke:var(--highcharts-neutral-color-80);stroke-dasharray:1,3;}.highcharts-sankey-series .highcharts-point{stroke-width:0;}.highcharts-sankey-series .highcharts-link{transition:fill 250ms,fill-opacity 250ms;fill-opacity:.5;}.highcharts-sankey-series .highcharts-point-hover.highcharts-link{transition:fill 50ms,fill-opacity 50ms;fill-opacity:1;}.highcharts-venn-series .highcharts-point{fill-opacity:.75;stroke:var(--highcharts-neutral-color-20);transition:stroke 250ms,fill-opacity 250ms;}.highcharts-venn-series .highcharts-point-hover{fill-opacity:1;stroke:var(--highcharts-neutral-color-20);}.highcharts-timeline-series .highcharts-graph{stroke:var(--highcharts-neutral-color-20);}.highcharts-navigator-mask-outside{fill-opacity:0;}.highcharts-navigator-mask-inside{fill:var(--highcharts-highlight-color-60);fill-opacity:.25;cursor:ew-resize;}.highcharts-navigator-outline{stroke:var(--highcharts-neutral-color-40);fill:none;}.highcharts-navigator-handle{stroke:var(--highcharts-neutral-color-40);fill:var(--highcharts-neutral-color-5);cursor:ew-resize;}.highcharts-navigator-series{fill:var(--highcharts-highlight-color-80);stroke:var(--highcharts-highlight-color-80);}.highcharts-navigator-series .highcharts-graph{stroke-width:1px;}.highcharts-navigator-series .highcharts-area{fill-opacity:.05;}.highcharts-navigator-xaxis .highcharts-axis-line{stroke-width:0;}.highcharts-navigator-xaxis .highcharts-grid-line{stroke-width:1px;stroke:var(--highcharts-neutral-color-10);}.highcharts-navigator-xaxis.highcharts-axis-labels{fill:var(--highcharts-neutral-color-100);font-size:.7em;opacity:.6;}.highcharts-navigator-yaxis .highcharts-grid-line{stroke-width:0;}.highcharts-scrollbar-thumb{fill:var(--highcharts-neutral-color-20);stroke:var(--highcharts-neutral-color-20);stroke-width:0;}.highcharts-scrollbar-button{fill:var(--highcharts-neutral-color-10);stroke:var(--highcharts-neutral-color-20);stroke-width:1px;}.highcharts-scrollbar-arrow{fill:var(--highcharts-neutral-color-60);}.highcharts-scrollbar-rifles{stroke:none;stroke-width:1px;}.highcharts-scrollbar-track{fill:rgba(255,255,255,.001);stroke:var(--highcharts-neutral-color-20);stroke-width:1px;}.highcharts-button{fill:var(--highcharts-neutral-color-3);stroke:var(--highcharts-neutral-color-20);cursor:default;stroke-width:1px;transition:fill 250ms;}.highcharts-button text{fill:var(--highcharts-neutral-color-80);font-size:.8em;}.highcharts-button-hover{transition:fill 0ms;fill:var(--highcharts-neutral-color-10);stroke:var(--highcharts-neutral-color-20);}.highcharts-button-hover text{fill:var(--highcharts-neutral-color-80);}.highcharts-button-pressed{font-weight:bold;fill:var(--highcharts-highlight-color-10);stroke:var(--highcharts-neutral-color-20);}.highcharts-button-pressed text{fill:var(--highcharts-neutral-color-80);font-weight:bold;}.highcharts-button-disabled text{fill:var(--highcharts-neutral-color-80);}.highcharts-range-selector-buttons .highcharts-button{stroke-width:0;}.highcharts-range-label rect{fill:none;}.highcharts-range-label text{fill:var(--highcharts-neutral-color-60);}.highcharts-range-input rect{fill:none;}.highcharts-range-input text{fill:var(--highcharts-neutral-color-80);font-size:.8em;}.highcharts-range-input{stroke-width:1px;stroke:var(--highcharts-neutral-color-20);}input.highcharts-range-selector{position:absolute;border:0;width:1px;height:1px;padding:0;text-align:center;left:-9em}.highcharts-crosshair-label text{fill:var(--highcharts-background-color);font-size:1.7em;}.highcharts-crosshair-label .highcharts-label-box{fill:inherit;}.highcharts-candlestick-series .highcharts-point{stroke:var(--highcharts-neutral-color-100);stroke-width:1px;}.highcharts-candlestick-series .highcharts-point-up{fill:var(--highcharts-background-color);}.highcharts-renko-series .highcharts-point-down,.highcharts-hollowcandlestick-series .highcharts-point-down{fill:var(--highcharts-negative-color);stroke:var(--highcharts-negative-color);}.highcharts-renko-series .highcharts-point-up,.highcharts-hollowcandlestick-series .highcharts-point-down-bearish-up{fill:var(--highcharts-positive-color);stroke:var(--highcharts-positive-color);}.highcharts-hollowcandlestick-series .highcharts-point-up{fill:transparent;stroke:var(--highcharts-positive-color);}.highcharts-ohlc-series .highcharts-point-hover{stroke-width:3px;}.highcharts-flags-series .highcharts-point .highcharts-label-box{stroke:var(--highcharts-neutral-color-40);fill:var(--highcharts-background-color);transition:fill 250ms;}.highcharts-flags-series .highcharts-point-hover .highcharts-label-box{stroke:var(--highcharts-neutral-color-100);fill:var(--highcharts-highlight-color-20);}.highcharts-flags-series .highcharts-point text{fill:var(--highcharts-neutral-color-100);font-size:.9em;font-weight:bold;}.highcharts-map-series .highcharts-point{transition:fill 500ms,fill-opacity 500ms,stroke-width 250ms;stroke:var(--highcharts-neutral-color-20);stroke-width:inherit;}.highcharts-map-series .highcharts-point-hover{transition:fill 0ms,fill-opacity 0ms;fill-opacity:.5;}.highcharts-mapline-series .highcharts-point{fill:none;}.highcharts-heatmap-series .highcharts-point{stroke-width:0;}.highcharts-map-navigation{font-size:1.3em;font-weight:bold;text-align:center;}.highcharts-map-navigation.highcharts-button{fill:var(--highcharts-background-color);stroke:var(--highcharts-neutral-color-10);}.highcharts-map-navigation.highcharts-button:hover{fill:var(--highcharts-neutral-color-10);}.highcharts-map-navigation.highcharts-button .highcharts-button-symbol{stroke-width:2px;}.highcharts-mapview-inset-border{stroke:var(--highcharts-neutral-color-20);stroke-width:1px;fill:none;}.highcharts-coloraxis{stroke-width:0;}.highcharts-coloraxis-marker{fill:var(--highcharts-neutral-color-40);}.highcharts-null-point{fill:var(--highcharts-neutral-color-3);}.highcharts-3d-frame{fill:transparent;}.highcharts-contextbutton{fill:var(--highcharts-background-color);stroke:none;stroke-linecap:round;}.highcharts-contextbutton:hover{fill:var(--highcharts-neutral-color-10);stroke:var(--highcharts-neutral-color-10);}.highcharts-button-symbol{stroke:var(--highcharts-neutral-color-60);stroke-width:3px;}.highcharts-menu{border:none;background:var(--highcharts-background-color);border-radius:3px;padding:.5em;box-shadow:3px 3px 10px #888888;}.highcharts-menu-item{background:none;border-radius:3px;color:var(--highcharts-neutral-color-80);cursor:pointer;font-size:.8em;list-style-type:none;padding:.5em;transition:background 250ms,color 250ms;}.highcharts-menu-item:hover{background:var(--highcharts-neutral-color-5);}.highcharts-breadcrumbs-button{fill:none;stroke-width:0;cursor:pointer;}.highcharts-breadcrumbs-separator{fill:var(--highcharts-neutral-color-60);}.highcharts-drilldown-point{cursor:pointer;}.highcharts-drilldown-data-label text,text.highcharts-drilldown-data-label,.highcharts-drilldown-axis-label{cursor:pointer;fill:var(--highcharts-highlight-color-100);font-weight:bold;text-decoration:underline;}.highcharts-no-data text{font-weight:bold;font-size:.8em;fill:var(--highcharts-neutral-color-60);}.highcharts-axis-resizer{cursor:ns-resize;stroke:var(--highcharts-neutral-color-100);stroke-width:2px;}.highcharts-bullet-target{stroke-width:0;}.highcharts-lineargauge-target{stroke-width:1px;stroke:var(--highcharts-neutral-color-80);}.highcharts-lineargauge-target-line{stroke-width:1px;stroke:var(--highcharts-neutral-color-80);}.highcharts-fibonacci-background-0,.highcharts-pitchfork-inner-background,.highcharts-measure-background{fill:var(--highcharts-annotation-color-0);}.highcharts-fibonacci-background-1{fill:var(--highcharts-annotation-color-1);}.highcharts-fibonacci-background-2{fill:var(--highcharts-annotation-color-2);}.highcharts-fibonacci-background-3,.highcharts-pitchfork-outer-background{fill:var(--highcharts-annotation-color-3);}.highcharts-fibonacci-background-4{fill:var(--highcharts-annotation-color-4);}.highcharts-fibonacci-background-5{fill:var(--highcharts-annotation-color-5);}.highcharts-fibonacci-line{stroke:var(--highcharts-neutral-color-40);}.highcharts-crooked-lines,.highcharts-tunnel-lines,.highcharts-infinity-lines,.highcharts-timecycles-lines,.highcharts-fibonacci-timezones-lines,.highcharts-pitchfork-lines,.highcharts-vertical-line,.highcharts-measure-crosshair-x,.highcharts-measure-crosshair-y{stroke:var(--highcharts-neutral-color-100);stroke-opacity:.75;fill:none;}.highcharts-measure-crosshair-x,.highcharts-measure-crosshair-y{stroke-dasharray:1,3;}.highcharts-tunnel-background{fill:var(--highcharts-color-0);}.highcharts-annotation-shapes{cursor:move;}.highcharts-basic-shape{fill:var(--highcharts-neutral-color-100);stroke:var(--highcharts-neutral-color-100);opacity:.74;}.highcharts-annotation-label-box{stroke-width:1px;stroke:var(--highcharts-neutral-color-100);fill:var(--highcharts-neutral-color-100);fill-opacity:.75;}.highcharts-annotation-label text{fill:var(--highcharts-neutral-color-10);font-size:.8em;}.highcharts-a11y-proxy-element{border-width:0;background-color:transparent;cursor:pointer;outline:none;opacity:.001;z-index:999;overflow:hidden;padding:0;margin:0;display:block;position:absolute;}.highcharts-a11y-proxy-group li{list-style:none;}.highcharts-visually-hidden{position:absolute;width:1px;height:1px;overflow:hidden;white-space:nowrap;clip:rect(1px,1px,1px,1px);margin-top:-3px;opacity:.01;}.highcharts-a11y-invisible{visibility:hidden;}.highcharts-a11y-proxy-container,.highcharts-a11y-proxy-container-before,.highcharts-a11y-proxy-container-after{position:absolute;white-space:nowrap;}g.highcharts-series,.highcharts-markers,.highcharts-point{outline:none;}.highcharts-treegrid-node-collapsed,.highcharts-treegrid-node-expanded{cursor:pointer;}.highcharts-point-connecting-path{fill:none;}.highcharts-grid-axis .highcharts-tick{stroke:var(--highcharts-neutral-color-20);stroke-width:1px;}.highcharts-grid-axis .highcharts-axis-line{stroke:var(--highcharts-neutral-color-20);stroke-width:1px;}.highcharts-gantt-series .highcharts-partfill-overlay{fill:hsla(0,0%,0%,.3);stroke:hsla(0,0%,0%,.3);}</style>
        </head>
        <body>
          <div style="height:100%;width:100%;" id="highChartsDiv" class="$themeClass"></div>
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
