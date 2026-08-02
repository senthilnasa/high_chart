part of 'hc_options.dart';

/// (Highstock) Properties for each single point.
class HCPlotSeriesPointOptions implements HCOption {
  const HCPlotSeriesPointOptions({
    this.events,
  });

  /// (Highstock) Events for each single point.
  final HCPointEventsOptionsObject? events;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (events != null) {
      json["events"] = events!.toJson();
    }
    return json;
  }
}
