part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options allowing to set a position and an offset of
class HCPlotTilemapOnPointPositionOptions implements HCOption {
  const HCPlotTilemapOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) Series center offset from the original x position.
  final num? offsetX;

  /// (Highcharts, Highmaps) Series center offset from the original y position.
  final num? offsetY;

  /// (Highcharts, Highmaps) X position of the series center. By default, the
  final num? x;

  /// (Highcharts, Highmaps) Y position of the series center. By default, the
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
