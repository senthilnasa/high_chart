part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) An object containing
class HCLangOptions implements HCOption {
  const HCLangOptions({
    this.accessibility,
    this.chartTitle,
    this.contextButtonTitle,
    this.decimalPoint,
    this.downloadCSV,
    this.downloadJPEG,
    this.downloadMIDI,
    this.downloadPDF,
    this.downloadPNG,
    this.downloadSVG,
    this.downloadXLS,
    this.drillUpText,
    this.exitFullscreen,
    this.exportData,
    this.exportInProgress,
    this.hideData,
    this.invalidDate,
    this.loading,
    this.locale,
    this.mainBreadcrumb,
    this.months,
    this.navigation,
    this.noData,
    this.numericSymbolMagnitude,
    this.numericSymbols,
    this.pieSliceName,
    this.playAsSound,
    this.printChart,
    this.rangeSelector,
    this.rangeSelectorFrom,
    this.rangeSelectorTo,
    this.rangeSelectorZoom,
    this.resetZoom,
    this.resetZoomTitle,
    this.seriesName,
    this.shortMonths,
    this.shortWeekdays,
    this.stockTools,
    this.thousandsSep,
    this.viewData,
    this.viewFullscreen,
    this.weekdays,
    this.weekFrom,
    this.yAxisTitle,
    this.zoomIn,
    this.zoomOut,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Configure the accessibility
  final HCLangAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default chart title.
  final String? chartTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module menu. The
  final String? contextButtonTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default decimal point used
  final String? decimalPoint;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? downloadCSV;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text
  final String? downloadJPEG;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the MIDI download
  final String? downloadMIDI;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text
  final String? downloadPDF;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text
  final String? downloadPNG;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text
  final String? downloadSVG;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? downloadXLS;

  /// (Highcharts, Highmaps) Drill up button is deprecated since Highcharts
  final dynamic drillUpText;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text
  final String? exitFullscreen;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for exported table.
  final HCLangExportDataOptions? exportData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text to show when export is in
  final String? exportInProgress;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? hideData;

  /// (Highcharts, Highstock) What to show in a date field for invalid dates.
  final String? invalidDate;

  /// (Highcharts, Highstock, Highmaps, Gantt) The loading text that appears
  final String? loading;

  /// (Highcharts, Highstock, Highmaps, Gantt) The browser locale to use for
  final dynamic locale;

  /// (Highcharts, Highmaps) The text for the main breadcrumb.
  final String? mainBreadcrumb;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the months
  final List<String>? months;

  /// (Highcharts, Highstock) Configure the Popup strings in the chart.
  final HCLangNavigationOptions? navigation;

  /// (Highcharts, Highstock) The text to display when the chart contains no
  final String? noData;

  /// (Highcharts, Highstock, Highmaps, Gantt) The magnitude of numericSymbols
  final num? numericSymbolMagnitude;

  /// (Highcharts, Highstock, Highmaps, Gantt) Metric prefixes used to shorten
  final List<String>? numericSymbols;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default name for a pie slice
  final String? pieSliceName;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the Play as sound
  final String? playAsSound;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text
  final String? printChart;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default text for the
  final HCLangRangeSelectorOptions? rangeSelector;

  /// (Highstock, Gantt) The text for the label for the "from" input box in the
  final String? rangeSelectorFrom;

  /// (Highstock, Gantt) The text for the label for the "to" input box in the
  final String? rangeSelectorTo;

  /// (Highstock, Gantt) The text for the label for the range selector buttons.
  final String? rangeSelectorZoom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the label appearing
  final String? resetZoom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The tooltip title for the label
  final String? resetZoomTitle;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format string for the default
  final String? seriesName;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the months
  final List<String>? shortMonths;

  /// (Highcharts, Highstock, Highmaps, Gantt) Short week days, starting
  final List<String>? shortWeekdays;

  /// (Highstock) Configure the stockTools GUI titles(hints) in the chart.
  final HCLangStockToolsOptions? stockTools;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default thousands separator
  final String? thousandsSep;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the menu item.
  final String? viewData;

  /// (Highcharts, Highstock, Highmaps, Gantt) Exporting module only. The text
  final String? viewFullscreen;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array containing the weekday
  final List<String>? weekdays;

  final String? weekFrom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The default title of the Y axis
  final String? yAxisTitle;

  /// (Highmaps) The title appearing on hovering the zoom in button. The text
  final String? zoomIn;

  /// (Highmaps) The title appearing on hovering the zoom out button. The text
  final String? zoomOut;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (chartTitle != null) {
      json["chartTitle"] = chartTitle;
    }
    if (contextButtonTitle != null) {
      json["contextButtonTitle"] = contextButtonTitle;
    }
    if (decimalPoint != null) {
      json["decimalPoint"] = decimalPoint;
    }
    if (downloadCSV != null) {
      json["downloadCSV"] = downloadCSV;
    }
    if (downloadJPEG != null) {
      json["downloadJPEG"] = downloadJPEG;
    }
    if (downloadMIDI != null) {
      json["downloadMIDI"] = downloadMIDI;
    }
    if (downloadPDF != null) {
      json["downloadPDF"] = downloadPDF;
    }
    if (downloadPNG != null) {
      json["downloadPNG"] = downloadPNG;
    }
    if (downloadSVG != null) {
      json["downloadSVG"] = downloadSVG;
    }
    if (downloadXLS != null) {
      json["downloadXLS"] = downloadXLS;
    }
    if (drillUpText != null) {
      json["drillUpText"] = hcJsonValue(drillUpText);
    }
    if (exitFullscreen != null) {
      json["exitFullscreen"] = exitFullscreen;
    }
    if (exportData != null) {
      json["exportData"] = exportData!.toJson();
    }
    if (exportInProgress != null) {
      json["exportInProgress"] = exportInProgress;
    }
    if (hideData != null) {
      json["hideData"] = hideData;
    }
    if (invalidDate != null) {
      json["invalidDate"] = invalidDate;
    }
    if (loading != null) {
      json["loading"] = loading;
    }
    if (locale != null) {
      json["locale"] = hcJsonValue(locale);
    }
    if (mainBreadcrumb != null) {
      json["mainBreadcrumb"] = mainBreadcrumb;
    }
    if (months != null) {
      json["months"] = months;
    }
    if (navigation != null) {
      json["navigation"] = navigation!.toJson();
    }
    if (noData != null) {
      json["noData"] = noData;
    }
    if (numericSymbolMagnitude != null) {
      json["numericSymbolMagnitude"] = numericSymbolMagnitude;
    }
    if (numericSymbols != null) {
      json["numericSymbols"] = numericSymbols;
    }
    if (pieSliceName != null) {
      json["pieSliceName"] = pieSliceName;
    }
    if (playAsSound != null) {
      json["playAsSound"] = playAsSound;
    }
    if (printChart != null) {
      json["printChart"] = printChart;
    }
    if (rangeSelector != null) {
      json["rangeSelector"] = rangeSelector!.toJson();
    }
    if (rangeSelectorFrom != null) {
      json["rangeSelectorFrom"] = rangeSelectorFrom;
    }
    if (rangeSelectorTo != null) {
      json["rangeSelectorTo"] = rangeSelectorTo;
    }
    if (rangeSelectorZoom != null) {
      json["rangeSelectorZoom"] = rangeSelectorZoom;
    }
    if (resetZoom != null) {
      json["resetZoom"] = resetZoom;
    }
    if (resetZoomTitle != null) {
      json["resetZoomTitle"] = resetZoomTitle;
    }
    if (seriesName != null) {
      json["seriesName"] = seriesName;
    }
    if (shortMonths != null) {
      json["shortMonths"] = shortMonths;
    }
    if (shortWeekdays != null) {
      json["shortWeekdays"] = shortWeekdays;
    }
    if (stockTools != null) {
      json["stockTools"] = stockTools!.toJson();
    }
    if (thousandsSep != null) {
      json["thousandsSep"] = thousandsSep;
    }
    if (viewData != null) {
      json["viewData"] = viewData;
    }
    if (viewFullscreen != null) {
      json["viewFullscreen"] = viewFullscreen;
    }
    if (weekdays != null) {
      json["weekdays"] = weekdays;
    }
    if (weekFrom != null) {
      json["weekFrom"] = weekFrom;
    }
    if (yAxisTitle != null) {
      json["yAxisTitle"] = yAxisTitle;
    }
    if (zoomIn != null) {
      json["zoomIn"] = zoomIn;
    }
    if (zoomOut != null) {
      json["zoomOut"] = zoomOut;
    }
    return json;
  }
}
