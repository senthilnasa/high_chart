part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotObvParamsOptions implements HCOption {
  const HCPlotObvParamsOptions({
    this.index,
    this.period,
    this.volumeSeriesID,
  });

  final String? index;

  final String? period;

  /// (Highstock) The id of another series to use its data as volume data for
  final String? volumeSeriesID;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
