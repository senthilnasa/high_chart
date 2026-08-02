part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Options allowing to set a position and an
class HCPlotXrangeOnPointPositionOptions implements HCOption {
  const HCPlotXrangeOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Series center offset from the original x
  final num? offsetX;

  /// (Highcharts, Highstock, Gantt) Series center offset from the original y
  final num? offsetY;

  /// (Highcharts, Highstock, Gantt) X position of the series center. By
  final num? x;

  /// (Highcharts, Highstock, Gantt) Y position of the series center. By
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
