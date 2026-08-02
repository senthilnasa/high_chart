part of 'hc_options.dart';

/// (Highcharts) Link Styling options
class HCPlotOrganizationLinkOptions implements HCOption {
  const HCPlotOrganizationLinkOptions({
    this.color,
    this.lineWidth,
    this.radius,
    this.type,
  });

  /// (Highcharts) The color of the links between nodes.
  final String? color;

  /// (Highcharts) The line width of the links connecting nodes, in pixels.
  final num? lineWidth;

  /// (Highcharts) Radius for the rounded corners of the links between nodes.
  final num? radius;

  /// (Highcharts) Type of the link shape.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
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
