part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of Percentage Price Oscillator
class HCPlotPpoParamsOptions implements HCOption {
  const HCPlotPpoParamsOptions({
    this.index,
    this.period,
    this.periods,
  });

  /// (Highstock) The point index which indicator calculations will base.
  final num? index;

  final String? period;

  /// (Highstock) Periods for Percentage Price Oscillator calculations.
  final List<num>? periods;

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
    return json;
  }
}
