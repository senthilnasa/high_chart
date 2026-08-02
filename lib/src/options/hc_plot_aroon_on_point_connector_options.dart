part of 'hc_options.dart';

/// (Highstock) Options for the connector in the _Series on point_ feature.
class HCPlotAroonOnPointConnectorOptions implements HCOption {
  const HCPlotAroonOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highstock) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highstock) Color of the connector line. By default it's the series'
  final String? stroke;

  /// (Highstock) Pixel width of the connector line.
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashstyle != null) {
      json["dashstyle"] = dashstyle;
    }
    if (stroke != null) {
      json["stroke"] = stroke;
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
