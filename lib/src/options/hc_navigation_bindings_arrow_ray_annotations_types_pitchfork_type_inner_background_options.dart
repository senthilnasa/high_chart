part of 'hc_options.dart';

/// (Highstock) Inner background options.
class HCNavigationBindingsArrowRayAnnotationsTypesPitchforkTypeInnerBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesPitchforkTypeInnerBackgroundOptions({
    this.dashStyle,
    this.fill,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final String? fill;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note,
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The xAxis index which should be used for annotation's sizes
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (fill != null) {
      json["fill"] = fill;
    }
    if (ry != null) {
      json["ry"] = ry;
    }
    if (snap != null) {
      json["snap"] = snap;
    }
    if (src != null) {
      json["src"] = src;
    }
    if (stroke != null) {
      json["stroke"] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json["strokeWidth"] = strokeWidth;
    }
    if (xAxis != null) {
      json["xAxis"] = xAxis;
    }
    if (yAxis != null) {
      json["yAxis"] = yAxis;
    }
    return json;
  }
}
