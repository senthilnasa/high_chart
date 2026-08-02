part of 'hc_options.dart';

class HCNavigationBindingsCrooked5AnnotationsTypesTimeCyclesTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsCrooked5AnnotationsTypesTimeCyclesTypePointsOptions({
    this.controlPoint,
    this.x,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json["controlPoint"] = controlPoint;
    }
    if (x != null) {
      json["x"] = x;
    }
    return json;
  }
}
