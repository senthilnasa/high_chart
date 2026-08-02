part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsCrooked3AnnotationsTypesPitchforkTypeOptions
    implements HCOption {
  const HCNavigationBindingsCrooked3AnnotationsTypesPitchforkTypeOptions({
    this.innerBackground,
    this.outerBackground,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Inner background options.
  final HCNavigationBindingsCrooked3AnnotationsTypesPitchforkTypeInnerBackgroundOptions?
      innerBackground;

  /// (Highstock) Outer background options.
  final HCNavigationBindingsCrooked3AnnotationsTypesPitchforkTypeOuterBackgroundOptions?
      outerBackground;

  final List<
          HCNavigationBindingsCrooked3AnnotationsTypesPitchforkTypePointsOptions>?
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
