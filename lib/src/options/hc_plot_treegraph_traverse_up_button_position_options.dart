part of 'hc_options.dart';

/// (Highcharts) The position of the button.
class HCPlotTreegraphTraverseUpButtonPositionOptions implements HCOption {
  const HCPlotTreegraphTraverseUpButtonPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts) Horizontal alignment of the button.
  final String? align;

  /// (Highcharts) Vertical alignment of the button.
  final String? verticalAlign;

  /// (Highcharts) Horizontal offset of the button.
  final num? x;

  /// (Highcharts) Vertical offset of the button.
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
