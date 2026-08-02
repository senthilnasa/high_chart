part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Positioning options for fixed tooltip, taking
class HCPlotXrangeTooltipPositionOptions implements HCOption {
  const HCPlotXrangeTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) The horizontal alignment of the fixed
  final String? align;

  /// (Highcharts, Highstock, Gantt) What the fixed tooltip alignment should be
  final String? relativeTo;

  /// (Highcharts, Highstock, Gantt) The vertical alignment of the fixed
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) X pixel offset from the given position.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Y pixel offset from the given position.
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
