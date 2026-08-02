part of 'hc_options.dart';

/// (Highstock) Default options for all this series' speech tracks.
class HCSeriesSonificationSpeechOptions implements HCOption {
  const HCSeriesSonificationSpeechOptions({
    this.activeWhen,
    this.language,
    this.mapping,
    this.pointGrouping,
    this.preferredVoice,
    this.showPlayMarker,
    this.type,
  });

  /// (Highstock) Define a condition for when a track should be active and not.
  final dynamic activeWhen;

  /// (Highstock) The language to speak in for speech tracks, as an IETF BCP 47
  final String? language;

  /// (Highstock) Mapping configuration for the speech/audio parameters.
  final HCSonificationSpeechMappingOptions? mapping;

  /// (Highstock) Options for point grouping, specifically for instrument
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highstock) Name of the voice synthesis to prefer for speech tracks.
  final String? preferredVoice;

  /// (Highstock) Show play marker (tooltip and/or crosshair) for a track.
  final dynamic showPlayMarker;

  /// (Highstock) Type of track. Always `"instrument"` for instrument tracks,
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeWhen != null) {
      json["activeWhen"] = hcJsonValue(activeWhen);
    }
    if (language != null) {
      json["language"] = language;
    }
    if (mapping != null) {
      json["mapping"] = mapping!.toJson();
    }
    if (pointGrouping != null) {
      json["pointGrouping"] = pointGrouping!.toJson();
    }
    if (preferredVoice != null) {
      json["preferredVoice"] = preferredVoice;
    }
    if (showPlayMarker != null) {
      json["showPlayMarker"] = hcJsonValue(showPlayMarker);
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
