part of 'hc_options.dart';

/// (Highstock) A label on the axis next to the crosshair.
class HCAxisCrosshairLabelOptions implements HCOption {
  const HCAxisCrosshairLabelOptions({
    this.align,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.enabled,
    this.format,
    this.padding,
    this.shape,
    this.style,
  });

  /// (Highstock) Alignment of the label compared to the axis. Defaults to
  final String? align;

  /// (Highstock) The background color for the label. Defaults to the related
  final dynamic backgroundColor;

  /// (Highstock) The border color for the crosshair label
  final dynamic borderColor;

  /// (Highstock) The border corner radius of the crosshair label.
  final num? borderRadius;

  /// (Highstock) The border width for the crosshair label.
  final num? borderWidth;

  /// (Highstock) Flag to enable crosshair's label.
  final dynamic enabled;

  /// (Highstock) A format string for the crosshair label. Defaults to
  final String? format;

  /// (Highstock) Padding inside the crosshair label.
  final num? padding;

  /// (Highstock) The shape to use for the label box.
  final String? shape;

  /// (Highstock) Text styles for the crosshair label.
  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
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
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (format != null) {
      json["format"] = format;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
