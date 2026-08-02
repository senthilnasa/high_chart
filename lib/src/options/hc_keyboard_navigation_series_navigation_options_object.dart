part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the keyboard navigation
class HCKeyboardNavigationSeriesNavigationOptionsObject implements HCOption {
  const HCKeyboardNavigationSeriesNavigationOptionsObject({
    this.mode,
    this.pointNavigationEnabledThreshold,
    this.rememberPointFocus,
    this.skipNullPoints,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Set the keyboard navigation mode
  final String? mode;

  /// (Highcharts, Highstock, Highmaps, Gantt) When a series contains more
  final dynamic pointNavigationEnabledThreshold;

  /// (Highcharts, Highstock, Highmaps, Gantt) Remember which point was focused
  final dynamic rememberPointFocus;

  /// (Highcharts, Highstock, Highmaps, Gantt) Skip null points when navigating
  final String? skipNullPoints;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mode != null) {
      json["mode"] = mode;
    }
    if (pointNavigationEnabledThreshold != null) {
      json["pointNavigationEnabledThreshold"] =
          hcJsonValue(pointNavigationEnabledThreshold);
    }
    if (rememberPointFocus != null) {
      json["rememberPointFocus"] = hcJsonValue(rememberPointFocus);
    }
    if (skipNullPoints != null) {
      json["skipNullPoints"] = skipNullPoints;
    }
    return json;
  }
}
