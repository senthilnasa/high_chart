part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options allowing to set a position and an offset
class HCPlotHeatmapOnPointPositionOptions implements HCOption {
  const HCPlotHeatmapOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) Series center offset from the original x
  final num? offsetX;

  /// (Highcharts, Highmaps) Series center offset from the original y
  final num? offsetY;

  /// (Highcharts, Highmaps) X position of the series center. By default,
  final num? x;

  /// (Highcharts, Highmaps) Y position of the series center. By default,
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
