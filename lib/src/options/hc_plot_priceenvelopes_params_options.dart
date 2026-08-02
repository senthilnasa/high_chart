part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotPriceenvelopesParamsOptions implements HCOption {
  const HCPlotPriceenvelopesParamsOptions({
    this.bottomBand,
    this.index,
    this.period,
    this.topBand,
  });

  /// (Highstock) Percentage below the moving average that should be displayed.
  final num? bottomBand;

  /// (Highstock) The point index which indicator calculations will base. For
  final num? index;

  /// (Highstock) The base period for indicator calculations. This is the
  final num? period;

  /// (Highstock) Percentage above the moving average that should be displayed.
  final num? topBand;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (bottomBand != null) {
      json["bottomBand"] = bottomBand;
    }
    if (index != null) {
      json["index"] = index;
    }
    if (period != null) {
      json["period"] = period;
    }
    if (topBand != null) {
      json["topBand"] = topBand;
    }
    return json;
  }
}
