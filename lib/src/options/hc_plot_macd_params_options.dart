part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotMacdParamsOptions implements HCOption {
  const HCPlotMacdParamsOptions({
    this.index,
    this.longPeriod,
    this.period,
    this.shortPeriod,
    this.signalPeriod,
  });

  /// (Highstock) The point index which indicator calculations will base. For
  final num? index;

  /// (Highstock) The long period for indicator calculations.
  final num? longPeriod;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  /// (Highstock) The short period for indicator calculations.
  final num? shortPeriod;

  /// (Highstock) The base period for signal calculations.
  final num? signalPeriod;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (index != null) {
      json["index"] = index;
    }
    if (longPeriod != null) {
      json["longPeriod"] = longPeriod;
    }
    if (period != null) {
      json["period"] = period;
    }
    if (shortPeriod != null) {
      json["shortPeriod"] = shortPeriod;
    }
    if (signalPeriod != null) {
      json["signalPeriod"] = signalPeriod;
    }
    return json;
  }
}
