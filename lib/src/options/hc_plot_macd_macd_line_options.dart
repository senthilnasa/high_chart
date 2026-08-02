part of 'hc_options.dart';

/// (Highstock) The styles for macd line
class HCPlotMacdMacdLineOptions implements HCOption {
  const HCPlotMacdMacdLineOptions({
    this.styles,
    this.zones,
  });

  final HCPlotMacdMacdLineStylesOptions? styles;

  /// (Highcharts, Highstock) An array defining zones within a series.
  final List<HCSeriesZonesOptionsObject>? zones;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (styles != null) {
      json["styles"] = styles!.toJson();
    }
    if (zones != null) {
      json["zones"] = zones!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
