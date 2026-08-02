part of 'hc_options.dart';

/// (Highstock) Keyboard navigation for a series
class HCSeriesAccessibilityKeyboardNavigationOptionsObject implements HCOption {
  const HCSeriesAccessibilityKeyboardNavigationOptionsObject({
    this.enabled,
  });

  /// (Highstock) Enable/disable keyboard navigation support for a specific
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
