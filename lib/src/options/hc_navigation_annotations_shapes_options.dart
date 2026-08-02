part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) An array of shapes for the
class HCNavigationAnnotationsShapesOptions implements HCOption {
  const HCNavigationAnnotationsShapesOptions({
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

  /// (Highcharts, Highstock, Highmaps, Gantt) The array of control points.
  final dynamic controlPoints;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the dash style to use
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's fill.
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The height of the `rect` shape.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) Id of the marker which will be
  final String? markerEnd;

  /// (Highcharts, Highstock, Highmaps, Gantt) Id of the marker which will be
  final String? markerStart;

  /// (Highcharts, Highstock, Highmaps, Gantt) This option defines the point to
  final dynamic point;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of points for the shape
  final List<dynamic>? points;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `circle`
  final num? r;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `ellipse`
  final num? ry;

  /// (Highcharts, Highstock, Highmaps, Gantt) Defines additional snapping area
  final num? snap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for an image to use as
  final String? src;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the
  final num? strokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The type of the shape. Available
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the `rect` shape.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The xAxis index which should be
  final num? xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) The yAxis index which should be
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
