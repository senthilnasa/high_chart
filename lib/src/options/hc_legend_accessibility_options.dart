part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the
class HCLegendAccessibilityOptions implements HCOption {
  const HCLegendAccessibilityOptions({
    this.enabled,
    this.keyboardNavigation,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable accessibility support for
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation
  final HCLegendAccessibilityKeyboardNavigationOptions? keyboardNavigation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (keyboardNavigation != null) {
      json["keyboardNavigation"] = keyboardNavigation!.toJson();
    }
    return json;
  }
}
