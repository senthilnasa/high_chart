part of 'hc_options.dart';

/// (Highmaps) The geometry of a point.
class HCSeriesMapbubbleDataGeometryOptions implements HCOption {
  const HCSeriesMapbubbleDataGeometryOptions({
    this.coordinates,
    this.type,
  });

  /// (Highmaps) The geometry coordinates in terms of `[longitude, latitude]`.
  final List<num>? coordinates;

  /// (Highmaps) The geometry type, which in case of the `mappoint` series is
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (coordinates != null) {
      json["coordinates"] = coordinates;
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
