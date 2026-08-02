part of 'hc_options.dart';

/// (Highstock) Parameters used in calculation of regression series' points.
class HCPlotZigzagParamsOptions implements HCOption {
  const HCPlotZigzagParamsOptions({
    this.deviation,
    this.highIndex,
    this.index,
    this.lowIndex,
    this.period,
  });

  /// (Highstock) The threshold for the value change.
  final num? deviation;

  /// (Highstock) The point index which indicator calculations will base -
  final num? highIndex;

  final String? index;

  /// (Highstock) The point index which indicator calculations will base -
  final num? lowIndex;

  final String? period;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (deviation != null) {
      json["deviation"] = deviation;
    }
    if (highIndex != null) {
      json["highIndex"] = highIndex;
    }
    if (index != null) {
      json["index"] = index;
    }
    if (lowIndex != null) {
      json["lowIndex"] = lowIndex;
    }
    if (period != null) {
      json["period"] = period;
    }
    return json;
  }
}
