part of 'hc_options.dart';

/// (Highmaps) Animation when hovering over the marker.
class HCPlotMapbubbleMarkerStatesHoverAnimationOptions implements HCOption {
  const HCPlotMapbubbleMarkerStatesHoverAnimationOptions({
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
