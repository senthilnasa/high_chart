part of 'hc_options.dart';

/// (Highstock, Gantt) The navigator is a small series below the main series,
class HCNavigatorOptions implements HCOption {
  const HCNavigatorOptions({
    this.accessibility,
    this.adaptToUpdatedData,
    this.baseSeries,
    this.enabled,
    this.handles,
    this.height,
    this.margin,
    this.maskFill,
    this.maskInside,
    this.opposite,
    this.outlineColor,
    this.outlineWidth,
    this.series,
    this.stickToMax,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock, Gantt) Accessibility options for the navigator. Requires the
  final HCNavigatorAccessibilityOptions? accessibility;

  /// (Highstock, Gantt) Whether the navigator and scrollbar should adapt to
  final dynamic adaptToUpdatedData;

  /// (Highstock, Gantt) An integer identifying the index to use for the base
  final dynamic baseSeries;

  /// (Highstock, Gantt) Enable or disable the navigator.
  final dynamic enabled;

  /// (Highstock, Gantt) Options for the handles for dragging the zoomed area.
  final HCNavigatorHandlesOptions? handles;

  /// (Highstock, Gantt) The height of the navigator.
  final num? height;

  /// (Highstock, Gantt) The distance from the nearest element, the X axis or X
  final num? margin;

  /// (Highstock, Gantt) The color of the mask covering the areas of the
  final dynamic maskFill;

  /// (Highstock, Gantt) Whether the mask should be inside the range marking
  final dynamic maskInside;

  /// (Highstock, Gantt) When the chart is inverted, whether to draw the
  final dynamic opposite;

  /// (Highstock, Gantt) The color of the line marking the currently zoomed
  final dynamic outlineColor;

  /// (Highstock, Gantt) The width of the line marking the currently zoomed
  final num? outlineWidth;

  /// (Highstock, Gantt) Options for the navigator series. Available options
  final dynamic series;

  /// (Highstock, Gantt) Enable or disable navigator sticking to right, while
  final dynamic stickToMax;

  /// (Highstock, Gantt) Options for the navigator X axis. Default series
  final dynamic xAxis;

  /// (Highstock, Gantt) Options for the navigator Y axis. Default series
  final dynamic yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (adaptToUpdatedData != null) {
      json["adaptToUpdatedData"] = hcJsonValue(adaptToUpdatedData);
    }
    if (baseSeries != null) {
      json["baseSeries"] = hcJsonValue(baseSeries);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (handles != null) {
      json["handles"] = handles!.toJson();
    }
    if (height != null) {
      json["height"] = height;
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (maskFill != null) {
      json["maskFill"] = hcJsonValue(maskFill);
    }
    if (maskInside != null) {
      json["maskInside"] = hcJsonValue(maskInside);
    }
    if (opposite != null) {
      json["opposite"] = hcJsonValue(opposite);
    }
    if (outlineColor != null) {
      json["outlineColor"] = hcJsonValue(outlineColor);
    }
    if (outlineWidth != null) {
      json["outlineWidth"] = outlineWidth;
    }
    if (series != null) {
      json["series"] = hcJsonValue(series);
    }
    if (stickToMax != null) {
      json["stickToMax"] = hcJsonValue(stickToMax);
    }
    if (xAxis != null) {
      json["xAxis"] = hcJsonValue(xAxis);
    }
    if (yAxis != null) {
      json["yAxis"] = hcJsonValue(yAxis);
    }
    return json;
  }
}
