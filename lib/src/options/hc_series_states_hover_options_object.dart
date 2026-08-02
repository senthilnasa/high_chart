part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for the hovered series. These settings
class HCSeriesStatesHoverOptionsObject implements HCOption {
  const HCSeriesStatesHoverOptionsObject({
    this.animation,
    this.borderColor,
    this.borderWidth,
    this.brightness,
    this.color,
    this.connectorWidthPlus,
    this.enabled,
    this.fillColor,
    this.halo,
    this.lineColor,
    this.lineWidth,
    this.lineWidthPlus,
    this.linkOpacity,
    this.marker,
    this.opacity,
    this.shadow,
  });

  /// (Highcharts, Highstock) Animation setting for hovering the graph in
  final dynamic animation;

  /// (Highmaps) The border color of the point in this state.
  final dynamic borderColor;

  /// (Highmaps) The border width of the point in this state
  final num? borderWidth;

  /// (Highmaps) The relative brightness of the point when hovered, relative to
  final num? brightness;

  /// (Highmaps) The color of the shape in this state.
  final dynamic color;

  /// (Highcharts, Highstock) The additional connector line width for a hovered
  final num? connectorWidthPlus;

  /// (Highcharts, Highstock) Enable separate styles for the hovered series to
  final dynamic enabled;

  /// (Highstock) The fill or background color of the flag.
  final dynamic fillColor;

  /// (Highcharts, Highstock) Options for the halo appearing around the hovered
  final HCSeriesStatesHoverHaloOptionsObject? halo;

  /// (Highstock) The color of the line/border of the flag.
  final dynamic lineColor;

  /// (Highcharts, Highstock) Pixel width of the graph line. By default this
  final num? lineWidth;

  /// (Highcharts, Highstock) The additional line width for the graph of a
  final num? lineWidthPlus;

  /// (Highcharts, Highstock, Gantt) Opacity for the links between nodes in the
  final num? linkOpacity;

  /// (Highcharts, Highstock) In Highcharts 1.0, the appearance of all markers
  final HCPointMarkerOptionsObject? marker;

  /// (Highcharts) The opacity of a point in treemap. When a point has
  final num? opacity;

  /// (Highcharts) The shadow option for hovered state.
  final dynamic shadow;

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
    if (brightness != null) {
      json["brightness"] = brightness;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (connectorWidthPlus != null) {
      json["connectorWidthPlus"] = connectorWidthPlus;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (halo != null) {
      json["halo"] = halo!.toJson();
    }
    if (lineColor != null) {
      json["lineColor"] = hcJsonValue(lineColor);
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (lineWidthPlus != null) {
      json["lineWidthPlus"] = lineWidthPlus;
    }
    if (linkOpacity != null) {
      json["linkOpacity"] = linkOpacity;
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    return json;
  }
}
