part of 'hc_options.dart';

/// (Highmaps) The individual MapView insets, typically used for non-contiguous
class HCMapViewInsetsOptions implements HCOption {
  const HCMapViewInsetsOptions({
    this.borderColor,
    this.borderPath,
    this.borderWidth,
    this.field,
    this.geoBounds,
    this.id,
    this.padding,
    this.projection,
    this.relativeTo,
    this.units,
  });

  /// (Highmaps) The border color of the insets.
  final dynamic borderColor;

  /// (Highmaps) A geometry object of type `MultiLineString` defining the
  final dynamic borderPath;

  /// (Highmaps) The pixel border width of the insets.
  final num? borderWidth;

  /// (Highmaps) A geometry object of type `Polygon` defining where in the
  final dynamic field;

  /// (Highmaps) A geometry object of type `Polygon` encircling the shapes that
  final dynamic geoBounds;

  /// (Highmaps) The id of the inset, used for internal reference.
  final String? id;

  /// (Highmaps) The padding of the insets. Can be either a number of pixels, a
  final dynamic padding;

  /// (Highmaps) The projection options for the inset.
  final dynamic projection;

  /// (Highmaps) What coordinate system the `field` and `borderPath` should
  final String? relativeTo;

  /// (Highmaps) What units to use for the `field` and `borderPath` geometries.
  final String? units;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderPath != null) {
      json["borderPath"] = hcJsonValue(borderPath);
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (field != null) {
      json["field"] = hcJsonValue(field);
    }
    if (geoBounds != null) {
      json["geoBounds"] = hcJsonValue(geoBounds);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (padding != null) {
      json["padding"] = hcJsonValue(padding);
    }
    if (projection != null) {
      json["projection"] = hcJsonValue(projection);
    }
    if (relativeTo != null) {
      json["relativeTo"] = relativeTo;
    }
    if (units != null) {
      json["units"] = units;
    }
    return json;
  }
}
