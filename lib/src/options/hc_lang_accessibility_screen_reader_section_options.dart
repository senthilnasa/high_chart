part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for the screen
class HCLangAccessibilityScreenReaderSectionOptions implements HCOption {
  const HCLangAccessibilityScreenReaderSectionOptions({
    this.afterRegionLabel,
    this.annotations,
    this.beforeRegionLabel,
    this.endOfChartMarker,
  });

  final String? afterRegionLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Language options for annotation
  final HCLangAccessibilityScreenReaderSectionAnnotationsOptions? annotations;

  final String? beforeRegionLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Label for the end of the chart.
  final String? endOfChartMarker;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (afterRegionLabel != null) {
      json["afterRegionLabel"] = afterRegionLabel;
    }
    if (annotations != null) {
      json["annotations"] = annotations!.toJson();
    }
    if (beforeRegionLabel != null) {
      json["beforeRegionLabel"] = beforeRegionLabel;
    }
    if (endOfChartMarker != null) {
      json["endOfChartMarker"] = endOfChartMarker;
    }
    return json;
  }
}
