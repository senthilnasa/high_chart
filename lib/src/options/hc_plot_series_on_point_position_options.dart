part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options allowing to set a
class HCPlotSeriesOnPointPositionOptions implements HCOption {
  const HCPlotSeriesOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Series center offset from
  final num? offsetX;

  /// (Highcharts, Highstock, Highmaps, Gantt) Series center offset from
  final num? offsetY;

  /// (Highcharts, Highstock, Highmaps, Gantt) X position of the series
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) Y position of the series
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (offsetX != null) {
      json["offsetX"] = offsetX;
    }
    if (offsetY != null) {
      json["offsetY"] = offsetY;
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
