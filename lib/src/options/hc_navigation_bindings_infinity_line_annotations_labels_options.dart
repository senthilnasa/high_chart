part of 'hc_options.dart';

/// (Highstock) An array of labels for the annotation. For options that apply to
class HCNavigationBindingsInfinityLineAnnotationsLabelsOptions
    implements HCOption {
  const HCNavigationBindingsInfinityLineAnnotationsLabelsOptions({
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

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make
  final dynamic allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) The array of control points.
  final dynamic controlPoints;

  /// (Highstock) Whether to hide the annotation's label that is outside the
  final dynamic crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the
  final dynamic includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set,
  final num? padding;

  /// (Highstock) This option defines the point to which the label will be
  final dynamic point;

  /// (Highstock) The shadow of the box. The shadow can be an object
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final dynamic useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point.
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
