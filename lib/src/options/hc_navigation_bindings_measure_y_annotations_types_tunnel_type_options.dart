part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsMeasureYAnnotationsTypesTunnelTypeOptions
    implements HCOption {
  const HCNavigationBindingsMeasureYAnnotationsTypesTunnelTypeOptions({
    this.background,
    this.height,
    this.heightControlPoint,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Background options.
  final dynamic background;

  /// (Highstock) The height of the annotation in terms of yAxis.
  final num? height;

  /// (Highstock) Options for the control point which controls the annotation's
  final HCAnnotationControlPointOptionsObject? heightControlPoint;

  /// (Highstock) Line options.
  final HCNavigationBindingsMeasureYAnnotationsTypesTunnelTypeLineOptions? line;

  final List<
          HCNavigationBindingsMeasureYAnnotationsTypesTunnelTypePointsOptions>?
      points;

  /// (Highstock) This number defines which xAxis the point is connected to. It
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json["background"] = hcJsonValue(background);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (heightControlPoint != null) {
      json["heightControlPoint"] = heightControlPoint!.toJson();
    }
    if (line != null) {
      json["line"] = line!.toJson();
    }
    if (points != null) {
      json["points"] = points!.map((e) => e.toJson()).toList();
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
