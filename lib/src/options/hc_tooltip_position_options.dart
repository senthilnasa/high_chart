part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Positioning options for fixed
class HCTooltipPositionOptions implements HCOption {
  const HCTooltipPositionOptions({
    this.align,
    this.relativeTo,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) What the fixed tooltip alignment
  final String? relativeTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) X pixel offset from the given
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) Y pixel offset from the given
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
