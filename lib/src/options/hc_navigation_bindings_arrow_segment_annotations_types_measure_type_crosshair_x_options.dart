part of 'hc_options.dart';

/// (Highstock) Configure a crosshair that is horizontally placed in middle of
class HCNavigationBindingsArrowSegmentAnnotationsTypesMeasureTypeCrosshairXOptions
    implements HCOption {
  const HCNavigationBindingsArrowSegmentAnnotationsTypesMeasureTypeCrosshairXOptions({
    this.dashStyle,
    this.enabled,
    this.markerEnd,
    this.zIndex,
  });

  /// (Highstock) The dash or dot style of the crosshair's line. For possible
  final String? dashStyle;

  /// (Highstock) Enable or disable the horizontal crosshair.
  final dynamic enabled;

  /// (Highstock) The marker-end defines the arrowhead that will be drawn at
  final String? markerEnd;

  /// (Highstock) The Z index of the crosshair in annotation.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (markerEnd != null) {
      json["markerEnd"] = markerEnd;
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
