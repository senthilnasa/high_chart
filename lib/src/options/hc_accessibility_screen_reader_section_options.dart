part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the screen
class HCAccessibilityScreenReaderSectionOptions implements HCOption {
  const HCAccessibilityScreenReaderSectionOptions({
    this.afterChartFormat,
    this.axisRangeDateFormat,
    this.beforeChartFormat,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for the screen reader
  final String? afterChartFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Date format to use to describe
  final String? axisRangeDateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for the screen reader
  final String? beforeChartFormat;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterChartFormat != null) {
      json["afterChartFormat"] = afterChartFormat;
    }
    if (axisRangeDateFormat != null) {
      json["axisRangeDateFormat"] = axisRangeDateFormat;
    }
    if (beforeChartFormat != null) {
      json["beforeChartFormat"] = beforeChartFormat;
    }
    return json;
  }
}
