part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Options for the connector in the _Series on
class HCPlotXrangeOnPointConnectorOptions implements HCOption {
  const HCPlotXrangeOnPointConnectorOptions({
    this.dashstyle,
    this.stroke,
    this.width,
  });

  /// (Highcharts, Highstock, Gantt) A name for the dash style to use for the
  final String? dashstyle;

  /// (Highcharts, Highstock, Gantt) Color of the connector line. By default
  final String? stroke;

  /// (Highcharts, Highstock, Gantt) Pixel width of the connector line.
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
