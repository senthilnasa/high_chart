part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for one or many chart-level
class HCDataTableOptions implements HCOption {
  const HCDataTableOptions({
    this.columns,
    this.id,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of data table
  final Map<String, dynamic>? columns;

  /// (Highcharts, Highstock, Highmaps, Gantt) Custom ID to identify the new
  final String? id;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (columns != null) {
      json["columns"] = columns!.map((k, v) => MapEntry(k, hcJsonValue(v)));
    }
    if (id != null) {
      json["id"] = id;
    }
    return json;
  }
}
