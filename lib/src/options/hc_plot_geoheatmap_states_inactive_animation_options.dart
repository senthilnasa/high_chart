part of 'hc_options.dart';

/// (Highmaps) Animation when not hovering over the marker.
class HCPlotGeoheatmapStatesInactiveAnimationOptions implements HCOption {
  const HCPlotGeoheatmapStatesInactiveAnimationOptions({
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
