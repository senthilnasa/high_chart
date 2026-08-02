part of 'hc_options.dart';

/// (Highcharts, Highstock) The appearance of the point marker when selected. In
class HCPointStatesSelectOptionsObject implements HCOption {
  const HCPointStatesSelectOptionsObject({
    this.enabled,
    this.fillColor,
    this.height,
    this.heightPlus,
    this.lineColor,
    this.lineWidth,
    this.radius,
    this.width,
    this.widthPlus,
  });

  /// (Highcharts, Highstock) Enable or disable visible feedback for selection.
  final dynamic enabled;

  /// (Highcharts, Highstock) The fill color of the point marker.
  final dynamic fillColor;

  /// (Highcharts, Highmaps) Set the marker's fixed height on select state.
  final num? height;

  /// (Highcharts, Highstock) The number of pixels to increase the height of
  final num? heightPlus;

  /// (Highcharts, Highstock) The color of the point marker's outline. When
  final dynamic lineColor;

  /// (Highcharts, Highstock) The width of the point marker's outline.
  final num? lineWidth;

  /// (Highcharts, Highstock) The radius of the point marker. In hover state,
  final num? radius;

  /// (Highcharts, Highmaps) Set the marker's fixed width on select state.
  final num? width;

  /// (Highcharts, Highstock) The number of pixels to increase the width of the
  final num? widthPlus;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
    if (radius != null) {
      json["radius"] = radius;
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
