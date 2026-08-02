part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Positioning options for fixed
class HCPlotSeriesTooltipPositionOptions implements HCOption {
  const HCPlotSeriesTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) What the fixed tooltip
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) X pixel offset from the
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) Y pixel offset from the
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (relativeTo != null) {
      json["relativeTo"] = relativeTo;
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
