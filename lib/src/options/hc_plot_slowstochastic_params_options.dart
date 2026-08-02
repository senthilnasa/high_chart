part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotSlowstochasticParamsOptions implements HCOption {
  const HCPlotSlowstochasticParamsOptions({
    this.index,
    this.period,
    this.periods,
  });

  final String? index;

  final String? period;

  /// (Highstock) Periods for Slow Stochastic oscillator: [%K, %D, SMA(%D)].
  final dynamic periods;

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
      json["periods"] = hcJsonValue(periods);
    }
    return json;
  }
}
