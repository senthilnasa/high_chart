part of 'hc_options.dart';

/// (Highstock) The styles for lines which determine price zones.
class HCPlotVbpZoneLinesOptions implements HCOption {
  const HCPlotVbpZoneLinesOptions({
    this.enabled,
    this.styles,
  });

  /// (Highstock) Enable/disable zone lines.
  final dynamic enabled;

  /// (Highstock) Specify the style of zone lines.
  final HCCSSObject? styles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    return json;
  }
}
