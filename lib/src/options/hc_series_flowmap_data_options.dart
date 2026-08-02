part of 'hc_options.dart';

/// (Highmaps) An array of data points for the series. For the `flowmap`
class HCSeriesFlowmapDataOptions implements HCOption {
  const HCSeriesFlowmapDataOptions({
    this.curveFactor,
    this.fillColor,
    this.fillOpacity,
    this.from,
    this.growTowards,
    this.lineWidth,
    this.markerEnd,
    this.opacity,
    this.to,
    this.weight,
  });

  /// (Highmaps) A `curveFactor` with a higher value than 0 will curve the
  final num? curveFactor;

  /// (Highmaps) The fill color of an individual link.
  final dynamic fillColor;

  /// (Highmaps) The opacity of the link color fill.
  final num? fillOpacity;

  /// (Highmaps) ID referencing a map point holding coordinates of the link
  final dynamic from;

  /// (Highmaps) If set to `true`, the line will grow towards its end.
  final dynamic growTowards;

  /// (Highmaps) Specify the `lineWidth` of the link.
  final num? lineWidth;

  /// (Highmaps) Specifying a `markerEnd` here will create an arrow symbol
  final HCSeriesFlowmapDataMarkerEndOptions? markerEnd;

  /// (Highmaps) The opacity of an individual link.
  final num? opacity;

  /// (Highmaps) ID referencing a map point holding coordinates of the link
  final dynamic to;

  /// (Highmaps) The weight of a link determines its thickness compared to
  final num? weight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (curveFactor != null) {
      json["curveFactor"] = curveFactor;
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (fillOpacity != null) {
      json["fillOpacity"] = fillOpacity;
    }
    if (from != null) {
      json["from"] = hcJsonValue(from);
    }
    if (growTowards != null) {
      json["growTowards"] = hcJsonValue(growTowards);
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (markerEnd != null) {
      json["markerEnd"] = markerEnd!.toJson();
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (to != null) {
      json["to"] = hcJsonValue(to);
    }
    if (weight != null) {
      json["weight"] = weight;
    }
    return json;
  }
}
