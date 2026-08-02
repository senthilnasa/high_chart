part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Exporting menu format strings for
class HCLangAccessibilityExportingOptions implements HCOption {
  const HCLangAccessibilityExportingOptions({
    this.chartMenuLabel,
    this.menuButtonLabel,
  });

  final String? chartMenuLabel;

  final String? menuButtonLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (chartMenuLabel != null) {
      json["chartMenuLabel"] = chartMenuLabel;
    }
    if (menuButtonLabel != null) {
      json["menuButtonLabel"] = menuButtonLabel;
    }
    return json;
  }
}
