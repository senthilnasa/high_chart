part of 'hc_options.dart';

/// (Highmaps) Animation when hovering over the marker.
class HCPlotMappointMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotMappointMarkerStatesHoverAnimationOptions({
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
