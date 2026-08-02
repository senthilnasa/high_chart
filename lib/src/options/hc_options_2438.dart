part of 'hc_options.dart';

class HCOptions implements HCOption {
  const HCOptions({
    this.accessibility,
    this.annotations,
    this.boost,
    this.caption,
    this.chart,
    this.colorAxis,
    this.colors,
    this.connectors,
    this.credits,
    this.data,
    this.dataTable,
    this.defs,
    this.drilldown,
    this.exporting,
    this.global,
    this.lang,
    this.legend,
    this.loading,
    this.mapNavigation,
    this.mapView,
    this.navigation,
    this.navigator,
    this.noData,
    this.palette,
    this.pane,
    this.plotOptions,
    this.rangeSelector,
    this.responsive,
    this.scrollbar,
    this.series,
    this.sonification,
    this.stockTools,
    this.subtitle,
    this.time,
    this.title,
    this.tooltip,
    this.xAxis,
    this.yAxis,
    this.zAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring
  final HCAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of annotations to
  final List<HCAnnotationsOptions>? annotations;

  /// (Highcharts, Highstock) Options for the Boost module. The Boost module
  final HCBoostOptions? boost;

  /// (Highcharts, Highstock, Highmaps, Gantt) The chart's caption, which will
  final HCCaptionOptions? caption;

  /// (Highcharts, Highstock, Highmaps, Gantt) General options for the chart.
  final HCChartOptions? chart;

  /// (Highcharts, Highstock, Highmaps) A color axis for series. Visually, the
  final dynamic colorAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the default
  final List<dynamic>? colors;

  /// (Gantt) The Pathfinder module allows you to define connections between
  final HCConnectorsOptions? connectors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highcharts by default puts a
  final HCCreditsOptions? credits;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Data module provides a
  final HCDataOptions? data;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for one or many
  final dynamic dataTable;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring markers
  final dynamic defs;

  /// (Highcharts, Highmaps) Options for drill down, the concept of inspecting
  final HCDrilldownOptions? drilldown;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the exporting
  final HCExportingOptions? exporting;

  /// (Highcharts, Highstock, Highmaps, Gantt) Global options that don't apply
  final HCGlobalOptions? global;

  /// (Highcharts, Highstock, Highmaps, Gantt) An object containing
  final HCLangOptions? lang;

  /// (Highcharts, Highstock, Highmaps, Gantt) The legend is a box containing a
  final HCLegendOptions? legend;

  /// (Highcharts, Highstock, Highmaps, Gantt) The loading options control the
  final HCLoadingOptions? loading;

  /// (Highmaps) The `mapNavigation` option handles buttons for navigation in
  final HCMapNavigationOptions? mapNavigation;

  /// (Highmaps) The `mapView` options control the initial view of the chart,
  final HCMapViewOptions? mapView;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for
  final HCNavigationOptions? navigation;

  /// (Highstock, Gantt) The navigator is a small series below the main series,
  final HCNavigatorOptions? navigator;

  /// (Highcharts, Highstock, Gantt) Options for displaying a message like "No
  final HCNoDataOptions? noData;

  /// (Highcharts, Highstock, Highmaps, Gantt) The palette object specifies
  final HCPaletteOptions? palette;

  /// (Highcharts) The pane serves as a container for axes and backgrounds for
  final dynamic pane;

  /// (Highcharts, Highstock, Highmaps, Gantt) The plotOptions is a wrapper
  final HCPlotOptions? plotOptions;

  /// (Highstock, Gantt) The range selector is a tool for selecting ranges to
  final HCRangeSelectorOptions? rangeSelector;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allows setting a set of rules to
  final HCResponsiveOptions? responsive;

  /// (Highstock, Gantt) The scrollbar is a means of panning over the X axis of
  final HCScrollbarOptions? scrollbar;

  /// (Highcharts, Highstock, Highmaps, Gantt) Series options for specific data
  final List<dynamic>? series;

  final HCSonificationOptions? sonification;

  /// (Highstock) Configure the stockTools gui strings in the chart. Requires
  final HCStockToolsOptions? stockTools;

  /// (Highcharts, Highstock, Highmaps, Gantt) The chart's subtitle. This can
  final HCSubtitleOptions? subtitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Time options that can apply
  final HCTimeOptions? time;

  /// (Highcharts, Highstock, Highmaps, Gantt) The chart's main title.
  final HCTitleOptions? title;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip that
  final HCTooltipOptions? tooltip;

  /// (Highcharts, Highstock, Highmaps, Gantt) The X axis or category axis.
  final dynamic xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Y axis or value axis.
  final dynamic yAxis;

  /// (Highcharts) The Z axis or depth axis for 3D plots.
  final dynamic zAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (annotations != null) {
      json["annotations"] = annotations!.map((e) => e.toJson()).toList();
    }
    if (boost != null) {
      json["boost"] = boost!.toJson();
    }
    if (caption != null) {
      json["caption"] = caption!.toJson();
    }
    if (chart != null) {
      json["chart"] = chart!.toJson();
    }
    if (colorAxis != null) {
      json["colorAxis"] = hcJsonValue(colorAxis);
    }
    if (colors != null) {
      json["colors"] = colors!.map((e) => hcJsonValue(e)).toList();
    }
    if (connectors != null) {
      json["connectors"] = connectors!.toJson();
    }
    if (credits != null) {
      json["credits"] = credits!.toJson();
    }
    if (data != null) {
      json["data"] = data!.toJson();
    }
    if (dataTable != null) {
      json["dataTable"] = hcJsonValue(dataTable);
    }
    if (defs != null) {
      json["defs"] = hcJsonValue(defs);
    }
    if (drilldown != null) {
      json["drilldown"] = drilldown!.toJson();
    }
    if (exporting != null) {
      json["exporting"] = exporting!.toJson();
    }
    if (global != null) {
      json["global"] = global!.toJson();
    }
    if (lang != null) {
      json["lang"] = lang!.toJson();
    }
    if (legend != null) {
      json["legend"] = legend!.toJson();
    }
    if (loading != null) {
      json["loading"] = loading!.toJson();
    }
    if (mapNavigation != null) {
      json["mapNavigation"] = mapNavigation!.toJson();
    }
    if (mapView != null) {
      json["mapView"] = mapView!.toJson();
    }
    if (navigation != null) {
      json["navigation"] = navigation!.toJson();
    }
    if (navigator != null) {
      json["navigator"] = navigator!.toJson();
    }
    if (noData != null) {
      json["noData"] = noData!.toJson();
    }
    if (palette != null) {
      json["palette"] = palette!.toJson();
    }
    if (pane != null) {
      json["pane"] = hcJsonValue(pane);
    }
    if (plotOptions != null) {
      json["plotOptions"] = plotOptions!.toJson();
    }
    if (rangeSelector != null) {
      json["rangeSelector"] = rangeSelector!.toJson();
    }
    if (responsive != null) {
      json["responsive"] = responsive!.toJson();
    }
    if (scrollbar != null) {
      json["scrollbar"] = scrollbar!.toJson();
    }
    if (series != null) {
      json["series"] = series!.map((e) => hcJsonValue(e)).toList();
    }
    if (sonification != null) {
      json["sonification"] = sonification!.toJson();
    }
    if (stockTools != null) {
      json["stockTools"] = stockTools!.toJson();
    }
    if (subtitle != null) {
      json["subtitle"] = subtitle!.toJson();
    }
    if (time != null) {
      json["time"] = time!.toJson();
    }
    if (title != null) {
      json["title"] = title!.toJson();
    }
    if (tooltip != null) {
      json["tooltip"] = tooltip!.toJson();
    }
    if (xAxis != null) {
      json["xAxis"] = hcJsonValue(xAxis);
    }
    if (yAxis != null) {
      json["yAxis"] = hcJsonValue(yAxis);
    }
    if (zAxis != null) {
      json["zAxis"] = hcJsonValue(zAxis);
    }
    return json;
  }
}
