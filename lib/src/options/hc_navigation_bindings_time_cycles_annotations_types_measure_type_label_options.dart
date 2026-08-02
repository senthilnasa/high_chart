part of 'hc_options.dart';

class HCNavigationBindingsTimeCyclesAnnotationsTypesMeasureTypeLabelOptions
    implements HCOption {
  const HCNavigationBindingsTimeCyclesAnnotationsTypesMeasureTypeLabelOptions({
    this.enabled,
    this.formatter,
    this.style,
  });

  /// (Highstock) Enable or disable the label text (min, max, average, bins
  final dynamic enabled;

  /// (Highstock) Formatter function for the label text.
  final dynamic formatter;

  /// (Highstock) CSS styles for the measure label.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (formatter != null) {
      json["formatter"] = hcJsonValue(formatter);
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    return json;
  }
}
