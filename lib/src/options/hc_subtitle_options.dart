part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The chart's subtitle. This can be
class HCSubtitleOptions implements HCOption {
  const HCSubtitleOptions({
    this.align,
    this.floating,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the subtitle is floating,
  final dynamic floating;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the title.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The subtitle of the chart.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the subtitle
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the subtitle
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
