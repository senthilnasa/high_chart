part of 'hc_options.dart';

/// (Highcharts, Highstock) The normal state of a single point marker. Currently
class HCPointStatesNormalOptionsObject implements HCOption {
  const HCPointStatesNormalOptionsObject({
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
