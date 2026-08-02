part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotTrendlineParamsOptions implements HCOption {
  const HCPlotTrendlineParamsOptions({
    this.index,
    this.period,
  });

  /// (Highstock) The point index which indicator calculations will base. For
  final num? index;

  final String? period;

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
