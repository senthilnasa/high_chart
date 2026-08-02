part of 'hc_options.dart';

/// (Highcharts) Options for the dial or arrow pointer of the gauge.
class HCPlotGaugeDialOptions implements HCOption {
  const HCPlotGaugeDialOptions({
    this.backgroundColor,
    this.baseLength,
    this.baseWidth,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.path,
    this.radius,
    this.rearLength,
    this.topWidth,
  });

  /// (Highcharts) The background or fill color of the gauge's dial.
  final dynamic backgroundColor;

  /// (Highcharts) The length of the dial's base part, relative to the total
  final dynamic baseLength;

  /// (Highcharts) The width of the base of the gauge dial. The base is the
  final dynamic baseWidth;

  /// (Highcharts) The border color or stroke of the gauge's dial. By default,
  final dynamic borderColor;

  /// (Highcharts) The border radius of the gauge dial
  final dynamic borderRadius;

  /// (Highcharts) The width of the gauge dial border in pixels.
  final num? borderWidth;

  /// (Highcharts) An array with an SVG path for the custom dial.
  final List<dynamic>? path;

  /// (Highcharts) The radius or length of the dial, relative to the radius of
  final dynamic radius;

  /// (Highcharts) The length of the dial's rear end, the part that extends out
  final dynamic rearLength;

  /// (Highcharts) The width of the top of the dial, closest to the perimeter.
  final dynamic topWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (baseLength != null) {
      json["baseLength"] = hcJsonValue(baseLength);
    }
    if (baseWidth != null) {
      json["baseWidth"] = hcJsonValue(baseWidth);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = hcJsonValue(borderRadius);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (path != null) {
      json["path"] = path!.map((e) => hcJsonValue(e)).toList();
    }
    if (radius != null) {
      json["radius"] = hcJsonValue(radius);
    }
    if (rearLength != null) {
      json["rearLength"] = hcJsonValue(rearLength);
    }
    if (topWidth != null) {
      json["topWidth"] = hcJsonValue(topWidth);
    }
    return json;
  }
}
