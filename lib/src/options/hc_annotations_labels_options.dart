part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) An array of labels for the
class HCAnnotationsLabelsOptions implements HCOption {
  const HCAnnotationsLabelsOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.controlPoints,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.point,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for an
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) The alignment of the
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for styling by CSS.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) The array of control points.
  final dynamic controlPoints;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide the annotation's
  final dynamic crop;

  /// (Highcharts, Highstock, Highmaps, Gantt) The label's pixel distance from
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether all the labels for an
  final dynamic includeInDataExport;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle the annotation's
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the borderWidth or
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) This option defines the point to
  final dynamic point;

  /// (Highcharts, Highstock, Highmaps, Gantt) The shadow of the box. The
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the annotation's
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alias for the format option.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (align != null) {
      json["align"] = align;
    }
    if (allowOverlap != null) {
      json["allowOverlap"] = hcJsonValue(allowOverlap);
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (controlPoints != null) {
      json["controlPoints"] = hcJsonValue(controlPoints);
    }
    if (crop != null) {
      json["crop"] = hcJsonValue(crop);
    }
    if (distance != null) {
      json["distance"] = distance;
    }
    if (format != null) {
      json["format"] = format;
    }
    if (includeInDataExport != null) {
      json["includeInDataExport"] = hcJsonValue(includeInDataExport);
    }
    if (overflow != null) {
      json["overflow"] = overflow;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (point != null) {
      json["point"] = hcJsonValue(point);
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (style != null) {
      json["style"] = style!.toJson();
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
