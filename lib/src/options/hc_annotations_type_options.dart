part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Additional options for an annotation
class HCAnnotationsTypeOptions implements HCOption {
  const HCAnnotationsTypeOptions({
    this.background,
    this.height,
    this.line,
    this.point,
    this.points,
    this.type,
    this.xAxis,
    this.yAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Background shape options for the
  final HCAnnotationsTypeBackgroundOptions? background;

  /// (Highcharts, Highstock, Highmaps, Gantt) Height of the annotation in
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) Line options.
  final HCAnnotationsTypeLineOptions? line;

  /// (Highcharts, Highstock, Highmaps, Gantt) A single point that the
  final dynamic point;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of points that the
  final List<dynamic>? points;

  /// (Highcharts, Highstock, Highmaps, Gantt) The annotation type identifier.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) This number defines which
  final num? xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) This number defines which
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
