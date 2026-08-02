part of 'hc_options.dart';

/// (Highcharts, Highstock) A collection of options for different series states.
class HCSeriesStatesOptionsObject implements HCOption {
  const HCSeriesStatesOptionsObject({
    this.hover,
    this.inactive,
    this.normal,
    this.select,
  });

  /// (Highcharts, Highstock) Options for the hovered series. These settings
  final dynamic hover;

  /// (Highcharts, Highstock) The opposite state of a hover for series.
  final HCSeriesStatesInactiveOptionsObject? inactive;

  /// (Highcharts, Highstock) The normal state of a series, or for point items
  final HCSeriesStatesNormalOptionsObject? normal;

  /// (Highcharts, Highstock) Specific options for point in selected states,
  final HCSeriesStatesSelectOptionsObject? select;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json["hover"] = hcJsonValue(hover);
    }
    if (inactive != null) {
      json["inactive"] = inactive!.toJson();
    }
    if (normal != null) {
      json["normal"] = normal!.toJson();
    }
    if (select != null) {
      json["select"] = select!.toJson();
    }
    return json;
  }
}
