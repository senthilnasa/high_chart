part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of Williams %R series points.
class HCPlotWilliamsrParamsOptions implements HCOption {
  const HCPlotWilliamsrParamsOptions({
    this.index,
    this.period,
  });

  final String? index;

  /// (Highstock) Period for Williams %R oscillator
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
