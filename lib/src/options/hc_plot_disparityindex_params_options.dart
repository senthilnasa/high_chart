part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotDisparityindexParamsOptions implements HCOption {
  const HCPlotDisparityindexParamsOptions({
    this.average,
    this.index,
    this.period,
  });

  /// (Highstock) The average used to calculate the Disparity Index
  final String? average;

  /// (Highstock) The point index which indicator calculations will base.
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (average != null) {
      json["average"] = average;
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
