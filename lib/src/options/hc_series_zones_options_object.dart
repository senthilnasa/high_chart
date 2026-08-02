part of 'hc_options.dart';

/// (Highcharts, Highstock) An array defining zones within a series. Zones can be
class HCSeriesZonesOptionsObject implements HCOption {
  const HCSeriesZonesOptionsObject({
    this.className,
    this.color,
    this.dashStyle,
    this.fillColor,
    this.value,
  });

  /// (Highcharts, Highstock) Styled mode only. A custom class name for the
  final String? className;

  /// (Highcharts, Highstock) Defines the color of the series.
  final dynamic color;

  /// (Highcharts, Highstock) A name for the dash style to use for the graph.
  final String? dashStyle;

  /// (Highcharts, Highstock) Defines the fill color for the series (in area
  final dynamic fillColor;

  /// (Highcharts, Highstock) The value up to where the zone extends, if
  final num? value;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (dashStyle != null) {
      json["dashStyle"] = dashStyle;
    }
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    if (value != null) {
      json["value"] = value;
    }
    return json;
  }
}
