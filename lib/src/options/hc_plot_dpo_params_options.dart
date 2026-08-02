part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of Detrended Price Oscillator
class HCPlotDpoParamsOptions implements HCOption {
  const HCPlotDpoParamsOptions({
    this.index,
    this.period,
  });

  /// (Highstock) The point index which indicator calculations will base.
  final num? index;

  /// (Highstock) Period for Detrended Price Oscillator
  final num? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    return json;
  }
}
