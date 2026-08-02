part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Default announcement for new data in
class HCLangAccessibilityAnnounceNewDataOptions implements HCOption {
  const HCLangAccessibilityAnnounceNewDataOptions({
    this.newDataAnnounce,
    this.newPointAnnounceMultiple,
    this.newPointAnnounceSingle,
    this.newSeriesAnnounceMultiple,
    this.newSeriesAnnounceSingle,
  });

  final String? newDataAnnounce;

  final String? newPointAnnounceMultiple;

  final String? newPointAnnounceSingle;

  final String? newSeriesAnnounceMultiple;

  final String? newSeriesAnnounceSingle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (newDataAnnounce != null) {
      json["newDataAnnounce"] = newDataAnnounce;
    }
    if (newPointAnnounceMultiple != null) {
      json["newPointAnnounceMultiple"] = newPointAnnounceMultiple;
    }
    if (newPointAnnounceSingle != null) {
      json["newPointAnnounceSingle"] = newPointAnnounceSingle;
    }
    if (newSeriesAnnounceMultiple != null) {
      json["newSeriesAnnounceMultiple"] = newSeriesAnnounceMultiple;
    }
    if (newSeriesAnnounceSingle != null) {
      json["newSeriesAnnounceSingle"] = newSeriesAnnounceSingle;
    }
    return json;
  }
}
