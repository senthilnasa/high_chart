part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for the connector in the _Series on point_
class HCPlotVectorOnPointConnectorOptions implements HCOption {
  const HCPlotVectorOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts, Highstock) A name for the dash style to use for the
  final String? dashstyle;

  /// (Highcharts, Highstock) Color of the connector line. By default it's the
  final String? stroke;

  /// (Highcharts, Highstock) Pixel width of the connector line.
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
