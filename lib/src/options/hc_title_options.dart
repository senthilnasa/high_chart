part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The chart's main title.
class HCTitleOptions implements HCOption {
  const HCTitleOptions({
    this.align,
    this.floating,
    this.margin,
    this.minScale,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the title is floating, the
  final dynamic floating;

  /// (Highcharts, Highstock, Highmaps, Gantt) The margin between the title and
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the title is too wide to
  final num? minScale;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title. Use
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The title of the chart. To
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the title
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the title
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (floating != null) {
      json["floating"] = hcJsonValue(floating);
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (minScale != null) {
      json["minScale"] = minScale;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (text != null) {
      json["text"] = text;
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
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
