part of 'hc_options.dart';

/// (Highstock) Accessibility options for a series.
class HCSeriesAccessibilityOptionsObject implements HCOption {
  const HCSeriesAccessibilityOptionsObject({
    this.description,
    this.descriptionFormat,
    this.enabled,
    this.exposeAsGroupOnly,
    this.keyboardNavigation,
    this.point,
  });

  /// (Highstock) Provide a description of the series, announced to screen
  final String? description;

  /// (Highstock) Format to use for describing the data series group to
  final String? descriptionFormat;

  /// (Highstock) Enable/disable accessibility functionality for a specific
  final dynamic enabled;

  /// (Highstock) Expose only the series element to screen readers, not its
  final dynamic exposeAsGroupOnly;

  /// (Highstock) Keyboard navigation for a series
  final HCSeriesAccessibilityKeyboardNavigationOptionsObject?
      keyboardNavigation;

  /// (Highstock) Point accessibility options for a series.
  final dynamic point;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (description != null) {
      json["description"] = description;
    }
    if (descriptionFormat != null) {
      json["descriptionFormat"] = descriptionFormat;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (exposeAsGroupOnly != null) {
      json["exposeAsGroupOnly"] = hcJsonValue(exposeAsGroupOnly);
    }
    if (keyboardNavigation != null) {
      json["keyboardNavigation"] = keyboardNavigation!.toJson();
    }
    if (point != null) {
      json["point"] = hcJsonValue(point);
    }
    return json;
  }
}
