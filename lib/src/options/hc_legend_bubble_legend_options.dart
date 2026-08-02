part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) The bubble legend is an additional element
class HCLegendBubbleLegendOptions implements HCOption {
  const HCLegendBubbleLegendOptions({
    this.borderColor,
    this.borderWidth,
    this.className,
    this.color,
    this.connectorClassName,
    this.connectorColor,
    this.connectorDistance,
    this.connectorWidth,
    this.enabled,
    this.labels,
    this.legendIndex,
    this.maxSize,
    this.minSize,
    this.ranges,
    this.sizeBy,
    this.sizeByAbsoluteValue,
    this.zIndex,
    this.zThreshold,
  });

  /// (Highcharts, Highstock, Highmaps) The color of the ranges borders, can be
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps) The width of the ranges borders in
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps) An additional class name to apply to
  final String? className;

  /// (Highcharts, Highstock, Highmaps) The main color of the bubble legend.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) An additional class name to apply to
  final String? connectorClassName;

  /// (Highcharts, Highstock, Highmaps) The color of the connector, can be also
  final dynamic connectorColor;

  /// (Highcharts, Highstock, Highmaps) The length of the connectors in pixels.
  final num? connectorDistance;

  /// (Highcharts, Highstock, Highmaps) The width of the connectors in pixels.
  final num? connectorWidth;

  /// (Highcharts, Highstock, Highmaps) Enable or disable the bubble legend.
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps) Options for the bubble legend labels.
  final HCLegendBubbleLegendLabelsOptions? labels;

  /// (Highcharts, Highstock, Highmaps) The position of the bubble legend in
  final num? legendIndex;

  /// (Highcharts, Highstock, Highmaps) Maximum bubble legend range size. If
  final num? maxSize;

  /// (Highcharts, Highstock, Highmaps) Minimum bubble legend range size. If
  final num? minSize;

  /// (Highcharts, Highstock, Highmaps) Options for specific range. One range
  final List<HCLegendBubbleLegendRangesOptions>? ranges;

  /// (Highcharts, Highstock, Highmaps) Whether the bubble legend range value
  final String? sizeBy;

  /// (Highcharts, Highstock, Highmaps) When this is true, the absolute value
  final dynamic sizeByAbsoluteValue;

  /// (Highcharts, Highstock, Highmaps) Define the visual z index of the bubble
  final num? zIndex;

  /// (Highcharts, Highstock, Highmaps) Ranges with lower value than zThreshold
  final num? zThreshold;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (connectorClassName != null) {
      json["connectorClassName"] = connectorClassName;
    }
    if (connectorColor != null) {
      json["connectorColor"] = hcJsonValue(connectorColor);
    }
    if (connectorDistance != null) {
      json["connectorDistance"] = connectorDistance;
    }
    if (connectorWidth != null) {
      json["connectorWidth"] = connectorWidth;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (labels != null) {
      json["labels"] = labels!.toJson();
    }
    if (legendIndex != null) {
      json["legendIndex"] = legendIndex;
    }
    if (maxSize != null) {
      json["maxSize"] = maxSize;
    }
    if (minSize != null) {
      json["minSize"] = minSize;
    }
    if (ranges != null) {
      json["ranges"] = ranges!.map((e) => e.toJson()).toList();
    }
    if (sizeBy != null) {
      json["sizeBy"] = sizeBy;
    }
    if (sizeByAbsoluteValue != null) {
      json["sizeByAbsoluteValue"] = hcJsonValue(sizeByAbsoluteValue);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    if (zThreshold != null) {
      json["zThreshold"] = zThreshold;
    }
    return json;
  }
}
