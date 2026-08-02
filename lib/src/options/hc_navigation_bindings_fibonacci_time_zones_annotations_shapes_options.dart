part of 'hc_options.dart';

/// (Highstock) An array of shapes for the annotation. For options that apply to
class HCNavigationBindingsFibonacciTimeZonesAnnotationsShapesOptions
    implements HCOption {
  const HCNavigationBindingsFibonacciTimeZonesAnnotationsShapesOptions({
    this.controlPoints,
    this.dashStyle,
    this.fill,
    this.height,
    this.markerEnd,
    this.markerStart,
    this.point,
    this.points,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) The array of control points.
  final dynamic controlPoints;

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final dynamic fill;

  /// (Highstock) The height of the `rect` shape. Can be defined in pixels or
  final num? height;

  /// (Highstock) Id of the marker which will be drawn at the final vertex of
  final String? markerEnd;

  /// (Highstock) Id of the marker which will be drawn at the first vertex of
  final String? markerStart;

  /// (Highstock) This option defines the point to which the shape will be
  final dynamic point;

  /// (Highstock) An array of points for the shape or a callback function that
  final List<dynamic>? points;

  /// (Highstock) The radius of the `circle` shape. Can be defined in pixels or
  final num? r;

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

  /// (Highstock) The type of the shape. Available options are `circle`,
  final String? type;

  /// (Highstock) The width of the `rect` shape. Can be defined in pixels or
  final num? width;

  /// (Highstock) The xAxis index which should be used for annotation's sizes
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoints != null) {
      json["controlPoints"] = hcJsonValue(controlPoints);
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (fill != null) {
      json["fill"] = hcJsonValue(fill);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (markerEnd != null) {
      json["markerEnd"] = markerEnd;
    }
    if (markerStart != null) {
      json["markerStart"] = markerStart;
    }
    if (point != null) {
      json["point"] = hcJsonValue(point);
    }
    if (points != null) {
      json["points"] = points!.map((e) => hcJsonValue(e)).toList();
    }
    if (r != null) {
      json["r"] = r;
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
    if (type != null) {
      json["type"] = type;
    }
    if (width != null) {
      json["width"] = width;
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
