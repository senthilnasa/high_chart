part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for exporting data to CSV or
class HCExportingCsvOptions implements HCOption {
  const HCExportingCsvOptions({
    this.annotations,
    this.columnHeaderFormatter,
    this.dateFormat,
    this.decimalPoint,
    this.itemDelimiter,
    this.lineDelimiter,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotations in the
  final HCExportingCsvAnnotationsOptions? annotations;

  /// (Highcharts, Highstock, Highmaps, Gantt) Formatter callback for the
  final dynamic columnHeaderFormatter;

  /// (Highcharts, Highstock, Highmaps, Gantt) Which date format to use for
  final String? dateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Which decimal point to use for
  final String? decimalPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) The item delimiter in the
  final String? itemDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) The line delimiter in the
  final String? lineDelimiter;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotations != null) {
      json["annotations"] = annotations!.toJson();
    }
    if (columnHeaderFormatter != null) {
      json["columnHeaderFormatter"] = hcJsonValue(columnHeaderFormatter);
    }
    if (dateFormat != null) {
      json["dateFormat"] = dateFormat;
    }
    if (decimalPoint != null) {
      json["decimalPoint"] = decimalPoint;
    }
    if (itemDelimiter != null) {
      json["itemDelimiter"] = itemDelimiter;
    }
    if (lineDelimiter != null) {
      json["lineDelimiter"] = lineDelimiter;
    }
    return json;
  }
}
