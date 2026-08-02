part of 'hc_options.dart';

/// (Highcharts) Options for the connector in the _Series on point_ feature.
class HCPlotBarOnPointConnectorOptions implements HCOption {
  const HCPlotBarOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts) A name for the dash style to use for the connector.
  final String? dashstyle;

  /// (Highcharts) Color of the connector line. By default it's the series'
  final String? stroke;

  /// (Highcharts) Pixel width of the connector line.
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
