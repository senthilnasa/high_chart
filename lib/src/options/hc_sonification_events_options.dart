part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Set up event handlers for the
class HCSonificationEventsOptions implements HCOption {
  const HCSonificationEventsOptions({
    this.afterUpdate,
    this.beforePlay,
    this.beforeUpdate,
    this.onBoundaryHit,
    this.onEnd,
    this.onPlay,
    this.onSeriesEnd,
    this.onSeriesStart,
    this.onStop,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Called after updating the
  final dynamic afterUpdate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called immediately when a play
  final dynamic beforePlay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called before updating the
  final dynamic beforeUpdate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called when attempting to play
  final dynamic onBoundaryHit;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called when play is completed.
  final dynamic onEnd;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called on play.
  final dynamic onPlay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called when finished playing a
  final dynamic onSeriesEnd;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called on the beginning of
  final dynamic onSeriesStart;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called on pause, cancel, or if
  final dynamic onStop;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterUpdate != null) {
      json["afterUpdate"] = hcJsonValue(afterUpdate);
    }
    if (beforePlay != null) {
      json["beforePlay"] = hcJsonValue(beforePlay);
    }
    if (beforeUpdate != null) {
      json["beforeUpdate"] = hcJsonValue(beforeUpdate);
    }
    if (onBoundaryHit != null) {
      json["onBoundaryHit"] = hcJsonValue(onBoundaryHit);
    }
    if (onEnd != null) {
      json["onEnd"] = hcJsonValue(onEnd);
    }
    if (onPlay != null) {
      json["onPlay"] = hcJsonValue(onPlay);
    }
    if (onSeriesEnd != null) {
      json["onSeriesEnd"] = hcJsonValue(onSeriesEnd);
    }
    if (onSeriesStart != null) {
      json["onSeriesStart"] = hcJsonValue(onSeriesStart);
    }
    if (onStop != null) {
      json["onStop"] = hcJsonValue(onStop);
    }
    return json;
  }
}
