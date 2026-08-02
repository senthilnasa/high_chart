part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) Options for specific range. One range
class HCLegendBubbleLegendRangesOptions implements HCOption {
  const HCLegendBubbleLegendRangesOptions({
    this.borderColor,
    this.color,
    this.connectorColor,
    this.value,
  });

  /// (Highcharts, Highstock, Highmaps) The color of the border for individual
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps) The color of the bubble for individual
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) The color of the connector for
  final dynamic connectorColor;

  /// (Highcharts, Highstock, Highmaps) Range size value, similar to bubble Z
  final num? value;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (connectorColor != null) {
      json["connectorColor"] = hcJsonValue(connectorColor);
    }
    if (value != null) {
      json["value"] = value;
    }
    return json;
  }
}
