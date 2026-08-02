part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The position of the button.
class HCChartZoomingResetButtonPositionOptions implements HCOption {
  const HCChartZoomingResetButtonPositionOptions({
    this.align,
    this.verticalAlign,
    this.y,
  });

  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

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
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
