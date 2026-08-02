part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Descriptions of lesser known series
class HCLangAccessibilitySeriesTypeDescriptionsOptions implements HCOption {
  const HCLangAccessibilitySeriesTypeDescriptionsOptions({
    this.arearange,
    this.areasplinerange,
    this.boxplot,
    this.bubble,
    this.columnrange,
    this.errorbar,
    this.funnel,
    this.pyramid,
    this.waterfall,
  });

  final String? arearange;

  final String? areasplinerange;

  final String? boxplot;

  final String? bubble;

  final String? columnrange;

  final String? errorbar;

  final String? funnel;

  final String? pyramid;

  final String? waterfall;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arearange != null) {
      json["arearange"] = arearange;
    }
    if (areasplinerange != null) {
      json["areasplinerange"] = areasplinerange;
    }
    if (boxplot != null) {
      json["boxplot"] = boxplot;
    }
    if (bubble != null) {
      json["bubble"] = bubble;
    }
    if (columnrange != null) {
      json["columnrange"] = columnrange;
    }
    if (errorbar != null) {
      json["errorbar"] = errorbar;
    }
    if (funnel != null) {
      json["funnel"] = funnel;
    }
    if (pyramid != null) {
      json["pyramid"] = pyramid;
    }
    if (waterfall != null) {
      json["waterfall"] = waterfall;
    }
    return json;
  }
}
