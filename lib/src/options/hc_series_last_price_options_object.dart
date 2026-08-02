part of 'hc_options.dart';

/// (Highstock) The line marks the last price from all points.
class HCSeriesLastPriceOptionsObject implements HCOption {
  const HCSeriesLastPriceOptionsObject({
    this.color,
    this.dashStyle,
    this.enabled,
    this.label,
    this.width,
  });

  /// (Highstock) The color of the line of last price. By default, the line has
  final String? color;

  /// (Highstock) Name of the dash style to use for the line of last price.
  final String? dashStyle;

  /// (Highstock) Enable or disable the indicator.
  final dynamic enabled;

  /// (Highstock) A label on the axis next to the crosshair.
  final HCSeriesLastPriceLabelOptionsObject? label;

  /// (Highstock) Width of the last price line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
