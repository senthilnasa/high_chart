part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of Klinger Oscillator.
class HCPlotKlingerParamsOptions implements HCOption {
  const HCPlotKlingerParamsOptions({
    this.fastAvgPeriod,
    this.signalPeriod,
    this.slowAvgPeriod,
    this.volumeSeriesID,
  });

  /// (Highstock) The fast period for indicator calculations.
  final num? fastAvgPeriod;

  /// (Highstock) The base period for signal calculations.
  final num? signalPeriod;

  /// (Highstock) The slow period for indicator calculations.
  final num? slowAvgPeriod;

  /// (Highstock) The id of another series to use its data as volume data
  final String? volumeSeriesID;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fastAvgPeriod != null) {
      json["fastAvgPeriod"] = fastAvgPeriod;
    }
    if (signalPeriod != null) {
      json["signalPeriod"] = signalPeriod;
    }
    if (slowAvgPeriod != null) {
      json["slowAvgPeriod"] = slowAvgPeriod;
    }
    if (volumeSeriesID != null) {
      json["volumeSeriesID"] = volumeSeriesID;
    }
    return json;
  }
}
