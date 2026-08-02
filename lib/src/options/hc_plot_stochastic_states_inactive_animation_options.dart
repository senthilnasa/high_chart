part of 'hc_options.dart';

/// (Highstock) Animation when not hovering over the marker.
class HCPlotStochasticStatesInactiveAnimationOptions implements HCOption {
  const HCPlotStochasticStatesInactiveAnimationOptions({
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
