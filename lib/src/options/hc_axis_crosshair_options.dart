part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Configure a crosshair that follows
class HCAxisCrosshairOptions implements HCOption {
  const HCAxisCrosshairOptions({
    this.className,
    this.color,
    this.dashStyle,
    this.label,
    this.showDelay,
    this.snap,
    this.width,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the crosshair,
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the crosshair.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps, Gantt) The dash style for the
  final String? dashStyle;

  /// (Highstock) A label on the axis next to the crosshair.
  final HCAxisCrosshairLabelOptions? label;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of milliseconds to
  final num? showDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the crosshair should
  final dynamic snap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index of the crosshair.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (showDelay != null) {
      json["showDelay"] = showDelay;
    }
    if (snap != null) {
      json["snap"] = hcJsonValue(snap);
    }
    if (width != null) {
      json["width"] = width;
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
