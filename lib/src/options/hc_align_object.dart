part of 'hc_options.dart';

/// Options to align the element relative to the chart or another box.
class HCAlignObject implements HCOption {
  const HCAlignObject({
    this.align,
    this.alignByTranslate,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// Horizontal alignment. Can be one of `left`, `center` and `right`.
  final String? align;

  /// Use the `transform` attribute with translateX and translateY custom
  final dynamic alignByTranslate;

  /// Vertical alignment. Can be one of `top`, `middle` and `bottom`.
  final String? verticalAlign;

  /// Horizontal pixel offset from alignment.
  final num? x;

  /// Vertical pixel offset from alignment.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (alignByTranslate != null) {
      json["alignByTranslate"] = hcJsonValue(alignByTranslate);
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
