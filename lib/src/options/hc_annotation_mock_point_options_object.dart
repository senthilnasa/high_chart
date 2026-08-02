part of 'hc_options.dart';

/// Object of shape point.
class HCAnnotationMockPointOptionsObject implements HCOption {
  const HCAnnotationMockPointOptionsObject({
    this.x,
    this.xAxis,
    this.y,
    this.yAxis,
  });

  /// The x position of the point. Units can be either in axis or chart pixel
  final num? x;

  /// This number defines which xAxis the point is connected to. It refers to
  final dynamic xAxis;

  /// The y position of the point. Units can be either in axis or chart pixel
  final num? y;

  /// This number defines which yAxis the point is connected to. It refers to
  final dynamic yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (x != null) {
      json["x"] = x;
    }
    if (xAxis != null) {
      json["xAxis"] = hcJsonValue(xAxis);
    }
    if (y != null) {
      json["y"] = y;
    }
    if (yAxis != null) {
      json["yAxis"] = hcJsonValue(yAxis);
    }
    return json;
  }
}
