part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of Supertrend indicator series
class HCPlotSupertrendParamsOptions implements HCOption {
  const HCPlotSupertrendParamsOptions({
    this.index,
    this.multiplier,
    this.period,
  });

  final String? index;

  /// (Highstock) Multiplier for Supertrend Indicator.
  final num? multiplier;

  /// (Highstock) The base period for indicator Supertrend Indicator
  final num? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (multiplier != null) {
      json["multiplier"] = multiplier;
    }
    if (period != null) {
      json["period"] = period;
    }
    return json;
  }
}
