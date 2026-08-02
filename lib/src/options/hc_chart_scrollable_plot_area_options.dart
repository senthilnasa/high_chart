part of 'hc_options.dart';

/// (Highcharts, Gantt) Options for a scrollable plot area. This feature provides
class HCChartScrollablePlotAreaOptions implements HCOption {
  const HCChartScrollablePlotAreaOptions({
    this.minHeight,
    this.minWidth,
    this.opacity,
    this.scrollPositionX,
    this.scrollPositionY,
  });

  /// (Highcharts, Gantt) The minimum height for the plot area. If it gets
  final num? minHeight;

  /// (Highcharts, Gantt) The minimum width for the plot area. If it gets
  final num? minWidth;

  /// (Highcharts, Gantt) The opacity of mask applied on one of the sides of
  final num? opacity;

  /// (Highcharts, Gantt) The initial scrolling position of the scrollable plot
  final num? scrollPositionX;

  /// (Highcharts, Gantt) The initial scrolling position of the scrollable plot
  final num? scrollPositionY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (minHeight != null) {
      json["minHeight"] = minHeight;
    }
    if (minWidth != null) {
      json["minWidth"] = minWidth;
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (scrollPositionX != null) {
      json["scrollPositionX"] = scrollPositionX;
    }
    if (scrollPositionY != null) {
      json["scrollPositionY"] = scrollPositionY;
    }
    return json;
  }
}
