part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for different
class HCLangAccessibilitySeriesOptions implements HCOption {
  const HCLangAccessibilitySeriesOptions({
    this.description,
    this.nullPointValue,
    this.pointAnnotationsDescription,
    this.summary,
    this.xAxisDescription,
    this.yAxisDescription,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) User supplied description text.
  final String? description;

  /// (Highcharts, Highstock, Highmaps, Gantt) Description for the value of
  final String? nullPointValue;

  /// (Highcharts, Highstock, Highmaps, Gantt) Description for annotations on a
  final String? pointAnnotationsDescription;

  /// (Highcharts, Highstock, Highmaps, Gantt) Lang configuration for the
  final HCLangAccessibilitySeriesSummaryOptions? summary;

  /// (Highcharts, Highstock, Highmaps, Gantt) X-axis description for series if
  final String? xAxisDescription;

  /// (Highcharts, Highstock, Highmaps, Gantt) Y-axis description for series if
  final String? yAxisDescription;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json["description"] = description;
    }
    if (nullPointValue != null) {
      json["nullPointValue"] = nullPointValue;
    }
    if (pointAnnotationsDescription != null) {
      json["pointAnnotationsDescription"] = pointAnnotationsDescription;
    }
    if (summary != null) {
      json["summary"] = summary!.toJson();
    }
    if (xAxisDescription != null) {
      json["xAxisDescription"] = xAxisDescription;
    }
    if (yAxisDescription != null) {
      json["yAxisDescription"] = yAxisDescription;
    }
    return json;
  }
}
