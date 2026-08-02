part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The text for exported table.
class HCLangExportDataOptions implements HCOption {
  const HCLangExportDataOptions({
    this.annotationHeader,
    this.categoryDatetimeHeader,
    this.categoryHeader,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The annotation column title.
  final String? annotationHeader;

  /// (Highcharts, Highstock, Highmaps, Gantt) The category column title when
  final String? categoryDatetimeHeader;

  /// (Highcharts, Highstock, Highmaps, Gantt) The category column title.
  final String? categoryHeader;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotationHeader != null) {
      json["annotationHeader"] = annotationHeader;
    }
    if (categoryDatetimeHeader != null) {
      json["categoryDatetimeHeader"] = categoryDatetimeHeader;
    }
    if (categoryHeader != null) {
      json["categoryHeader"] = categoryHeader;
    }
    return json;
  }
}
