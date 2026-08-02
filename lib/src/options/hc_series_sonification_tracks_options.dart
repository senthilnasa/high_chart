part of 'hc_options.dart';

/// (Highstock) Tracks for this series.
class HCSeriesSonificationTracksOptions implements HCOption {
  const HCSeriesSonificationTracksOptions({
    this.activeWhen,
    this.instrument,
    this.mapping,
    this.midiName,
    this.pointGrouping,
    this.roundToMusicalNotes,
    this.showPlayMarker,
    this.type,
  });

  /// (Highstock) Define a condition for when a track should be active and not.
  final dynamic activeWhen;

  /// (Highstock) Instrument to use for playing.
  final dynamic instrument;

  /// (Highstock) Mapping options for the audio parameters.
  final HCSonificationInstrumentMappingOptions? mapping;

  /// (Highstock) Name to use for a track when exporting to MIDI. By default it
  final String? midiName;

  /// (Highstock) Options for point grouping, specifically for instrument
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highstock) Round pitch mapping to musical notes.
  final dynamic roundToMusicalNotes;

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
    if (instrument != null) {
      json["instrument"] = hcJsonValue(instrument);
    }
    if (mapping != null) {
      json["mapping"] = mapping!.toJson();
    }
    if (midiName != null) {
      json["midiName"] = midiName;
    }
    if (pointGrouping != null) {
      json["pointGrouping"] = pointGrouping!.toJson();
    }
    if (roundToMusicalNotes != null) {
      json["roundToMusicalNotes"] = hcJsonValue(roundToMusicalNotes);
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
