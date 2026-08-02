part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options global to all
class HCAccessibilitySeriesOptions implements HCOption {
  const HCAccessibilitySeriesOptions({
    this.describeSingleSeries,
    this.descriptionFormat,
    this.pointDescriptionEnabledThreshold,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to add series
  final dynamic describeSingleSeries;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format to use for describing the
  final String? descriptionFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) When a series contains more
  final dynamic pointDescriptionEnabledThreshold;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (describeSingleSeries != null) {
      json["describeSingleSeries"] = hcJsonValue(describeSingleSeries);
    }
    if (descriptionFormat != null) {
      json["descriptionFormat"] = descriptionFormat;
    }
    if (pointDescriptionEnabledThreshold != null) {
      json["pointDescriptionEnabledThreshold"] =
          hcJsonValue(pointDescriptionEnabledThreshold);
    }
    return json;
  }
}
