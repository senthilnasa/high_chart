part of 'hc_options.dart';

/// (Highcharts) Visually the parallel coordinates titles are done through
class HCChartParallelAxesTitleOptions implements HCOption {
  const HCChartParallelAxesTitleOptions({
    this.align,
    this.enabled,
    this.margin,
    this.offset,
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.x,
    this.y,
  });

  /// (Highcharts) Alignment of the title relative to the axis values. Possible
  final String? align;

  /// (Highcharts) Deprecated. Set the `text` to `undefined` to disable the
  final dynamic enabled;

  /// (Highcharts) The pixel distance between the axis labels and the title.
  final num? margin;

  /// (Highcharts) The distance from the plot area to the axis line. A positive
  final dynamic offset;

  /// (Highcharts) Defines how the title is repositioned according to the 3D
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the title
  final dynamic reserveSpace;

  /// (Highcharts) The rotation of the text in degrees. 0 is horizontal, 270 is
  final num? rotation;

  /// (Highcharts) If enabled, the axis title will skewed to follow the
  final dynamic skew3d;

  /// (Highcharts) CSS styles for the title. If the title text is longer than
  final dynamic style;

  /// (Highcharts, Highstock, Gantt) The actual text of the axis title.
  final String? text;

  /// (Highcharts) Alignment of the text, can be `"left"`, `"right"` or
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
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (offset != null) {
      json["offset"] = hcJsonValue(offset);
    }
    if (position3d != null) {
      json["position3d"] = position3d;
    }
    if (reserveSpace != null) {
      json["reserveSpace"] = hcJsonValue(reserveSpace);
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (skew3d != null) {
      json["skew3d"] = hcJsonValue(skew3d);
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
