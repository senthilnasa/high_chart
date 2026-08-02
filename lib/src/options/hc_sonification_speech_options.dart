part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Default sonification options for all
class HCSonificationSpeechOptions implements HCOption {
  const HCSonificationSpeechOptions({
    this.activeWhen,
    this.language,
    this.mapping,
    this.pointGrouping,
    this.preferredVoice,
    this.showPlayMarker,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a
  final dynamic activeWhen;

  /// (Highcharts, Highstock, Highmaps, Gantt) The language to speak in for
  final String? language;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping configuration for the
  final HCSonificationSpeechMappingOptions? mapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping,
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the voice synthesis to
  final String? preferredVoice;

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
