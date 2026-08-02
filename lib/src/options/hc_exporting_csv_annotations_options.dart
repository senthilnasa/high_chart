part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for annotations in the
class HCExportingCsvAnnotationsOptions implements HCOption {
  const HCExportingCsvAnnotationsOptions({
    this.itemDelimiter,
    this.join,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The way to mark the separator
  final String? itemDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) When several labels are assigned
  final dynamic join;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (itemDelimiter != null) {
      json["itemDelimiter"] = itemDelimiter;
    }
    if (join != null) {
      json["join"] = hcJsonValue(join);
    }
    return json;
  }
}
