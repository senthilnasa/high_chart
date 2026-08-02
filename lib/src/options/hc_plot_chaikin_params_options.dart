part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of Chaikin Oscillator series
class HCPlotChaikinParamsOptions implements HCOption {
  const HCPlotChaikinParamsOptions({
    this.index,
    this.period,
    this.periods,
    this.volumeSeriesID,
  });

  final String? index;

  /// (Highstock) Parameter used indirectly for calculating the `AD`
  final num? period;

  /// (Highstock) Periods for Chaikin Oscillator calculations.
  final List<num>? periods;

  /// (Highstock) The id of volume series which is mandatory. For example
  final String? volumeSeriesID;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    if (periods != null) {
      json["periods"] = periods;
    }
    if (volumeSeriesID != null) {
      json["volumeSeriesID"] = volumeSeriesID;
    }
    return json;
  }
}
