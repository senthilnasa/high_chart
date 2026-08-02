part of 'hc_options.dart';

/// An object of key-value pairs for SVG attributes. Attributes in Highcharts
class HCSVGAttributes implements HCOption {
  const HCSVGAttributes({
    this.d,
    this.dx,
    this.dy,
    this.fill,
    this.inverted,
    this.matrix,
    this.rotation,
    this.rotationOriginX,
    this.rotationOriginY,
    this.scaleX,
    this.scaleY,
    this.stroke,
    this.style,
    this.translateX,
    this.translateY,
    this.zIndex,
  });

  final dynamic d;

  final num? dx;

  final num? dy;

  final dynamic fill;

  final dynamic inverted;

  final List<num>? matrix;

  final num? rotation;

  final num? rotationOriginX;

  final num? rotationOriginY;

  final num? scaleX;

  final num? scaleY;

  final dynamic stroke;

  final dynamic style;

  final num? translateX;

  final num? translateY;

  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (d != null) {
      json["d"] = hcJsonValue(d);
    }
    if (dx != null) {
      json["dx"] = dx;
    }
    if (dy != null) {
      json["dy"] = dy;
    }
    if (fill != null) {
      json["fill"] = hcJsonValue(fill);
    }
    if (inverted != null) {
      json["inverted"] = hcJsonValue(inverted);
    }
    if (matrix != null) {
      json["matrix"] = matrix;
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (rotationOriginX != null) {
      json["rotationOriginX"] = rotationOriginX;
    }
    if (rotationOriginY != null) {
      json["rotationOriginY"] = rotationOriginY;
    }
    if (scaleX != null) {
      json["scaleX"] = scaleX;
    }
    if (scaleY != null) {
      json["scaleY"] = scaleY;
    }
    if (stroke != null) {
      json["stroke"] = hcJsonValue(stroke);
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (translateX != null) {
      json["translateX"] = translateX;
    }
    if (translateY != null) {
      json["translateY"] = translateY;
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
