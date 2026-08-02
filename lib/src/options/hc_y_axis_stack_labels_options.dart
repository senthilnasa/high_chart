part of 'hc_options.dart';

/// (Highcharts) The stack labels show the total value for each bar in a stacked
class HCYAxisStackLabelsOptions implements HCOption {
  const HCYAxisStackLabelsOptions({
    this.align,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.crop,
    this.enabled,
    this.format,
    this.overflow,
    this.rotation,
    this.style,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts) Defines the horizontal alignment of the stack total label.
  final String? align;

  /// (Highcharts) Allow the stack labels to overlap.
  final dynamic allowOverlap;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts) The background color or gradient for the stack label.
  final dynamic backgroundColor;

  /// (Highcharts) The border color for the stack label. Defaults to
  final dynamic borderColor;

  /// (Highcharts) The border radius in pixels for the stack label.
  final num? borderRadius;

  /// (Highcharts) The border width in pixels for the stack label.
  final num? borderWidth;

  /// (Highcharts) Whether to hide stack labels that are outside the plot area.
  final dynamic crop;

  /// (Highcharts) Enable or disable the stack total labels.
  final dynamic enabled;

  /// (Highcharts, Highstock) A format string for the data label. Available
  final String? format;

  /// (Highcharts) How to handle stack total labels that flow outside the plot
  final String? overflow;

  /// (Highcharts) Rotation of the labels in degrees.
  final num? rotation;

  /// (Highcharts) CSS styles for the label.
  final dynamic style;

  /// (Highcharts) The text alignment for the label. While `align` determines
  final String? textAlign;

  /// (Highcharts, Highstock) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Highcharts) Defines the vertical alignment of the stack total label. Can
  final String? verticalAlign;

  /// (Highcharts) The x position offset of the label relative to the left of
  final num? x;

  /// (Highcharts) The y position offset of the label relative to the tick
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
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
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
    if (crop != null) {
      json["crop"] = hcJsonValue(crop);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (format != null) {
      json["format"] = format;
    }
    if (overflow != null) {
      json["overflow"] = overflow;
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
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
