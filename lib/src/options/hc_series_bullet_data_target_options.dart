part of 'hc_options.dart';

/// (Highcharts) Individual target options for each point.
class HCSeriesBulletDataTargetOptions implements HCOption {
  const HCSeriesBulletDataTargetOptions({
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.color,
    this.height,
    this.width,
  });

  /// (Highcharts) The border color of the rectangle representing the target.
  final String? borderColor;

  /// (Highcharts) The border radius of the rectangle representing the target.
  final num? borderRadius;

  /// (Highcharts) The border width of the rectangle representing the target.
  final num? borderWidth;

  /// (Highcharts) The color of the rectangle representing the target. When not
  final dynamic color;

  /// (Highcharts) The height of the rectangle representing the target.
  final num? height;

  /// (Highcharts) The width of the rectangle representing the target. Could be
  final dynamic width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json["borderColor"] = borderColor;
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (width != null) {
      json["width"] = hcJsonValue(width);
    }
    return json;
  }
}
