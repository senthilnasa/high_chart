part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotRsiParamsOptions implements HCOption {
  const HCPlotRsiParamsOptions({
    this.decimals,
    this.index,
    this.period,
  });

  final num? decimals;

  /// (Highstock) The point index which indicator calculations will base.
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (decimals != null) {
      json["decimals"] = decimals;
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
