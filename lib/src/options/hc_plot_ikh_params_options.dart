part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotIkhParamsOptions implements HCOption {
  const HCPlotIkhParamsOptions({
    this.index,
    this.period,
    this.periodSenkouSpanB,
    this.periodTenkan,
  });

  final String? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  /// (Highstock) The base period for Senkou Span B calculations
  final num? periodSenkouSpanB;

  /// (Highstock) The base period for Tenkan calculations.
  final num? periodTenkan;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    if (periodSenkouSpanB != null) {
      json["periodSenkouSpanB"] = periodSenkouSpanB;
    }
    if (periodTenkan != null) {
      json["periodTenkan"] = periodTenkan;
    }
    return json;
  }
}
