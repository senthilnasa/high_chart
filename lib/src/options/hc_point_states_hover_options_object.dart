part of 'hc_options.dart';

/// (Highcharts, Highstock) The hover state for a single point marker.
class HCPointStatesHoverOptionsObject implements HCOption {
  const HCPointStatesHoverOptionsObject({
    this.animation,
    this.enabled,
    this.fillColor,
    this.height,
    this.heightPlus,
    this.lineColor,
    this.lineWidth,
    this.lineWidthPlus,
    this.radius,
    this.radiusPlus,
    this.width,
    this.widthPlus,
  });

  /// (Highcharts, Highstock) Animation when hovering over the marker.
  final dynamic animation;

  /// (Highcharts, Highstock) Enable or disable the point marker.
  final dynamic enabled;

  /// (Highcharts, Highstock) The fill color of the marker in hover state. When
  final dynamic fillColor;

  /// (Highcharts, Highmaps) Set the marker's fixed height on hover state.
  final num? height;

  /// (Highcharts, Highstock) The number of pixels to increase the height of
  final num? heightPlus;

  /// (Highcharts, Highstock) The color of the point marker's outline. When
  final dynamic lineColor;

  /// (Highcharts, Highstock) The width of the point marker's outline. When
  final num? lineWidth;

  /// (Highcharts, Highstock) The additional line width for a hovered point.
  final num? lineWidthPlus;

  /// (Highcharts, Highstock) The radius of the point marker. In hover state,
  final num? radius;

  /// (Highcharts, Highstock) The number of pixels to increase the radius of
  final num? radiusPlus;

  /// (Highcharts, Highmaps) Set the marker's fixed width on hover state.
  final num? width;

  /// (Highcharts, Highstock) The number of pixels to increase the width of the
  final num? widthPlus;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (heightPlus != null) {
      json["heightPlus"] = heightPlus;
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
    if (radius != null) {
      json["radius"] = radius;
    }
    if (radiusPlus != null) {
      json["radiusPlus"] = radiusPlus;
    }
    if (width != null) {
      json["width"] = width;
    }
    if (widthPlus != null) {
      json["widthPlus"] = widthPlus;
    }
    return json;
  }
}
