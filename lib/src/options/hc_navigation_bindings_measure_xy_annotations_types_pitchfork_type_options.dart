part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsMeasureXYAnnotationsTypesPitchforkTypeOptions
    implements HCOption {
  const HCNavigationBindingsMeasureXYAnnotationsTypesPitchforkTypeOptions({
    this.innerBackground,
    this.outerBackground,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Inner background options.
  final HCNavigationBindingsMeasureXYAnnotationsTypesPitchforkTypeInnerBackgroundOptions?
      innerBackground;

  /// (Highstock) Outer background options.
  final HCNavigationBindingsMeasureXYAnnotationsTypesPitchforkTypeOuterBackgroundOptions?
      outerBackground;

  final List<
          HCNavigationBindingsMeasureXYAnnotationsTypesPitchforkTypePointsOptions>?
      points;

  /// (Highstock) This number defines which xAxis the point is connected to. It
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (innerBackground != null) {
      json["innerBackground"] = innerBackground!.toJson();
    }
    if (outerBackground != null) {
      json["outerBackground"] = outerBackground!.toJson();
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
