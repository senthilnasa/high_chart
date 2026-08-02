part of 'hc_options.dart';

/// (Highcharts, Highstock) Positioning options for fixed tooltip, taking
class HCPlotLineTooltipPositionOptions implements HCOption {
  const HCPlotLineTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock) The horizontal alignment of the fixed
  final String? align;

  /// (Highcharts, Highstock) What the fixed tooltip alignment should be
  final String? relativeTo;

  /// (Highcharts, Highstock) The vertical alignment of the fixed tooltip.
  final String? verticalAlign;

  /// (Highcharts, Highstock) X pixel offset from the given position. Can
  final num? x;

  /// (Highcharts, Highstock) Y pixel offset from the given position. Can
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
