part of 'hc_options.dart';

class HCPlotTreegraphLinkOptions implements HCOption {
  const HCPlotTreegraphLinkOptions({
    this.bendAt,
    this.color,
    this.cursor,
    this.curveFactor,
    this.lineWidth,
    this.radius,
    this.type,
  });

  /// (Highcharts) For the orthogonal link type, this defines how far down the
  final dynamic bendAt;

  /// (Highcharts) The color of the links between nodes.
  final String? color;

  final String? cursor;

  /// (Highcharts) Modifier of the shape of the curved link. Works best for
  final num? curveFactor;

  /// (Highcharts) The line width of the links connecting nodes, in pixels.
  final num? lineWidth;

  /// (Highcharts) Radius for the rounded corners of the links between nodes.
  final num? radius;

  /// (Highcharts) Type of the link shape.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bendAt != null) {
      json["bendAt"] = hcJsonValue(bendAt);
    }
    if (color != null) {
      json["color"] = color;
    }
    if (cursor != null) {
      json["cursor"] = cursor;
    }
    if (curveFactor != null) {
      json["curveFactor"] = curveFactor;
    }
    if (lineWidth != null) {
      json["lineWidth"] = lineWidth;
    }
    if (radius != null) {
      json["radius"] = radius;
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
