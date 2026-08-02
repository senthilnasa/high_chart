part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotPsarParamsOptions implements HCOption {
  const HCPlotPsarParamsOptions({
    this.decimals,
    this.increment,
    this.index,
    this.initialAccelerationFactor,
    this.maxAccelerationFactor,
    this.period,
  });

  /// (Highstock) Number of maximum decimals that are used in PSAR
  final num? decimals;

  /// (Highstock) Acceleration factor increases by increment each time the
  final num? increment;

  /// (Highstock) Index from which PSAR is starting calculation
  final num? index;

  /// (Highstock) The initial value for acceleration factor. Acceleration
  final num? initialAccelerationFactor;

  /// (Highstock) The Maximum value for acceleration factor. AF can reach a
  final num? maxAccelerationFactor;

  final String? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (decimals != null) {
      json["decimals"] = decimals;
    }
    if (increment != null) {
      json["increment"] = increment;
    }
    if (index != null) {
      json["index"] = index;
    }
    if (initialAccelerationFactor != null) {
      json["initialAccelerationFactor"] = initialAccelerationFactor;
    }
    if (maxAccelerationFactor != null) {
      json["maxAccelerationFactor"] = maxAccelerationFactor;
    }
    if (period != null) {
      json["period"] = period;
    }
    return json;
  }
}
