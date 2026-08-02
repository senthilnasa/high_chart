part of 'hc_options.dart';

/// A style object with camel case property names to define visual appearance of
class HCCSSObject implements HCOption {
  const HCCSSObject({
    this.background,
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.color,
    this.cursor,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.lineClamp,
    this.lineWidth,
    this.opacity,
    this.padding,
    this.pointerEvents,
    this.position,
    this.textAlign,
    this.textDecoration,
    this.textOutline,
    this.textOverflow,
    this.top,
    this.transition,
    this.whiteSpace,
    this.width,
  });

  /// Background style for the element.
  final String? background;

  /// Background color of the element.
  final String? backgroundColor;

  /// Border style for the element.
  final String? border;

  /// Radius of the element border.
  final String? borderRadius;

  /// Color used in the element. The 'contrast' option is a Highcharts custom
  final String? color;

  /// Style of the mouse cursor when resting over the element.
  final String? cursor;

  /// Font family of the element text. Multiple values have to be in decreasing
  final String? fontFamily;

  /// Font size of the element text.
  final dynamic fontSize;

  /// Font weight of the element text.
  final String? fontWeight;

  /// Height of the element.
  final num? height;

  /// The maximum number of lines. If lines are cropped away, an ellipsis will
  final num? lineClamp;

  /// Width of the element border.
  final num? lineWidth;

  /// Opacity of the element.
  final num? opacity;

  /// Space around the element content.
  final String? padding;

  /// Behavior of the element when the mouse cursor rests over it.
  final String? pointerEvents;

  /// Positioning of the element.
  final String? position;

  /// Alignment of the element text.
  final String? textAlign;

  /// Additional decoration of the element text.
  final String? textDecoration;

  /// Outline style of the element text.
  final String? textOutline;

  /// Line break style of the element text. Highcharts SVG elements support
  final String? textOverflow;

  /// Top spacing of the element relative to the parent element.
  final String? top;

  /// Animated transition of selected element properties.
  final String? transition;

  /// Line break style of the element text.
  final String? whiteSpace;

  /// Width of the element.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json["background"] = background;
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = backgroundColor;
    }
    if (border != null) {
      json["border"] = border;
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (color != null) {
      json["color"] = color;
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (fontFamily != null) {
      json["fontFamily"] = fontFamily;
    }
    if (fontSize != null) {
      json["fontSize"] = hcJsonValue(fontSize);
    }
    if (fontWeight != null) {
      json["fontWeight"] = fontWeight;
    }
    if (height != null) {
      json["height"] = height;
    }
    if (lineClamp != null) {
      json["lineClamp"] = lineClamp;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (pointerEvents != null) {
      json["pointerEvents"] = pointerEvents;
    }
    if (position != null) {
      json["position"] = position;
    }
    if (textAlign != null) {
      json["textAlign"] = textAlign;
    }
    if (textDecoration != null) {
      json["textDecoration"] = textDecoration;
    }
    if (textOutline != null) {
      json["textOutline"] = textOutline;
    }
    if (textOverflow != null) {
      json["textOverflow"] = textOverflow;
    }
    if (top != null) {
      json["top"] = top;
    }
    if (transition != null) {
      json["transition"] = transition;
    }
    if (whiteSpace != null) {
      json["whiteSpace"] = whiteSpace;
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
