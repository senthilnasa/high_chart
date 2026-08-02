part of 'hc_options.dart';

/// (Highstock, Gantt) Accessibility options for the navigator. Requires the
class HCNavigatorAccessibilityOptions implements HCOption {
  const HCNavigatorAccessibilityOptions({
    this.enabled,
  });

  /// (Highstock, Gantt) Enable accessibility support for the navigator.
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
