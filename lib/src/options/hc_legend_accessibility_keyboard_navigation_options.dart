part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation for
class HCLegendAccessibilityKeyboardNavigationOptions implements HCOption {
  const HCLegendAccessibilityKeyboardNavigationOptions({
    this.enabled,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable keyboard navigation for
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
