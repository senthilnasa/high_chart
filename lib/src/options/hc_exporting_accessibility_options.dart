part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the
class HCExportingAccessibilityOptions implements HCOption {
  const HCExportingAccessibilityOptions({
    this.enabled,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable accessibility support for
  final dynamic enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    return json;
  }
}
