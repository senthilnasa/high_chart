part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Context tracks to add globally, an
class HCSonificationContextTracksOptions implements HCOption {
  const HCSonificationContextTracksOptions({
    this.activeWhen,
    this.instrument,
    this.mapping,
    this.midiName,
    this.pointGrouping,
    this.roundToMusicalNotes,
    this.showPlayMarker,
    this.timeInterval,
    this.type,
    this.valueInterval,
    this.valueMapFunction,
    this.valueProp,
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a context track to play
  final num? timeInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) Type of track. Always
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a context track to play
  final num? valueInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to map context events to
  final String? valueMapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) The point property to play
  final String? valueProp;

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
    if (timeInterval != null) {
      json["timeInterval"] = timeInterval;
    }
    if (type != null) {
      json["type"] = type;
    }
    if (valueInterval != null) {
      json["valueInterval"] = valueInterval;
    }
    if (valueMapFunction != null) {
      json["valueMapFunction"] = valueMapFunction;
    }
    if (valueProp != null) {
      json["valueProp"] = valueProp;
    }
    return json;
  }
}
