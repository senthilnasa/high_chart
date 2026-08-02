part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Accessibility options for a data point.
class HCPointAccessibilityOptionsObject implements HCOption {
  const HCPointAccessibilityOptionsObject({
    this.description,
    this.enabled,
  });

  /// (Highcharts, Highstock, Gantt) Provide a description of the data point,
  final String? description;

  /// (Highcharts, Highstock, Gantt) Set to false to disable accessibility
  final dynamic enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json["description"] = description;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    return json;
  }
}
