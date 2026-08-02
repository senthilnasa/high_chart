part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsMeasureXAnnotationsTypesCrookedLineTypeOptions
    implements HCOption {
  const HCNavigationBindingsMeasureXAnnotationsTypesCrookedLineTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationBindingsMeasureXAnnotationsTypesCrookedLineTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsMeasureXAnnotationsTypesCrookedLineTypePointsOptions>?
      points;

  /// (Highstock) This number defines which xAxis the point is connected to. It
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
