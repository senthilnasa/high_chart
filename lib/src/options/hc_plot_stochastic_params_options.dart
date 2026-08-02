part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotStochasticParamsOptions implements HCOption {
  const HCPlotStochasticParamsOptions({
    this.index,
    this.period,
    this.periods,
  });

  final String? index;

  final String? period;

  /// (Highstock) Periods for Stochastic oscillator: [%K, %D].
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
