part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The position of the button.
class HCChartResetZoomButtonPositionOptions implements HCOption {
  const HCChartResetZoomButtonPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the
  final num? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal offset of the
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical offset of the
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
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
