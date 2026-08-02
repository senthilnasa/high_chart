part of 'hc_options.dart';

/// (Highstock, Gantt) The axis title, showing next to the axis line.
class HCNavigatorYAxisTitleOptions implements HCOption {
  const HCNavigatorYAxisTitleOptions({
    this.align,
    this.margin,
    this.offset,
    this.reserveSpace,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) Alignment of the title relative to the axis values.
  final String? align;

  /// (Highstock, Gantt) The pixel distance between the axis labels and the
  final num? margin;

  /// (Highstock, Gantt) The distance from the plot area to the axis line. A
  final dynamic offset;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title
  final dynamic reserveSpace;

  /// (Highstock, Gantt) The rotation of the text in degrees. 0 is horizontal,
  final num? rotation;

  /// (Highstock, Gantt) CSS styles for the title. If the title text is longer
  final dynamic style;

  /// (Highcharts, Highstock, Gantt) The actual text of the axis title.
  final String? text;

  /// (Highstock, Gantt) Alignment of the text, can be `"left"`, `"right"` or
  final String? textAlign;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the axis
  final dynamic useHTML;

  /// (Highcharts, Highstock, Gantt) Horizontal pixel offset of the title
  final num? x;

  /// (Highcharts, Highstock, Gantt) Vertical pixel offset of the title
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (offset != null) {
      json["offset"] = hcJsonValue(offset);
    }
    if (reserveSpace != null) {
      json["reserveSpace"] = hcJsonValue(reserveSpace);
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
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
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
