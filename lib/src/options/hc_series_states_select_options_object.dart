part of 'hc_options.dart';

/// (Highcharts, Highstock) Specific options for point in selected states, after
class HCSeriesStatesSelectOptionsObject implements HCOption {
  const HCSeriesStatesSelectOptionsObject({
    this.animation,
    this.borderColor,
    this.borderWidth,
    this.color,
    this.enabled,
    this.halo,
    this.lineWidth,
    this.lineWidthPlus,
    this.marker,
  });

  /// (Highcharts, Highstock) Animation setting for hovering the graph in
  final dynamic animation;

  /// (Highmaps) The border color of the point in this state.
  final dynamic borderColor;

  /// (Highmaps) The border width of the point in this state
  final num? borderWidth;

  /// (Highmaps) The color of the shape in this state.
  final dynamic color;

  /// (Highcharts, Highstock) Enable separate styles for the hovered series to
  final dynamic enabled;

  /// (Highcharts, Highstock) Options for the halo appearing around the hovered
  final HCSeriesStatesHoverHaloOptionsObject? halo;

  /// (Highcharts, Highstock) Pixel width of the graph line. By default this
  final num? lineWidth;

  /// (Highcharts, Highstock) The additional line width for the graph of a
  final num? lineWidthPlus;

  /// (Highcharts, Highstock) In Highcharts 1.0, the appearance of all markers
  final HCPointMarkerOptionsObject? marker;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (halo != null) {
      json["halo"] = halo!.toJson();
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (lineWidthPlus != null) {
      json["lineWidthPlus"] = lineWidthPlus;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    return json;
  }
}
