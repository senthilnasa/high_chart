part of 'hc_options.dart';

/// (Highcharts) Accessibility options for an axis. Requires the accessibility
class HCAxisAccessibilityOptionsObject implements HCOption {
  const HCAxisAccessibilityOptionsObject({
    this.description,
    this.enabled,
    this.rangeDescription,
  });

  /// (Highcharts) Description for an axis to expose to screen reader users.
  final String? description;

  /// (Highcharts) Enable axis accessibility features, including axis
  final dynamic enabled;

  /// (Highcharts) Range description for an axis. Overrides the default range
  final String? rangeDescription;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json["description"] = description;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (rangeDescription != null) {
      json["rangeDescription"] = rangeDescription;
    }
    return json;
  }
}
