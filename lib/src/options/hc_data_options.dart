part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The Data module provides a
class HCDataOptions implements HCOption {
  const HCDataOptions({
    this.columns,
    this.columnsURL,
    this.columnTypes,
    this.csv,
    this.csvURL,
    this.dataRefreshRate,
    this.dateFormat,
    this.decimalPoint,
    this.enablePolling,
    this.endColumn,
    this.endRow,
    this.firstRowAsNames,
    this.googleAPIKey,
    this.googleSpreadsheetKey,
    this.googleSpreadsheetRange,
    this.googleSpreadsheetWorksheet,
    this.itemDelimiter,
    this.lineDelimiter,
    this.parseDate,
    this.rows,
    this.rowsURL,
    this.seriesMapping,
    this.startColumn,
    this.startRow,
    this.switchRowsAndColumns,
    this.table,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) A two-dimensional array
  final List<List<dynamic>>? columns;

  /// (Highcharts, Highstock, Highmaps, Gantt) A URL to a remote JSON dataset,
  final String? columnsURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array option that specifies
  final String? columnTypes;

  /// (Highcharts, Highstock, Highmaps, Gantt) A comma delimited string to be
  final String? csv;

  /// (Highcharts, Highstock, Highmaps, Gantt) An URL to a remote CSV dataset.
  final String? csvURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) Sets the refresh rate for data
  final num? dataRefreshRate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Which of the predefined date
  final String? dateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) The decimal point used for
  final String? decimalPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enables automatic refetching of
  final dynamic enablePolling;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the last
  final num? endColumn;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the last
  final num? endRow;

  /// (Highcharts, Highstock, Gantt) Whether to use the first row in the data
  final dynamic firstRowAsNames;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Google Spreadsheet API key
  final String? googleAPIKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) The key or `spreadsheetId` value
  final String? googleSpreadsheetKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Google Spreadsheet `range`
  final String? googleSpreadsheetRange;

  /// (Highcharts, Highstock, Highmaps, Gantt) No longer works since v9.2.2,
  final String? googleSpreadsheetWorksheet;

  /// (Highcharts, Highstock, Highmaps, Gantt) Item or cell delimiter for
  final String? itemDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) Line delimiter for parsing CSV.
  final String? lineDelimiter;

  /// (Highcharts, Highstock, Highmaps, Gantt) A callback function to parse
  final dynamic parseDate;

  /// (Highcharts, Highstock, Highmaps, Gantt) The same as the columns input
  final List<List<dynamic>>? rows;

  /// (Highcharts, Highstock, Highmaps, Gantt) A URL to a remote JSON dataset,
  final String? rowsURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing dictionaries
  final List<HCDictionary>? seriesMapping;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the first
  final num? startColumn;

  /// (Highcharts, Highstock, Highmaps, Gantt) In tabular input data, the first
  final num? startRow;

  /// (Highcharts, Highstock, Highmaps, Gantt) Switch rows and columns of the
  final dynamic switchRowsAndColumns;

  /// (Highcharts, Highstock, Highmaps, Gantt) An HTML table or the id of such
  final dynamic table;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (columns != null) {
      json["columns"] =
          columns!.map((e) => e.map((e) => hcJsonValue(e)).toList()).toList();
    }
    if (columnsURL != null) {
      json["columnsURL"] = columnsURL;
    }
    if (columnTypes != null) {
      json["columnTypes"] = columnTypes;
    }
    if (csv != null) {
      json["csv"] = csv;
    }
    if (csvURL != null) {
      json["csvURL"] = csvURL;
    }
    if (dataRefreshRate != null) {
      json["dataRefreshRate"] = dataRefreshRate;
    }
    if (dateFormat != null) {
      json["dateFormat"] = dateFormat;
    }
    if (decimalPoint != null) {
      json["decimalPoint"] = decimalPoint;
    }
    if (enablePolling != null) {
      json["enablePolling"] = hcJsonValue(enablePolling);
    }
    if (endColumn != null) {
      json["endColumn"] = endColumn;
    }
    if (endRow != null) {
      json["endRow"] = endRow;
    }
    if (firstRowAsNames != null) {
      json["firstRowAsNames"] = hcJsonValue(firstRowAsNames);
    }
    if (googleAPIKey != null) {
      json["googleAPIKey"] = googleAPIKey;
    }
    if (googleSpreadsheetKey != null) {
      json["googleSpreadsheetKey"] = googleSpreadsheetKey;
    }
    if (googleSpreadsheetRange != null) {
      json["googleSpreadsheetRange"] = googleSpreadsheetRange;
    }
    if (googleSpreadsheetWorksheet != null) {
      json["googleSpreadsheetWorksheet"] = googleSpreadsheetWorksheet;
    }
    if (itemDelimiter != null) {
      json["itemDelimiter"] = itemDelimiter;
    }
    if (lineDelimiter != null) {
      json["lineDelimiter"] = lineDelimiter;
    }
    if (parseDate != null) {
      json["parseDate"] = hcJsonValue(parseDate);
    }
    if (rows != null) {
      json["rows"] =
          rows!.map((e) => e.map((e) => hcJsonValue(e)).toList()).toList();
    }
    if (rowsURL != null) {
      json["rowsURL"] = rowsURL;
    }
    if (seriesMapping != null) {
      json["seriesMapping"] = seriesMapping!.map((e) => e.toJson()).toList();
    }
    if (startColumn != null) {
      json["startColumn"] = startColumn;
    }
    if (startRow != null) {
      json["startRow"] = startRow;
    }
    if (switchRowsAndColumns != null) {
      json["switchRowsAndColumns"] = hcJsonValue(switchRowsAndColumns);
    }
    if (table != null) {
      json["table"] = hcJsonValue(table);
    }
    return json;
  }
}
