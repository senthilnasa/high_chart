part of 'hc_options.dart';

/// (Highmaps) Animation when not hovering over the marker.
class HCSeriesMapDataStatesInactiveAnimationOptions implements HCOption {
  const HCSeriesMapDataStatesInactiveAnimationOptions({
    this.duration,
  });

  final num? duration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (duration != null) {
      json["duration"] = duration;
    }
    return json;
  }
}
