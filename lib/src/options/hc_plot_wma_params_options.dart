part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotWmaParamsOptions implements HCOption {
  const HCPlotWmaParamsOptions({
    this.index,
    this.period,
  });

  /// (Highstock) The point index which indicator calculations will base. For
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the
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
