part of 'hc_options.dart';

/// Represents the loose structure of a geographic JSON file.
class HCGeoJSON implements HCOption {
  const HCGeoJSON({
    this.copyright,
    this.copyrightShort,
    this.crs,
    this.features,
    this.title,
    this.type,
    this.version,
  });

  /// Full copyright note of the geographic data.
  final String? copyright;

  /// Short copyright note of the geographic data suitable for watermarks.
  final String? copyrightShort;

  /// Additional meta information based on the coordinate reference system.
  final HCDictionary? crs;

  /// Data sets of geographic features.
  final List<HCGeoJSONFeature>? features;

  /// Title of the geographic data.
  final String? title;

  /// Type of the geographic data. Type of an optimized map collection is
  final String? type;

  /// Version of the geographic data.
  final String? version;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (copyright != null) {
      json["copyright"] = copyright;
    }
    if (copyrightShort != null) {
      json["copyrightShort"] = copyrightShort;
    }
    if (crs != null) {
      json["crs"] = crs!.toJson();
    }
    if (features != null) {
      json["features"] = features!.map((e) => e.toJson()).toList();
    }
    if (title != null) {
      json["title"] = title;
    }
    if (type != null) {
      json["type"] = type;
    }
    if (version != null) {
      json["version"] = version;
    }
    return json;
  }
}
