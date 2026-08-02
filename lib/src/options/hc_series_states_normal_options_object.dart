part of 'hc_options.dart';

/// (Highcharts, Highstock) The normal state of a series, or for point items in
class HCSeriesStatesNormalOptionsObject implements HCOption {
  const HCSeriesStatesNormalOptionsObject({
    this.animation,
  });

  /// (Highcharts, Highstock) Animation when returning to normal state after
  final dynamic animation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    return json;
  }
}
