part of 'hc_options.dart';

/// (Highstock) Options allowing to set a position and an offset of the series in
class HCPlotMacdOnPointPositionOptions implements HCOption {
  const HCPlotMacdOnPointPositionOptions({
    this.offsetX,
    this.offsetY,
    this.x,
    this.y,
  });

  /// (Highstock) Series center offset from the original x position. If
  final num? offsetX;

  /// (Highstock) Series center offset from the original y position. If
  final num? offsetY;

  /// (Highstock) X position of the series center. By default, the series is
  final num? x;

  /// (Highstock) Y position of the series center. By default, the series is
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
