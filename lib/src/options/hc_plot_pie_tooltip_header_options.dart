part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options for the tooltip header when tooltip.split
class HCPlotPieTooltipHeaderOptions implements HCOption {
  const HCPlotPieTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highcharts, Highmaps) Background color for the tooltip header when
  final dynamic backgroundColor;

  /// (Highcharts, Highmaps) Border color for the tooltip header when
  final dynamic borderColor;

  /// (Highcharts, Highmaps) The width of the border for the tooltip header
  final num? borderWidth;

  /// (Highcharts, Highmaps) Distance between the plot area and the header
  final num? distance;

  /// (Highcharts, Highmaps) The name of a symbol to use for the border
  final String? shape;

  /// (Highcharts, Highmaps) CSS styles for the tooltip header. The default
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (distance != null) {
      json["distance"] = distance;
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    return json;
  }
}
