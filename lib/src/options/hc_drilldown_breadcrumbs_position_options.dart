part of 'hc_options.dart';

/// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs
class HCDrilldownBreadcrumbsPositionOptions implements HCOption {
  const HCDrilldownBreadcrumbsPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) Horizontal alignment of the breadcrumbs buttons.
  final String? align;

  /// (Highcharts, Highmaps) Vertical alignment of the breadcrumbs buttons.
  final String? verticalAlign;

  /// (Highcharts, Highmaps) The X offset of the breadcrumbs button group.
  final num? x;

  /// (Highcharts, Highmaps) The Y offset of the breadcrumbs button group. When
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
