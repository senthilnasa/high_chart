part of 'hc_options.dart';

/// A latitude/longitude object.
class HCMapLonLatObject implements HCOption {
  const HCMapLonLatObject({
    this.lat,
    this.lon,
  });

  /// The latitude.
  final num? lat;

  /// The longitude.
  final num? lon;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (lat != null) {
      json["lat"] = lat;
    }
    if (lon != null) {
      json["lon"] = lon;
    }
    return json;
  }
}
