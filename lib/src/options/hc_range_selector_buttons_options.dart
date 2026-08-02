part of 'hc_options.dart';

/// (Highstock, Gantt) An array of configuration objects for the buttons.
class HCRangeSelectorButtonsOptions implements HCOption {
  const HCRangeSelectorButtonsOptions({
    this.count,
    this.dataGrouping,
    this.events,
    this.offsetMax,
    this.offsetMin,
    this.preserveDataGrouping,
    this.text,
    this.title,
    this.type,
  });

  /// (Highstock, Gantt) How many units of the defined type the button should
  final num? count;

  /// (Highstock) A custom data grouping object for each button.
  final HCDataGroupingOptionsObject? dataGrouping;

  final HCRangeSelectorButtonsEventsOptions? events;

  /// (Highstock, Gantt) Additional range (in milliseconds) added to the end of
  final num? offsetMax;

  /// (Highstock, Gantt) Additional range (in milliseconds) added to the start
  final num? offsetMin;

  /// (Highstock, Gantt) When buttons apply dataGrouping on a series, by
  final dynamic preserveDataGrouping;

  /// (Highstock, Gantt) The text for the button itself.
  final String? text;

  /// (Highstock, Gantt) Explanation for the button, shown as a tooltip on
  final String? title;

  /// (Highstock, Gantt) Defined the time span for the button. Can be one of
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (count != null) {
      json["count"] = count;
    }
    if (dataGrouping != null) {
      json["dataGrouping"] = dataGrouping!.toJson();
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (offsetMax != null) {
      json["offsetMax"] = offsetMax;
    }
    if (offsetMin != null) {
      json["offsetMin"] = offsetMin;
    }
    if (preserveDataGrouping != null) {
      json["preserveDataGrouping"] = hcJsonValue(preserveDataGrouping);
    }
    if (text != null) {
      json["text"] = text;
    }
    if (title != null) {
      json["title"] = title;
    }
    if (type != null) {
      json["type"] = type;
    }
    return json;
  }
}
