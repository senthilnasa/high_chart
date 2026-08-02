part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The mouse wheel zoom is a feature
class HCChartZoomingMouseWheelOptions implements HCOption {
  const HCChartZoomingMouseWheelOptions({
    this.enabled,
    this.sensitivity,
    this.showResetButton,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Zooming with the mouse wheel can
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Adjust the sensitivity of the
  final num? sensitivity;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable the reset zoom
  final dynamic showResetButton;

  /// (Highcharts, Highstock, Highmaps, Gantt) Decides in what dimensions the
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (sensitivity != null) {
      json["sensitivity"] = sensitivity;
    }
    if (showResetButton != null) {
      json["showResetButton"] = hcJsonValue(showResetButton);
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
