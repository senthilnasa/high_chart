part of 'hc_options.dart';

/// (Highstock) A label on the axis next to the crosshair.
class HCSeriesLastPriceLabelOptionsObject implements HCOption {
  const HCSeriesLastPriceLabelOptionsObject({
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

  /// (Highstock) The border color of `lastPrice` label.
  final dynamic borderColor;

  /// (Highstock) The border radius of `lastPrice` label.
  final num? borderRadius;

  /// (Highstock) The border width for the `lastPrice` label.
  final num? borderWidth;

  /// (Highstock) Flag to enable `lastPrice` label.
  final dynamic enabled;

  /// (Highstock) A format string for the `lastPrice` label. Defaults to
  final String? format;

  /// (Highstock) Padding inside the `lastPrice` label.
  final num? padding;

  /// (Highstock) The shape to use for the label box.
  final String? shape;

  /// (Highstock) Text styles for the `lastPrice` label.
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
