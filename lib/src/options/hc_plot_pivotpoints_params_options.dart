part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotPivotpointsParamsOptions implements HCOption {
  const HCPlotPivotpointsParamsOptions({
    this.algorithm,
    this.index,
    this.period,
  });

  /// (Highstock) Algorithm used to calculate resistance and support lines
  final String? algorithm;

  final String? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (algorithm != null) {
      json["algorithm"] = algorithm;
    }
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    return json;
  }
}
