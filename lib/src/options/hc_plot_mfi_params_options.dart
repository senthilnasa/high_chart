part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotMfiParamsOptions implements HCOption {
  const HCPlotMfiParamsOptions({
    this.decimals,
    this.index,
    this.period,
    this.volumeSeriesID,
  });

  /// (Highstock) Number of maximum decimals that are used in MFI
  final num? decimals;

  final String? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  /// (Highstock) The id of volume series which is mandatory. For example
  final String? volumeSeriesID;

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
    if (volumeSeriesID != null) {
      json["volumeSeriesID"] = volumeSeriesID;
    }
    return json;
  }
}
