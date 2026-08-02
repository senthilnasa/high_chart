part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotVbpParamsOptions implements HCOption {
  const HCPlotVbpParamsOptions({
    this.index,
    this.period,
    this.ranges,
    this.volumeSeriesID,
  });

  final String? index;

  final String? period;

  /// (Highstock) The number of price zones.
  final num? ranges;

  /// (Highstock) The id of volume series which is mandatory. For example using
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
    if (ranges != null) {
      json["ranges"] = ranges;
    }
    if (volumeSeriesID != null) {
      json["volumeSeriesID"] = volumeSeriesID;
    }
    return json;
  }
}
