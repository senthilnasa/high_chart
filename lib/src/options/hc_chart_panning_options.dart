part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Allow panning in a chart. Best used
class HCChartPanningOptions implements HCOption {
  const HCChartPanningOptions({
    this.enabled,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable chart panning.
  final dynamic enabled;

  /// (Highcharts, Highstock, Gantt) Decides in what dimensions the user can
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
