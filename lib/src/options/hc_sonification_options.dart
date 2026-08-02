part of 'hc_options.dart';

class HCSonificationOptions implements HCOption {
  const HCSonificationOptions({
    this.afterSeriesWait,
    this.defaultInstrumentOptions,
    this.defaultSpeechOptions,
    this.duration,
    this.enabled,
    this.events,
    this.globalContextTracks,
    this.globalTracks,
    this.masterVolume,
    this.order,
    this.pointGrouping,
    this.showCrosshair,
    this.showTooltip,
    this.updateInterval,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The time to wait in milliseconds
  final num? afterSeriesWait;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default sonification options for
  final HCSonificationInstrumentOptions? defaultInstrumentOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default sonification options for
  final HCSonificationSpeechOptions? defaultSpeechOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) The total duration of the
  final num? duration;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable sonification
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set up event handlers for the
  final HCSonificationEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) Context tracks to add globally,
  final List<HCSonificationContextTracksOptions>? globalContextTracks;

  /// (Highcharts, Highstock, Highmaps, Gantt) Global tracks to add to every
  final List<HCSonificationTracksOptions>? globalTracks;

  /// (Highcharts, Highstock, Highmaps, Gantt) Overall/master volume for the
  final num? masterVolume;

  /// (Highcharts, Highstock, Highmaps, Gantt) What order to play the data
  final String? order;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for grouping data points
  final HCSonificationPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show X and Y axis crosshairs (if
  final dynamic showCrosshair;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show tooltip as the chart plays.
  final dynamic showTooltip;

  /// (Highcharts, Highstock, Highmaps, Gantt) How long to wait between each
  final num? updateInterval;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterSeriesWait != null) {
      json["afterSeriesWait"] = afterSeriesWait;
    }
    if (defaultInstrumentOptions != null) {
      json["defaultInstrumentOptions"] = defaultInstrumentOptions!.toJson();
    }
    if (defaultSpeechOptions != null) {
      json["defaultSpeechOptions"] = defaultSpeechOptions!.toJson();
    }
    if (duration != null) {
      json["duration"] = duration;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (globalContextTracks != null) {
      json["globalContextTracks"] =
          globalContextTracks!.map((e) => e.toJson()).toList();
    }
    if (globalTracks != null) {
      json["globalTracks"] = globalTracks!.map((e) => e.toJson()).toList();
    }
    if (masterVolume != null) {
      json["masterVolume"] = masterVolume;
    }
    if (order != null) {
      json["order"] = order;
    }
    if (pointGrouping != null) {
      json["pointGrouping"] = pointGrouping!.toJson();
    }
    if (showCrosshair != null) {
      json["showCrosshair"] = hcJsonValue(showCrosshair);
    }
    if (showTooltip != null) {
      json["showTooltip"] = hcJsonValue(showTooltip);
    }
    if (updateInterval != null) {
      json["updateInterval"] = updateInterval;
    }
    return json;
  }
}
