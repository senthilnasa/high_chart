part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Configure the accessibility strings
class HCLangAccessibilityOptions implements HCOption {
  const HCLangAccessibilityOptions({
    this.announceNewData,
    this.axis,
    this.chartContainerLabel,
    this.chartTypes,
    this.credits,
    this.defaultChartTitle,
    this.drillUpButton,
    this.exporting,
    this.graphicContainerLabel,
    this.legend,
    this.navigator,
    this.rangeSelector,
    this.resetZoomButton,
    this.screenReaderSection,
    this.series,
    this.seriesTypeDescriptions,
    this.sonification,
    this.stockTools,
    this.svgContainerLabel,
    this.svgContainerTitle,
    this.table,
    this.thousandsSep,
    this.zoom,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Default announcement for new
  final HCLangAccessibilityAnnounceNewDataOptions? announceNewData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Axis description format strings.
  final HCLangAccessibilityAxisOptions? axis;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the chart
  final String? chartContainerLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart type description strings.
  final HCLangAccessibilityChartTypesOptions? chartTypes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the chart
  final String? credits;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default title of the chart for
  final String? defaultChartTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the
  final String? drillUpButton;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting menu format strings
  final HCLangAccessibilityExportingOptions? exporting;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a label on the container
  final String? graphicContainerLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for
  final HCLangAccessibilityLegendOptions? legend;

  /// (Highcharts, Highstock, Highmaps, Gantt) Navigator language options for
  final HCLangAccessibilityNavigatorOptions? navigator;

  /// (Highcharts, Highstock, Highmaps, Gantt) Range selector language options
  final HCLangAccessibilityRangeSelectorOptions? rangeSelector;

  final String? resetZoomButton;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for the screen
  final HCLangAccessibilityScreenReaderSectionOptions? screenReaderSection;

  /// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for different
  final HCLangAccessibilitySeriesOptions? series;

  /// (Highcharts, Highstock, Highmaps, Gantt) Descriptions of lesser known
  final HCLangAccessibilitySeriesTypeDescriptionsOptions?
      seriesTypeDescriptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for
  final HCLangAccessibilitySonificationOptions? sonification;

  /// (Highcharts, Highstock, Highmaps, Gantt) Stock tools language options for
  final HCLangAccessibilityStockToolsOptions? stockTools;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the chart
  final String? svgContainerLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Title element text for the chart
  final String? svgContainerTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility language options
  final HCLangAccessibilityTableOptions? table;

  /// (Highcharts, Highstock, Highmaps, Gantt) Thousands separator to use when
  final String? thousandsSep;

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart and map zoom accessibility
  final HCLangAccessibilityZoomOptions? zoom;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (announceNewData != null) {
      json["announceNewData"] = announceNewData!.toJson();
    }
    if (axis != null) {
      json["axis"] = axis!.toJson();
    }
    if (chartContainerLabel != null) {
      json["chartContainerLabel"] = chartContainerLabel;
    }
    if (chartTypes != null) {
      json["chartTypes"] = chartTypes!.toJson();
    }
    if (credits != null) {
      json["credits"] = credits;
    }
    if (defaultChartTitle != null) {
      json["defaultChartTitle"] = defaultChartTitle;
    }
    if (drillUpButton != null) {
      json["drillUpButton"] = drillUpButton;
    }
    if (exporting != null) {
      json["exporting"] = exporting!.toJson();
    }
    if (graphicContainerLabel != null) {
      json["graphicContainerLabel"] = graphicContainerLabel;
    }
    if (legend != null) {
      json["legend"] = legend!.toJson();
    }
    if (navigator != null) {
      json["navigator"] = navigator!.toJson();
    }
    if (rangeSelector != null) {
      json["rangeSelector"] = rangeSelector!.toJson();
    }
    if (resetZoomButton != null) {
      json["resetZoomButton"] = resetZoomButton;
    }
    if (screenReaderSection != null) {
      json["screenReaderSection"] = screenReaderSection!.toJson();
    }
    if (series != null) {
      json["series"] = series!.toJson();
    }
    if (seriesTypeDescriptions != null) {
      json["seriesTypeDescriptions"] = seriesTypeDescriptions!.toJson();
    }
    if (sonification != null) {
      json["sonification"] = sonification!.toJson();
    }
    if (stockTools != null) {
      json["stockTools"] = stockTools!.toJson();
    }
    if (svgContainerLabel != null) {
      json["svgContainerLabel"] = svgContainerLabel;
    }
    if (svgContainerTitle != null) {
      json["svgContainerTitle"] = svgContainerTitle;
    }
    if (table != null) {
      json["table"] = table!.toJson();
    }
    if (thousandsSep != null) {
      json["thousandsSep"] = thousandsSep;
    }
    if (zoom != null) {
      json["zoom"] = zoom!.toJson();
    }
    return json;
  }
}
