part of 'hc_options.dart';

class HCNavigationBindingsRayAnnotationsTypesElliottWaveTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsRayAnnotationsTypesElliottWaveTypePointsOptions({
    this.controlPoint,
    this.label,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) Options for annotation's labels. Each label inherits options
  final HCNavigationBindingsRayAnnotationsTypesElliottWaveTypePointsLabelOptions?
      label;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json["controlPoint"] = controlPoint;
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
