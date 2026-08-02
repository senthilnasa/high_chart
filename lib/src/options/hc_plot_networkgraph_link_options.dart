part of 'hc_options.dart';

/// (Highcharts) Link style options
class HCPlotNetworkgraphLinkOptions implements HCOption {
  const HCPlotNetworkgraphLinkOptions({
    this.color,
    this.dashStyle,
    this.opacity,
    this.width,
  });

  /// (Highcharts) Color of the link between two nodes.
  final String? color;

  /// (Highcharts) A name for the dash style to use for links.
  final String? dashStyle;

  /// (Highcharts) Opacity of the link between two nodes.
  final num? opacity;

  /// (Highcharts) Width (px) of the link between two nodes.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (opacity != null) {
      json["opacity"] = opacity;
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
