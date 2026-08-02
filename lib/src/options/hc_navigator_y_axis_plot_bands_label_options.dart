part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Text labels for the plot bands
class HCNavigatorYAxisPlotBandsLabelOptions implements HCOption {
  const HCNavigatorYAxisPlotBandsLabelOptions({
    this.align,
    this.allowOverlap,
    this.inside,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Gantt) Horizontal alignment of the label. Can be
  final String? align;

  /// (Highcharts, Highstock, Gantt) Whether or not the label can be hidden if
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Gantt) Wether or not the text of the label can
  final dynamic inside;

  /// (Highcharts, Highstock, Gantt) Rotation of the text label in degrees .
  final num? rotation;

  /// (Highcharts, Highstock, Gantt) CSS styles for the text label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) The string text itself. A subset of HTML
  final String? text;

  /// (Highcharts, Highstock, Gantt) The text alignment for the label. While
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Highcharts, Highstock, Gantt) Vertical alignment of the label relative
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) Horizontal position relative the
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical position of the text baseline
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (allowOverlap != null) {
      json["allowOverlap"] = hcJsonValue(allowOverlap);
    }
    if (inside != null) {
      json["inside"] = hcJsonValue(inside);
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (text != null) {
      json["text"] = text;
    }
    if (textAlign != null) {
      json["textAlign"] = textAlign;
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
