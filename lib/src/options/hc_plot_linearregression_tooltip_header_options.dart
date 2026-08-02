part of 'hc_options.dart';

/// (Highstock) Options for the tooltip header when tooltip.split is enabled.
class HCPlotLinearregressionTooltipHeaderOptions implements HCOption {
  const HCPlotLinearregressionTooltipHeaderOptions({
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.distance,
    this.shape,
    this.style,
  });

  /// (Highstock) Background color for the tooltip header when
  final dynamic backgroundColor;

  /// (Highstock) Border color for the tooltip header when tooltip.split is
  final dynamic borderColor;

  /// (Highstock) The width of the border for the tooltip header when
  final num? borderWidth;

  /// (Highstock) Distance between the plot area and the header (except the
  final num? distance;

  /// (Highstock) The name of a symbol to use for the border around the
  final String? shape;

  /// (Highstock) CSS styles for the tooltip header. The default is `{
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
