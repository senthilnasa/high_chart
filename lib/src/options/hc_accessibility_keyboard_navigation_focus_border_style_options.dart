part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Style options for the focus border
class HCAccessibilityKeyboardNavigationFocusBorderStyleOptions
    implements HCOption {
  const HCAccessibilityKeyboardNavigationFocusBorderStyleOptions({
    this.borderRadius,
    this.color,
    this.lineWidth,
  });

  final num? borderRadius;

  final dynamic color;

  final num? lineWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    return json;
  }
}
