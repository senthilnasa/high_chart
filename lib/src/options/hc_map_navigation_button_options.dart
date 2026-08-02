part of 'hc_options.dart';

/// (Highmaps) General options for the map navigation buttons. Individual options
class HCMapNavigationButtonOptions implements HCOption {
  const HCMapNavigationButtonOptions({
    this.align,
    this.alignTo,
    this.height,
    this.padding,
    this.style,
    this.theme,
    this.verticalAlign,
    this.width,
    this.x,
  });

  /// (Highmaps) The alignment of the navigation buttons.
  final String? align;

  /// (Highmaps) What box to align the buttons to. Possible values are
  final String? alignTo;

  /// (Highmaps) The pixel height of the map navigation buttons.
  final num? height;

  /// (Highmaps) Padding for the navigation buttons.
  final num? padding;

  /// (Highmaps) Text styles for the map navigation buttons.
  final HCCSSObject? style;

  /// (Highmaps) A configuration object for the button theme. The object
  final HCSVGAttributes? theme;

  /// (Highmaps) The vertical alignment of the buttons. Individual alignment
  final String? verticalAlign;

  /// (Highmaps) The width of the map navigation buttons.
  final num? width;

  /// (Highmaps) The X offset of the buttons relative to its `align` setting.
  final num? x;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (alignTo != null) {
      json["alignTo"] = alignTo;
    }
    if (height != null) {
      json["height"] = height;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (theme != null) {
      json["theme"] = theme!.toJson();
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
    }
    if (width != null) {
      json["width"] = width;
    }
    if (x != null) {
      json["x"] = x;
    }
    return json;
  }
}
