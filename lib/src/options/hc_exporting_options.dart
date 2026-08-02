part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the exporting module.
class HCExportingOptions implements HCOption {
  const HCExportingOptions({
    this.accessibility,
    this.allowHTML,
    this.allowTableSorting,
    this.applyStyleSheets,
    this.buttons,
    this.chartOptions,
    this.csv,
    this.enabled,
    this.fallbackToExportServer,
    this.fetchOptions,
    this.filename,
    this.formAttributes,
    this.libURL,
    this.local,
    this.menuItemDefinitions,
    this.pdfFont,
    this.printMaxWidth,
    this.scale,
    this.showExportInProgress,
    this.showTable,
    this.sourceHeight,
    this.sourceWidth,
    this.tableCaption,
    this.type,
    this.url,
    this.useMultiLevelHeaders,
    this.useRowspanHeaders,
    this.width,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the
  final HCExportingAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow HTML inside the chart
  final dynamic allowHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allows the end user to sort the
  final dynamic allowTableSorting;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow exporting a chart
  final dynamic applyStyleSheets;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the export related
  final dynamic buttons;

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional chart options to be
  final HCOptions? chartOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for exporting data to
  final HCExportingCsvOptions? csv;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable the exporting
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to fall back to
  final dynamic fallbackToExportServer;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the fetch request
  final dynamic fetchOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) The filename, without extension,
  final String? filename;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highcharts v11.2.0 and older. An
  final HCDictionary? formAttributes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Path where Highcharts will look
  final String? libURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the chart should be
  final dynamic local;

  /// (Highcharts, Highstock, Highmaps, Gantt) An object consisting of
  final dynamic menuItemDefinitions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Settings for a custom font for
  final HCExportingPdfFontOptions? pdfFont;

  /// (Highcharts, Highstock, Highmaps, Gantt) When printing the chart from the
  final num? printMaxWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Defines the scale or zoom factor
  final num? scale;

  /// (Highcharts, Highstock, Highmaps, Gantt) Display a message when export is
  final dynamic showExportInProgress;

  /// (Highcharts, Highstock, Highmaps, Gantt) Show a HTML table below the
  final dynamic showTable;

  /// (Highcharts, Highstock, Highmaps, Gantt) Analogous to sourceWidth.
  final num? sourceHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the original chart
  final num? sourceWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Caption for the data table. Same
  final dynamic tableCaption;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default MIME type for exporting
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for the server module
  final dynamic url;

  /// (Highcharts, Highstock, Highmaps, Gantt) Use multi level headers in data
  final dynamic useMultiLevelHeaders;

  /// (Highcharts, Highstock, Highmaps, Gantt) If using multi level table
  final dynamic useRowspanHeaders;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of charts
  final num? width;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (allowHTML != null) {
      json["allowHTML"] = hcJsonValue(allowHTML);
    }
    if (allowTableSorting != null) {
      json["allowTableSorting"] = hcJsonValue(allowTableSorting);
    }
    if (applyStyleSheets != null) {
      json["applyStyleSheets"] = hcJsonValue(applyStyleSheets);
    }
    if (buttons != null) {
      json["buttons"] = hcJsonValue(buttons);
    }
    if (chartOptions != null) {
      json["chartOptions"] = chartOptions!.toJson();
    }
    if (csv != null) {
      json["csv"] = csv!.toJson();
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (fallbackToExportServer != null) {
      json["fallbackToExportServer"] = hcJsonValue(fallbackToExportServer);
    }
    if (fetchOptions != null) {
      json["fetchOptions"] = hcJsonValue(fetchOptions);
    }
    if (filename != null) {
      json["filename"] = filename;
    }
    if (formAttributes != null) {
      json["formAttributes"] = formAttributes!.toJson();
    }
    if (libURL != null) {
      json["libURL"] = libURL;
    }
    if (local != null) {
      json["local"] = hcJsonValue(local);
    }
    if (menuItemDefinitions != null) {
      json["menuItemDefinitions"] = hcJsonValue(menuItemDefinitions);
    }
    if (pdfFont != null) {
      json["pdfFont"] = pdfFont!.toJson();
    }
    if (printMaxWidth != null) {
      json["printMaxWidth"] = printMaxWidth;
    }
    if (scale != null) {
      json["scale"] = scale;
    }
    if (showExportInProgress != null) {
      json["showExportInProgress"] = hcJsonValue(showExportInProgress);
    }
    if (showTable != null) {
      json["showTable"] = hcJsonValue(showTable);
    }
    if (sourceHeight != null) {
      json["sourceHeight"] = sourceHeight;
    }
    if (sourceWidth != null) {
      json["sourceWidth"] = sourceWidth;
    }
    if (tableCaption != null) {
      json["tableCaption"] = hcJsonValue(tableCaption);
    }
    if (type != null) {
      json["type"] = type;
    }
    if (url != null) {
      json["url"] = hcJsonValue(url);
    }
    if (useMultiLevelHeaders != null) {
      json["useMultiLevelHeaders"] = hcJsonValue(useMultiLevelHeaders);
    }
    if (useRowspanHeaders != null) {
      json["useRowspanHeaders"] = hcJsonValue(useRowspanHeaders);
    }
    if (width != null) {
      json["width"] = width;
    }
    return json;
  }
}
