part of 'hc_options.dart';

/// (Highcharts, Highmaps) Positioning options for fixed tooltip, taking effect
class HCPlotPieTooltipPositionOptions implements HCOption {
  const HCPlotPieTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) The horizontal alignment of the fixed tooltip.
  final String? align;

  /// (Highcharts, Highmaps) What the fixed tooltip alignment should be
  final String? relativeTo;

  /// (Highcharts, Highmaps) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highcharts, Highmaps) X pixel offset from the given position. Can be
  final num? x;

  /// (Highcharts, Highmaps) Y pixel offset from the given position. Can be
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
