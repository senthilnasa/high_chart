part of 'hc_options.dart';

/// (Highmaps) Animation when not hovering over the marker.
class HCPlotMapStatesInactiveAnimationOptions implements HCOption {
  const HCPlotMapStatesInactiveAnimationOptions({
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
