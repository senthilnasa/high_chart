part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsMeasureYAnnotationsTypeOptions implements HCOption {
  const HCNavigationBindingsMeasureYAnnotationsTypeOptions({
    this.background,
    this.height,
    this.line,
    this.point,
    this.points,
    this.type,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Background shape options for the annotation.
  final HCNavigationBindingsMeasureYAnnotationsTypeBackgroundOptions?
      background;

  /// (Highstock) Height of the annotation in pixels.
  final num? height;

  /// (Highstock) Line options.
  final HCNavigationBindingsMeasureYAnnotationsTypeLineOptions? line;

  /// (Highstock) A single point that the annotation is attached to. It can be
  final dynamic point;

  /// (Highstock) An array of points that the annotation is attached to. Each
  final List<dynamic>? points;

  /// (Highstock) The annotation type identifier.
  final String? type;

  /// (Highstock) This number defines which `xAxis` the point is connected to.
  final num? xAxis;

  /// (Highstock) This number defines which `yAxis` the point is connected to.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json["background"] = background!.toJson();
    }
    if (height != null) {
      json["height"] = height;
    }
    if (line != null) {
      json["line"] = line!.toJson();
    }
    if (point != null) {
      json["point"] = hcJsonValue(point);
    }
    if (points != null) {
      json["points"] = points!.map((e) => hcJsonValue(e)).toList();
    }
    if (type != null) {
      json["type"] = type;
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
