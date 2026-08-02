part of 'hc_options.dart';

/// (Highcharts) Determines the width of the ring per level.
class HCPlotSunburstLevelSizeOptions implements HCOption {
  const HCPlotSunburstLevelSizeOptions({
    this.unit,
    this.value,
  });

  /// (Highcharts) How to interpret `levelSize.value`.
  final String? unit;

  /// (Highcharts) The value used for calculating the width of the ring. Its'
  final num? value;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (unit != null) {
      json["unit"] = unit;
    }
    if (value != null) {
      json["value"] = value;
    }
    return json;
  }
}
