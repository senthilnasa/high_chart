part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Global tracks to add to every
class HCSonificationTracksOptions implements HCOption {
  const HCSonificationTracksOptions({
    this.activeWhen,
    this.instrument,
    this.mapping,
    this.midiName,
    this.pointGrouping,
    this.roundToMusicalNotes,
    this.showPlayMarker,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a
  final dynamic activeWhen;

  /// (Highcharts, Highstock, Highmaps, Gantt) Instrument to use for playing.
  final dynamic instrument;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the audio
  final HCSonificationInstrumentMappingOptions? mapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name to use for a track when
  final String? midiName;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping,
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Round pitch mapping to musical
  final dynamic roundToMusicalNotes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show play marker (tooltip and/or
  final dynamic showPlayMarker;

  /// (Highcharts, Highstock, Highmaps, Gantt) Type of track. Always
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
