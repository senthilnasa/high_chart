part of 'hc_options.dart';

/// (Gantt) Animation when not hovering over the marker.
class HCPlotGanttStatesInactiveAnimationOptions implements HCOption {
  const HCPlotGanttStatesInactiveAnimationOptions({
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
