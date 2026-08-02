part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for the point markers of line-like series.
class HCPointMarkerOptionsObject implements HCOption {
  const HCPointMarkerOptionsObject({
    this.animation,
    this.color,
    this.enabled,
    this.enabledThreshold,
    this.fillColor,
    this.fillOpacity,
    this.height,
    this.lineColor,
    this.lineWidth,
    this.radius,
    this.states,
    this.symbol,
    this.width,
  });

  /// (Highcharts, Highstock, Highmaps) Animation for the marker as it moves
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps) The color of the marker.
  final dynamic color;

  /// (Highcharts, Highstock) Enable or disable the point marker. If
  final dynamic enabled;

  /// (Highcharts, Highstock) The threshold for how dense the point markers
  final num? enabledThreshold;

  /// (Highcharts, Highstock) The fill color of the point marker. When
  final dynamic fillColor;

  /// (Highcharts) The fill opacity of the bubble markers.
  final num? fillOpacity;

  /// (Highcharts, Highstock) Image markers only. Set the image width
  final num? height;

  /// (Highcharts, Highstock) The color of the point marker's outline. When
  final dynamic lineColor;

  /// (Highcharts, Highstock) The width of the point marker's outline.
  final num? lineWidth;

  /// (Highcharts, Highstock) The radius of the point marker.
  final num? radius;

  /// (Highcharts, Highstock) States for a single point marker.
  final HCPointStatesOptionsObject? states;

  /// (Highcharts, Highstock) A predefined shape or symbol for the marker. When
  final String? symbol;

  /// (Highcharts, Highstock) Image markers only. Set the image width
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (enabledThreshold != null) {
      json["enabledThreshold"] = enabledThreshold;
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (fillOpacity != null) {
      json["fillOpacity"] = fillOpacity;
    }
    if (height != null) {
      json["height"] = height;
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
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (symbol != null) {
      json["symbol"] = symbol;
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
