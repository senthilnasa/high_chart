part of 'hc_options.dart';

/// (Highmaps) Generic options for the placement and appearance of map insets
class HCMapViewInsetOptions implements HCOption {
  const HCMapViewInsetOptions({
    this.borderColor,
    this.borderWidth,
    this.padding,
    this.relativeTo,
    this.units,
  });

  /// (Highmaps) The border color of the insets.
  final dynamic borderColor;

  /// (Highmaps) The pixel border width of the insets.
  final num? borderWidth;

  /// (Highmaps) The padding of the insets. Can be either a number of pixels, a
  final dynamic padding;

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
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (padding != null) {
      json["padding"] = hcJsonValue(padding);
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
