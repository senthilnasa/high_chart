part of 'hc_options.dart';

/// (Highcharts) Options allowing to set a position and an offset of the
class HCPlotSolidgaugeOnPointPositionOptions implements HCOption {
  const HCPlotSolidgaugeOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts) Series center offset from the original x position. If
  final num? offsetX;

  /// (Highcharts) Series center offset from the original y position. If
  final num? offsetY;

  /// (Highcharts) X position of the series center. By default, the series
  final num? x;

  /// (Highcharts) Y position of the series center. By default, the series
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
