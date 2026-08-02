part of 'hc_options.dart';

/// (Highmaps) For map and mapline series types, the geometry of a point.
class HCSeriesMaplineDataGeometryOptions implements HCOption {
  const HCSeriesMaplineDataGeometryOptions({
    this.coordinates,
    this.type,
  });

  /// (Highmaps) The geometry coordinates in terms of arrays of
  final dynamic coordinates;

  /// (Highmaps) The geometry type. Can be one of `LineString`, `Polygon`,
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (coordinates != null) {
      json["coordinates"] = hcJsonValue(coordinates);
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
