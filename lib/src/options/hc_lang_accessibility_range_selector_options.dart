part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Range selector language options for
class HCLangAccessibilityRangeSelectorOptions implements HCOption {
  const HCLangAccessibilityRangeSelectorOptions({
    this.clickButtonAnnouncement,
    this.dropdownLabel,
    this.maxInputLabel,
    this.minInputLabel,
  });

  final String? clickButtonAnnouncement;

  final String? dropdownLabel;

  final String? maxInputLabel;

  final String? minInputLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (clickButtonAnnouncement != null) {
      json["clickButtonAnnouncement"] = clickButtonAnnouncement;
    }
    if (dropdownLabel != null) {
      json["dropdownLabel"] = dropdownLabel;
    }
    if (maxInputLabel != null) {
      json["maxInputLabel"] = maxInputLabel;
    }
    if (minInputLabel != null) {
      json["minInputLabel"] = minInputLabel;
    }
    return json;
  }
}
