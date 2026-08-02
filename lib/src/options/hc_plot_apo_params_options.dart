part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of Absolute Price Oscillator
class HCPlotApoParamsOptions implements HCOption {
  const HCPlotApoParamsOptions({
    this.index,
    this.period,
    this.periods,
  });

  /// (Highstock) The point index which indicator calculations will base. For
  final num? index;

  final String? period;

  /// (Highstock) Periods for Absolute Price Oscillator calculations.
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
