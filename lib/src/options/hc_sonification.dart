part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Context tracks to add globally, an array of either instrument tracks, speech tracks, or a mix.
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a track should be active and not.
  final dynamic activeWhen;

  /// (Highcharts, Highstock, Highmaps, Gantt) Instrument to use for playing.
  final dynamic instrument;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the audio parameters.
  final HCSonificationInstrumentMappingOptions? mapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name to use for a track when exporting to MIDI. By default it uses the series name if the track is related to a series.
  final String? midiName;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping, specifically for instrument tracks.
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Round pitch mapping to musical notes.
  final bool? roundToMusicalNotes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show play marker (tooltip and/or crosshair) for a track.
  final bool? showPlayMarker;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a context track to play periodically every `timeInterval` milliseconds while the sonification is playing.
  final num? timeInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) Type of track. Always `"instrument"` for instrument tracks, and `"speech"` for speech tracks.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set a context track to play periodically every `valueInterval` units of a data property `valueProp` while the sonification is playing.
  final num? valueInterval;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to map context events to time when using the `valueInterval` option.
  final String? valueMapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) The point property to play context for when using `valueInterval`.
  final String? valueProp;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeWhen != null) {
      json['activeWhen'] = hcJsonValue(activeWhen);
    }
    if (instrument != null) {
      json['instrument'] = hcJsonValue(instrument);
    }
    if (mapping != null) {
      json['mapping'] = mapping!.toJson();
    }
    if (midiName != null) {
      json['midiName'] = midiName;
    }
    if (pointGrouping != null) {
      json['pointGrouping'] = pointGrouping!.toJson();
    }
    if (roundToMusicalNotes != null) {
      json['roundToMusicalNotes'] = roundToMusicalNotes;
    }
    if (showPlayMarker != null) {
      json['showPlayMarker'] = showPlayMarker;
    }
    if (timeInterval != null) {
      json['timeInterval'] = timeInterval;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (valueInterval != null) {
      json['valueInterval'] = valueInterval;
    }
    if (valueMapFunction != null) {
      json['valueMapFunction'] = valueMapFunction;
    }
    if (valueProp != null) {
      json['valueProp'] = valueProp;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Set up event handlers for the sonification
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Called after updating the sonification.
  final dynamic afterUpdate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called immediately when a play is requested.
  final dynamic beforePlay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called before updating the sonification.
  final dynamic beforeUpdate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called when attempting to play an adjacent point or series, and there is none.
  final dynamic onBoundaryHit;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called when play is completed.
  final dynamic onEnd;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called on play.
  final dynamic onPlay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called when finished playing a series.
  final dynamic onSeriesEnd;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called on the beginning of playing a series.
  final dynamic onSeriesStart;

  /// (Highcharts, Highstock, Highmaps, Gantt) Called on pause, cancel, or if play is completed.
  final dynamic onStop;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterUpdate != null) {
      json['afterUpdate'] = hcJsonValue(afterUpdate);
    }
    if (beforePlay != null) {
      json['beforePlay'] = hcJsonValue(beforePlay);
    }
    if (beforeUpdate != null) {
      json['beforeUpdate'] = hcJsonValue(beforeUpdate);
    }
    if (onBoundaryHit != null) {
      json['onBoundaryHit'] = hcJsonValue(onBoundaryHit);
    }
    if (onEnd != null) {
      json['onEnd'] = hcJsonValue(onEnd);
    }
    if (onPlay != null) {
      json['onPlay'] = hcJsonValue(onPlay);
    }
    if (onSeriesEnd != null) {
      json['onSeriesEnd'] = hcJsonValue(onSeriesEnd);
    }
    if (onSeriesStart != null) {
      json['onSeriesStart'] = hcJsonValue(onSeriesStart);
    }
    if (onStop != null) {
      json['onStop'] = hcJsonValue(onStop);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a track should be active and not.
class HCSonificationInstrumentActiveWhenOptions implements HCOption {
  const HCSonificationInstrumentActiveWhenOptions({
    this.crossingDown,
    this.crossingUp,
    this.max,
    this.min,
    this.prop,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop` was above, and is now at or below this value.
  final num? crossingDown;

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop` was below, and is now at or above this value.
  final num? crossingUp;

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop` is below or at this value.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) Track is only active when `prop` is above or at this value.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) The point property to compare, for example `y` or `x`.
  final String? prop;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (crossingDown != null) {
      json['crossingDown'] = crossingDown;
    }
    if (crossingUp != null) {
      json['crossingUp'] = crossingUp;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (prop != null) {
      json['prop'] = prop;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Frequency in Hertz of notes. Overrides pitch mapping if set.
class HCSonificationInstrumentFrequencyOptions implements HCOption {
  const HCSonificationInstrumentFrequencyOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the highpass filter.
class HCSonificationInstrumentHighpassOptions implements HCOption {
  const HCSonificationInstrumentHighpassOptions({
    this.frequency,
    this.resonance,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to filter frequency in Hertz from 1 to 20,000Hz.
  final dynamic frequency;

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to filter resonance in dB. Can be negative to cause a dip, or positive to cause a bump.
  final dynamic resonance;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json['frequency'] = hcJsonValue(frequency);
    }
    if (resonance != null) {
      json['resonance'] = hcJsonValue(resonance);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Map to filter frequency in Hertz from 1 to 20,000Hz.
class HCSonificationInstrumentLowpassFrequencyOptions implements HCOption {
  const HCSonificationInstrumentLowpassFrequencyOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the lowpass filter.
class HCSonificationInstrumentLowpassOptions implements HCOption {
  const HCSonificationInstrumentLowpassOptions({
    this.frequency,
    this.resonance,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to filter frequency in Hertz from 1 to 20,000Hz.
  final dynamic frequency;

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to filter resonance in dB. Can be negative to cause a dip, or positive to cause a bump.
  final dynamic resonance;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json['frequency'] = hcJsonValue(frequency);
    }
    if (resonance != null) {
      json['resonance'] = hcJsonValue(resonance);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Map to filter resonance in dB. Can be negative to cause a dip, or positive to cause a bump.
class HCSonificationInstrumentLowpassResonanceOptions implements HCOption {
  const HCSonificationInstrumentLowpassResonanceOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the audio parameters.
class HCSonificationInstrumentMappingOptions implements HCOption {
  const HCSonificationInstrumentMappingOptions({
    this.frequency,
    this.gapBetweenNotes,
    this.highpass,
    this.lowpass,
    this.noteDuration,
    this.pan,
    this.pitch,
    this.playDelay,
    this.rate,
    this.text,
    this.time,
    this.tremolo,
    this.volume,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Frequency in Hertz of notes. Overrides pitch mapping if set.
  final dynamic frequency;

  /// (Highcharts, Highstock, Highmaps, Gantt) Gap in milliseconds between notes if pitch is mapped to an array of notes.
  final dynamic gapBetweenNotes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the highpass filter.
  final HCSonificationInstrumentHighpassOptions? highpass;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the lowpass filter.
  final HCSonificationInstrumentLowpassOptions? lowpass;

  /// (Highcharts, Highstock, Highmaps, Gantt) Note duration determines for how long a note plays, in milliseconds.
  final dynamic noteDuration;

  /// (Highcharts, Highstock, Highmaps, Gantt) Pan refers to the stereo panning position of the sound. It is defined from -1 (left) to 1 (right).
  final dynamic pan;

  /// (Highcharts, Highstock, Highmaps, Gantt) Musical pitch refers to how high or low notes are played.
  final dynamic pitch;

  /// (Highcharts, Highstock, Highmaps, Gantt) Milliseconds to wait before playing, comes in addition to the time determined by the `time` mapping.
  final dynamic playDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Rate mapping for speech tracks.
  final dynamic rate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text mapping for speech tracks.
  final dynamic text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Time mapping determines what time each point plays. It is defined as an offset in milliseconds, where 0 means it plays immediately when the chart is sonified.
  final dynamic time;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for tremolo effects.
  final HCSonificationInstrumentTremoloOptions? tremolo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The volume of notes, from 0 to 1.
  final dynamic volume;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (frequency != null) {
      json['frequency'] = hcJsonValue(frequency);
    }
    if (gapBetweenNotes != null) {
      json['gapBetweenNotes'] = hcJsonValue(gapBetweenNotes);
    }
    if (highpass != null) {
      json['highpass'] = highpass!.toJson();
    }
    if (lowpass != null) {
      json['lowpass'] = lowpass!.toJson();
    }
    if (noteDuration != null) {
      json['noteDuration'] = hcJsonValue(noteDuration);
    }
    if (pan != null) {
      json['pan'] = hcJsonValue(pan);
    }
    if (pitch != null) {
      json['pitch'] = hcJsonValue(pitch);
    }
    if (playDelay != null) {
      json['playDelay'] = hcJsonValue(playDelay);
    }
    if (rate != null) {
      json['rate'] = hcJsonValue(rate);
    }
    if (text != null) {
      json['text'] = hcJsonValue(text);
    }
    if (time != null) {
      json['time'] = hcJsonValue(time);
    }
    if (tremolo != null) {
      json['tremolo'] = tremolo!.toJson();
    }
    if (volume != null) {
      json['volume'] = hcJsonValue(volume);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Default sonification options for all instrument tracks.
class HCSonificationInstrumentOptions implements HCOption {
  const HCSonificationInstrumentOptions({
    this.activeWhen,
    this.instrument,
    this.mapping,
    this.midiName,
    this.pointGrouping,
    this.roundToMusicalNotes,
    this.showPlayMarker,
    this.type,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a track should be active and not.
  final dynamic activeWhen;

  /// (Highcharts, Highstock, Highmaps, Gantt) Instrument to use for playing.
  final dynamic instrument;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the audio parameters.
  final HCSonificationInstrumentMappingOptions? mapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name to use for a track when exporting to MIDI. By default it uses the series name if the track is related to a series.
  final String? midiName;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping, specifically for instrument tracks.
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Round pitch mapping to musical notes.
  final bool? roundToMusicalNotes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show play marker (tooltip and/or crosshair) for a track.
  final bool? showPlayMarker;

  /// (Highcharts, Highstock, Highmaps, Gantt) Type of track. Always `"instrument"` for instrument tracks, and `"speech"` for speech tracks.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeWhen != null) {
      json['activeWhen'] = hcJsonValue(activeWhen);
    }
    if (instrument != null) {
      json['instrument'] = hcJsonValue(instrument);
    }
    if (mapping != null) {
      json['mapping'] = mapping!.toJson();
    }
    if (midiName != null) {
      json['midiName'] = midiName;
    }
    if (pointGrouping != null) {
      json['pointGrouping'] = pointGrouping!.toJson();
    }
    if (roundToMusicalNotes != null) {
      json['roundToMusicalNotes'] = roundToMusicalNotes;
    }
    if (showPlayMarker != null) {
      json['showPlayMarker'] = showPlayMarker;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Musical pitch refers to how high or low notes are played.
class HCSonificationInstrumentPitchOptions implements HCOption {
  const HCSonificationInstrumentPitchOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.scale,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final String? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final String? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) Map pitches to a musical scale. The scale is defined as an array of semitone offsets from the root note.
  final List<num>? scale;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (scale != null) {
      json['scale'] = scale;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Milliseconds to wait before playing, comes in addition to the time determined by the `time` mapping.
class HCSonificationInstrumentPlayDelayOptions implements HCOption {
  const HCSonificationInstrumentPlayDelayOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping, specifically for instrument tracks.
class HCSonificationInstrumentPointGroupingOptions implements HCOption {
  const HCSonificationInstrumentPointGroupingOptions({
    this.algorithm,
    this.enabled,
    this.groupTimespan,
    this.prop,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The grouping algorithm, deciding which points to keep when grouping a set of points together. By default `"minmax"` is used, which keeps both the minimum and maximum points.
  final String? algorithm;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to group points
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) The size of each group in milliseconds. Audio events closer than this are grouped together.
  final num? groupTimespan;

  /// (Highcharts, Highstock, Highmaps, Gantt) The data property for each point to compare when deciding which points to keep in the group.
  final String? prop;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (algorithm != null) {
      json['algorithm'] = algorithm;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (groupTimespan != null) {
      json['groupTimespan'] = groupTimespan;
    }
    if (prop != null) {
      json['prop'] = prop;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Time mapping determines what time each point plays. It is defined as an offset in milliseconds, where 0 means it plays immediately when the chart is sonified.
class HCSonificationInstrumentTimeOptions implements HCOption {
  const HCSonificationInstrumentTimeOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Map to tremolo depth, from 0 to 1.
class HCSonificationInstrumentTremoloDepthOptions implements HCOption {
  const HCSonificationInstrumentTremoloDepthOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for tremolo effects.
class HCSonificationInstrumentTremoloOptions implements HCOption {
  const HCSonificationInstrumentTremoloOptions({
    this.depth,
    this.speed,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to tremolo depth, from 0 to 1.
  final dynamic depth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Map to tremolo speed, from 0 to 1.
  final dynamic speed;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (depth != null) {
      json['depth'] = hcJsonValue(depth);
    }
    if (speed != null) {
      json['speed'] = hcJsonValue(speed);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Map to tremolo speed, from 0 to 1.
class HCSonificationInstrumentTremoloSpeedOptions implements HCOption {
  const HCSonificationInstrumentTremoloSpeedOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The volume of notes, from 0 to 1.
class HCSonificationInstrumentVolumeOptions implements HCOption {
  const HCSonificationInstrumentVolumeOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

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

  /// (Highcharts, Highstock, Highmaps, Gantt) The time to wait in milliseconds after each data series when playing the series one after the other.
  final num? afterSeriesWait;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default sonification options for all instrument tracks.
  final HCSonificationInstrumentOptions? defaultInstrumentOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default sonification options for all speech tracks.
  final HCSonificationSpeechOptions? defaultSpeechOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) The total duration of the sonification, in milliseconds.
  final num? duration;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable sonification functionality for the chart.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Set up event handlers for the sonification
  final HCSonificationEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) Context tracks to add globally, an array of either instrument tracks, speech tracks, or a mix.
  final List<HCSonificationContextTracksOptions>? globalContextTracks;

  /// (Highcharts, Highstock, Highmaps, Gantt) Global tracks to add to every series.
  final List<HCSonificationTracksOptions>? globalTracks;

  /// (Highcharts, Highstock, Highmaps, Gantt) Overall/master volume for the sonification, from 0 to 1.
  final num? masterVolume;

  /// (Highcharts, Highstock, Highmaps, Gantt) What order to play the data series in, either `sequential` where the series play individually one after the other, or `simultaneous` where the series play all at once.
  final String? order;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for grouping data points together when sonifying. This allows for the visual presentation to contain more points than what is being played. If not enabled, all visible / uncropped points are played.
  final HCSonificationPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show X and Y axis crosshairs (if they exist) as the chart plays.
  final bool? showCrosshair;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show tooltip as the chart plays.
  final bool? showTooltip;

  /// (Highcharts, Highstock, Highmaps, Gantt) How long to wait between each recomputation of the sonification, if the chart updates rapidly. This avoids slowing down processes like panning. Given in milliseconds.
  final num? updateInterval;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterSeriesWait != null) {
      json['afterSeriesWait'] = afterSeriesWait;
    }
    if (defaultInstrumentOptions != null) {
      json['defaultInstrumentOptions'] = defaultInstrumentOptions!.toJson();
    }
    if (defaultSpeechOptions != null) {
      json['defaultSpeechOptions'] = defaultSpeechOptions!.toJson();
    }
    if (duration != null) {
      json['duration'] = duration;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (globalContextTracks != null) {
      json['globalContextTracks'] =
          globalContextTracks!.map((e) => e.toJson()).toList();
    }
    if (globalTracks != null) {
      json['globalTracks'] = globalTracks!.map((e) => e.toJson()).toList();
    }
    if (masterVolume != null) {
      json['masterVolume'] = masterVolume;
    }
    if (order != null) {
      json['order'] = order;
    }
    if (pointGrouping != null) {
      json['pointGrouping'] = pointGrouping!.toJson();
    }
    if (showCrosshair != null) {
      json['showCrosshair'] = showCrosshair;
    }
    if (showTooltip != null) {
      json['showTooltip'] = showTooltip;
    }
    if (updateInterval != null) {
      json['updateInterval'] = updateInterval;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for grouping data points together when sonifying. This allows for the visual presentation to contain more points than what is being played. If not enabled, all visible / uncropped points are played.
class HCSonificationPointGroupingOptions implements HCOption {
  const HCSonificationPointGroupingOptions({
    this.algorithm,
    this.enabled,
    this.groupTimespan,
    this.prop,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The grouping algorithm, deciding which points to keep when grouping a set of points together. By default `"minmax"` is used, which keeps both the minimum and maximum points.
  final String? algorithm;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to group points
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) The size of each group in milliseconds. Audio events closer than this are grouped together.
  final num? groupTimespan;

  /// (Highcharts, Highstock, Highmaps, Gantt) The data property for each point to compare when deciding which points to keep in the group.
  final String? prop;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (algorithm != null) {
      json['algorithm'] = algorithm;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (groupTimespan != null) {
      json['groupTimespan'] = groupTimespan;
    }
    if (prop != null) {
      json['prop'] = prop;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Mapping configuration for the speech/audio parameters.
class HCSonificationSpeechMappingOptions implements HCOption {
  const HCSonificationSpeechMappingOptions({
    this.pitch,
    this.playDelay,
    this.rate,
    this.text,
    this.time,
    this.volume,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Speech pitch (how high/low the voice is) multiplier.
  final dynamic pitch;

  /// (Highcharts, Highstock, Highmaps, Gantt) Milliseconds to wait before playing, comes in addition to the time determined by the `time` mapping.
  final dynamic playDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) Speech rate (speed) multiplier.
  final dynamic rate;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text to announce for speech tracks. Can either be a format string or a function.
  final dynamic text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Time mapping determines what time each point plays. It is defined as an offset in milliseconds, where 0 means it plays immediately when the chart is sonified.
  final dynamic time;

  /// (Highcharts, Highstock, Highmaps, Gantt) Volume of the speech announcement.
  final dynamic volume;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (pitch != null) {
      json['pitch'] = hcJsonValue(pitch);
    }
    if (playDelay != null) {
      json['playDelay'] = hcJsonValue(playDelay);
    }
    if (rate != null) {
      json['rate'] = hcJsonValue(rate);
    }
    if (text != null) {
      json['text'] = hcJsonValue(text);
    }
    if (time != null) {
      json['time'] = hcJsonValue(time);
    }
    if (volume != null) {
      json['volume'] = hcJsonValue(volume);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Default sonification options for all speech tracks.
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a track should be active and not.
  final dynamic activeWhen;

  /// (Highcharts, Highstock, Highmaps, Gantt) The language to speak in for speech tracks, as an IETF BCP 47 language tag.
  final String? language;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping configuration for the speech/audio parameters.
  final HCSonificationSpeechMappingOptions? mapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping, specifically for instrument tracks.
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the voice synthesis to prefer for speech tracks.
  final String? preferredVoice;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show play marker (tooltip and/or crosshair) for a track.
  final bool? showPlayMarker;

  /// (Highcharts, Highstock, Highmaps, Gantt) Type of track. Always `"instrument"` for instrument tracks, and `"speech"` for speech tracks.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeWhen != null) {
      json['activeWhen'] = hcJsonValue(activeWhen);
    }
    if (language != null) {
      json['language'] = language;
    }
    if (mapping != null) {
      json['mapping'] = mapping!.toJson();
    }
    if (pointGrouping != null) {
      json['pointGrouping'] = pointGrouping!.toJson();
    }
    if (preferredVoice != null) {
      json['preferredVoice'] = preferredVoice;
    }
    if (showPlayMarker != null) {
      json['showPlayMarker'] = showPlayMarker;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Speech pitch (how high/low the voice is) multiplier.
class HCSonificationSpeechPitchOptions implements HCOption {
  const HCSonificationSpeechPitchOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final String? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final String? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Milliseconds to wait before playing, comes in addition to the time determined by the `time` mapping.
class HCSonificationSpeechPlayDelayOptions implements HCOption {
  const HCSonificationSpeechPlayDelayOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Global tracks to add to every series.
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Define a condition for when a track should be active and not.
  final dynamic activeWhen;

  /// (Highcharts, Highstock, Highmaps, Gantt) Instrument to use for playing.
  final dynamic instrument;

  /// (Highcharts, Highstock, Highmaps, Gantt) Mapping options for the audio parameters.
  final HCSonificationInstrumentMappingOptions? mapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name to use for a track when exporting to MIDI. By default it uses the series name if the track is related to a series.
  final String? midiName;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for point grouping, specifically for instrument tracks.
  final HCSonificationInstrumentPointGroupingOptions? pointGrouping;

  /// (Highcharts, Highstock, Highmaps, Gantt) Round pitch mapping to musical notes.
  final bool? roundToMusicalNotes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show play marker (tooltip and/or crosshair) for a track.
  final bool? showPlayMarker;

  /// (Highcharts, Highstock, Highmaps, Gantt) Type of track. Always `"instrument"` for instrument tracks, and `"speech"` for speech tracks.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeWhen != null) {
      json['activeWhen'] = hcJsonValue(activeWhen);
    }
    if (instrument != null) {
      json['instrument'] = hcJsonValue(instrument);
    }
    if (mapping != null) {
      json['mapping'] = mapping!.toJson();
    }
    if (midiName != null) {
      json['midiName'] = midiName;
    }
    if (pointGrouping != null) {
      json['pointGrouping'] = pointGrouping!.toJson();
    }
    if (roundToMusicalNotes != null) {
      json['roundToMusicalNotes'] = roundToMusicalNotes;
    }
    if (showPlayMarker != null) {
      json['showPlayMarker'] = showPlayMarker;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Rate mapping for speech tracks.
class HCSonificationTracksRateOptions implements HCOption {
  const HCSonificationTracksRateOptions({
    this.mapFunction,
    this.mapTo,
    this.max,
    this.min,
    this.value,
    this.within,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) How to perform the mapping.
  final String? mapFunction;

  /// (Highcharts, Highstock, Highmaps, Gantt) A point property to map the mapping parameter to.
  final String? mapTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) The maximum value for the audio parameter. This is the highest value the audio parameter will be mapped to.
  final num? max;

  /// (Highcharts, Highstock, Highmaps, Gantt) The minimum value for the audio parameter. This is the lowest value the audio parameter will be mapped to.
  final num? min;

  /// (Highcharts, Highstock, Highmaps, Gantt) A fixed value to use for the prop when mapping.
  final num? value;

  /// (Highcharts, Highstock, Highmaps, Gantt) What data values to map the parameter within.
  final String? within;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (mapFunction != null) {
      json['mapFunction'] = mapFunction;
    }
    if (mapTo != null) {
      json['mapTo'] = mapTo;
    }
    if (max != null) {
      json['max'] = max;
    }
    if (min != null) {
      json['min'] = min;
    }
    if (value != null) {
      json['value'] = value;
    }
    if (within != null) {
      json['within'] = within;
    }
    return json;
  }
}
