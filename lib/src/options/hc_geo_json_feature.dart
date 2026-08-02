part of 'hc_options.dart';

/// Data set of a geographic feature.
class HCGeoJSONFeature implements HCOption {
  const HCGeoJSONFeature({
    this.type,
  });

  /// Data type of the geographic feature.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
