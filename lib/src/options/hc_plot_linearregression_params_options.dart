part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotLinearregressionParamsOptions implements HCOption {
  const HCPlotLinearregressionParamsOptions({
    this.index,
    this.period,
    this.xAxisUnit,
  });

  /// (Highstock) The point index which indicator calculations will base.
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  /// (Highstock) Unit (in milliseconds) for the x axis distances used to
  final num? xAxisUnit;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    if (xAxisUnit != null) {
      json["xAxisUnit"] = xAxisUnit;
    }
    return json;
  }
}
