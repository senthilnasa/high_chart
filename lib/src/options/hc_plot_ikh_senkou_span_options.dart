part of 'hc_options.dart';

/// (Highstock) The styles for area between Senkou Span A and B.
class HCPlotIkhSenkouSpanOptions implements HCOption {
  const HCPlotIkhSenkouSpanOptions({
    this.color,
    this.negativeColor,
  });

  /// (Highstock) Color of the area between Senkou Span A and B, when Senkou
  final dynamic color;

  /// (Highstock) Color of the area between Senkou Span A and B, when Senkou
  final dynamic negativeColor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (negativeColor != null) {
      json["negativeColor"] = hcJsonValue(negativeColor);
    }
    return json;
  }
}
