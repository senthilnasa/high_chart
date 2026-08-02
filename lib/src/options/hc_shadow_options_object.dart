part of 'hc_options.dart';

/// The shadow options.
class HCShadowOptionsObject implements HCOption {
  const HCShadowOptionsObject({
    this.color,
    this.offsetX,
    this.offsetY,
    this.opacity,
    this.width,
  });

  /// The shadow color.
  final String? color;

  /// The horizontal offset from the element.
  final num? offsetX;

  /// The vertical offset from the element.
  final num? offsetY;

  /// The shadow opacity.
  final num? opacity;

  /// The shadow width or distance from the element.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (offsetX != null) {
      json["offsetX"] = offsetX;
    }
    if (offsetY != null) {
      json["offsetY"] = offsetY;
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
