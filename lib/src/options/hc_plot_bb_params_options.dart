part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of the regression points.
class HCPlotBbParamsOptions implements HCOption {
  const HCPlotBbParamsOptions({
    this.index,
    this.period,
    this.standardDeviation,
  });

  /// (Highstock) The point index which indicator calculations will base. For
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  /// (Highstock) Standard deviation for top and bottom bands.
  final num? standardDeviation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    if (standardDeviation != null) {
      json["standardDeviation"] = standardDeviation;
    }
    return json;
  }
}
