part of 'hc_options.dart';

/// (Highmaps) Options for the zoom out button. Properties for the zoom in and
class HCMapNavigationButtonsZoomOutOptions implements HCOption {
  const HCMapNavigationButtonsZoomOutOptions({
    this.align,
    this.alignTo,
    this.height,
    this.onclick,
    this.padding,
    this.style,
    this.text,
    this.theme,
    this.verticalAlign,
    this.width,
    this.x,
    this.y,
  });

  /// (Highmaps) The alignment of the navigation buttons.
  final String? align;

  /// (Highmaps) What box to align the buttons to. Possible values are
  final String? alignTo;

  /// (Highmaps) The pixel height of the map navigation buttons.
  final num? height;

  /// (Highmaps) Click handler for the button.
  final dynamic onclick;

  /// (Highmaps) Padding for the navigation buttons.
  final num? padding;

  /// (Highmaps) Text styles for the map navigation buttons.
  final HCCSSObject? style;

  /// (Highmaps) The text for the button. The tooltip (title) is a language
  final String? text;

  /// (Highmaps) A configuration object for the button theme. The object
  final HCSVGAttributes? theme;

  /// (Highmaps) The vertical alignment of the buttons. Individual alignment
  final String? verticalAlign;

  /// (Highmaps) The width of the map navigation buttons.
  final num? width;

  /// (Highmaps) The X offset of the buttons relative to its `align` setting.
  final num? x;

  /// (Highmaps) The position of the zoomOut button relative to the vertical
  final num? y;

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
    if (onclick != null) {
      json["onclick"] = hcJsonValue(onclick);
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (text != null) {
      json["text"] = text;
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
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
