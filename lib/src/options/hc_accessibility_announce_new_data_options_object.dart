part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for announcing new data to
class HCAccessibilityAnnounceNewDataOptionsObject implements HCOption {
  const HCAccessibilityAnnounceNewDataOptionsObject({
    this.enabled,
    this.interruptUser,
    this.minAnnounceInterval,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable announcing new data to
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Choose whether or not the
  final dynamic interruptUser;

  /// (Highcharts, Highstock, Highmaps, Gantt) Minimum interval between
  final num? minAnnounceInterval;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (interruptUser != null) {
      json["interruptUser"] = hcJsonValue(interruptUser);
    }
    if (minAnnounceInterval != null) {
      json["minAnnounceInterval"] = minAnnounceInterval;
    }
    return json;
  }
}
