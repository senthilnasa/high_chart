part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) Positioning options for fixed tooltip,
class HCPlotHeatmapTooltipPositionOptions implements HCOption {
  const HCPlotHeatmapTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps) The horizontal alignment of the fixed
  final String? align;

  /// (Highcharts, Highstock, Highmaps) What the fixed tooltip alignment should
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps) The vertical alignment of the fixed
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps) X pixel offset from the given position.
  final num? x;

  /// (Highcharts, Highstock, Highmaps) Y pixel offset from the given position.
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
