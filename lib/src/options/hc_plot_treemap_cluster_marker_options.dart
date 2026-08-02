part of 'hc_options.dart';

class HCPlotTreemapClusterMarkerOptions implements HCOption {
  const HCPlotTreemapClusterMarkerOptions({
    this.lineWidth,
    this.radius,
  });

  final num? lineWidth;

  final num? radius;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (radius != null) {
      json["radius"] = radius;
    }
    return json;
  }
}
