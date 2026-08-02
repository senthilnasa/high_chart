part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of aroon series points.
class HCPlotAroonoscillatorParamsOptions implements HCOption {
  const HCPlotAroonoscillatorParamsOptions({
    this.index,
    this.period,
  });

  final String? index;

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
