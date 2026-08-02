part of 'hc_options.dart';

/// (Highmaps) The projection options allow applying client side projection to a
class HCMapViewProjectionOptions implements HCOption {
  const HCMapViewProjectionOptions({
    this.name,
    this.parallels,
    this.rotation,
  });

  /// (Highmaps) Projection name. Built-in projections are `EqualEarth`,
  final String? name;

  /// (Highmaps) The two standard parallels that define the map layout in conic
  final List<num>? parallels;

  /// (Highmaps) Rotation of the projection in terms of degrees `[lambda, phi,
  final dynamic rotation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (name != null) {
      json["name"] = name;
    }
    if (parallels != null) {
      json["parallels"] = parallels;
    }
    if (rotation != null) {
      json["rotation"] = hcJsonValue(rotation);
    }
    return json;
  }
}
