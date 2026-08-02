part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options for the connector in the _Series on point_
class HCPlotPieOnPointConnectorOptions implements HCOption {
  const HCPlotPieOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts, Highmaps) A name for the dash style to use for the
  final String? dashstyle;

  /// (Highcharts, Highmaps) Color of the connector line. By default it's
  final String? stroke;

  /// (Highcharts, Highmaps) Pixel width of the connector line.
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
