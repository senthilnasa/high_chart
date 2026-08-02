part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Navigator language options for
class HCLangAccessibilityNavigatorOptions implements HCOption {
  const HCLangAccessibilityNavigatorOptions({
    this.changeAnnouncement,
    this.groupLabel,
    this.handleLabel,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Announcement for assistive
  final String? changeAnnouncement;

  /// (Highcharts, Highstock, Highmaps, Gantt) Label for the navigator region.
  final String? groupLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Label for the navigator handles.
  final String? handleLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (changeAnnouncement != null) {
      json["changeAnnouncement"] = changeAnnouncement;
    }
    if (groupLabel != null) {
      json["groupLabel"] = groupLabel;
    }
    if (handleLabel != null) {
      json["handleLabel"] = handleLabel;
    }
    return json;
  }
}
