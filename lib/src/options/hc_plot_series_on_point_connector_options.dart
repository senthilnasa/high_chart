part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the connector in the
class HCPlotSeriesOnPointConnectorOptions implements HCOption {
  const HCPlotSeriesOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A name for the dash style to
  final String? dashstyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color of the connector line.
  final String? stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) Pixel width of the connector
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
