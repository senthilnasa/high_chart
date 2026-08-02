part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) The position of the no-data label, relative to
class HCNoDataPositionOptions implements HCOption {
  const HCNoDataPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Horizontal alignment of the label.
  final String? align;

  /// (Highcharts, Highstock, Gantt) Vertical alignment of the label.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) Horizontal offset of the label, in pixels.
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical offset of the label, in pixels.
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
