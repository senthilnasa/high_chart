part of 'hc_options.dart';

class HCDefsArrowAttributesOptions implements HCOption {
  const HCDefsArrowAttributesOptions({
    this.id,
    this.markerHeight,
    this.markerWidth,
    this.refX,
    this.refY,
  });

  final String? id;

  final num? markerHeight;

  final num? markerWidth;

  final num? refX;

  final num? refY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json["id"] = id;
    }
    if (markerHeight != null) {
      json["markerHeight"] = markerHeight;
    }
    if (markerWidth != null) {
      json["markerWidth"] = markerWidth;
    }
    if (refX != null) {
      json["refX"] = refX;
    }
    if (refY != null) {
      json["refY"] = refY;
    }
    return json;
  }
}
