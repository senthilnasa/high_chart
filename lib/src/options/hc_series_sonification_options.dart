part of 'hc_options.dart';

/// (Highstock) Sonification/audio chart options for a series.
class HCSeriesSonificationOptions implements HCOption {
  const HCSeriesSonificationOptions({
    this.contextTracks,
    this.defaultInstrumentOptions,
    this.defaultSpeechOptions,
    this.enabled,
    this.pointGrouping,
    this.tracks,
  });

  /// (Highstock) Context tracks for this series. Context tracks are tracks
  final List<HCSeriesSonificationContextTracksOptions>? contextTracks;

  /// (Highstock) Default options for all this series' instrument tracks.
  final HCSeriesSonificationInstrumentOptions? defaultInstrumentOptions;

  /// (Highstock) Default options for all this series' speech tracks.
  final HCSeriesSonificationSpeechOptions? defaultSpeechOptions;

  /// (Highstock) Whether or not sonification is enabled for this series.
  final dynamic enabled;

  /// (Highstock) Sonification point grouping options for this series.
  final HCSeriesSonificationPointGroupingOptions? pointGrouping;

  /// (Highstock) Tracks for this series.
  final List<HCSeriesSonificationTracksOptions>? tracks;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (contextTracks != null) {
      json["contextTracks"] = contextTracks!.map((e) => e.toJson()).toList();
    }
    if (defaultInstrumentOptions != null) {
      json["defaultInstrumentOptions"] = defaultInstrumentOptions!.toJson();
    }
    if (defaultSpeechOptions != null) {
      json["defaultSpeechOptions"] = defaultSpeechOptions!.toJson();
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (pointGrouping != null) {
      json["pointGrouping"] = pointGrouping!.toJson();
    }
    if (tracks != null) {
      json["tracks"] = tracks!.map((e) => e.toJson()).toList();
    }
    return json;
  }
}
