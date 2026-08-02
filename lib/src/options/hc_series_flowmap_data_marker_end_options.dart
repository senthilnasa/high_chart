part of 'hc_options.dart';

/// (Highmaps) Specifying a `markerEnd` here will create an arrow symbol
class HCSeriesFlowmapDataMarkerEndOptions implements HCOption {
  const HCSeriesFlowmapDataMarkerEndOptions({
    this.enabled,
    this.height,
    this.markerType,
    this.width,
  });

  /// (Highmaps) Enable or disable the `markerEnd`.
  final dynamic enabled;

  /// (Highmaps) Height of the `markerEnd`. Can be a number in pixels or a
  final dynamic height;

  /// (Highmaps) Change the shape of the `markerEnd`. Can be `arrow` or
  final String? markerType;

  /// (Highmaps) Width of the `markerEnd`. Can be a number in pixels or a
  final dynamic width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (height != null) {
      json["height"] = hcJsonValue(height);
    }
    if (markerType != null) {
      json["markerType"] = markerType;
    }
    if (width != null) {
      json["width"] = hcJsonValue(width);
    }
    return json;
  }
}
