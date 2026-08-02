part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) An object consisting of definitions
class HCExportingMenuItemDefinitionsOptions implements HCOption {
  const HCExportingMenuItemDefinitionsOptions({
    this.downloadCSV,
    this.downloadJPEG,
    this.downloadPDF,
    this.downloadPNG,
    this.downloadSVG,
    this.downloadXLS,
    this.printChart,
    this.separator,
    this.viewData,
    this.viewFullscreen,
  });

  final HCExportingMenuItemDefinitionsDownloadCSVOptions? downloadCSV;

  final HCExportingMenuItemDefinitionsDownloadJPEGOptions? downloadJPEG;

  final HCExportingMenuItemDefinitionsDownloadPDFOptions? downloadPDF;

  final HCExportingMenuItemDefinitionsDownloadPNGOptions? downloadPNG;

  final HCExportingMenuItemDefinitionsDownloadSVGOptions? downloadSVG;

  final HCExportingMenuItemDefinitionsDownloadXLSOptions? downloadXLS;

  final HCExportingMenuItemDefinitionsPrintChartOptions? printChart;

  final HCExportingMenuItemDefinitionsSeparatorOptions? separator;

  final HCExportingMenuItemDefinitionsViewDataOptions? viewData;

  final HCExportingMenuItemDefinitionsViewFullscreenOptions? viewFullscreen;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (downloadCSV != null) {
      json["downloadCSV"] = downloadCSV!.toJson();
    }
    if (downloadJPEG != null) {
      json["downloadJPEG"] = downloadJPEG!.toJson();
    }
    if (downloadPDF != null) {
      json["downloadPDF"] = downloadPDF!.toJson();
    }
    if (downloadPNG != null) {
      json["downloadPNG"] = downloadPNG!.toJson();
    }
    if (downloadSVG != null) {
      json["downloadSVG"] = downloadSVG!.toJson();
    }
    if (downloadXLS != null) {
      json["downloadXLS"] = downloadXLS!.toJson();
    }
    if (printChart != null) {
      json["printChart"] = printChart!.toJson();
    }
    if (separator != null) {
      json["separator"] = separator!.toJson();
    }
    if (viewData != null) {
      json["viewData"] = viewData!.toJson();
    }
    if (viewFullscreen != null) {
      json["viewFullscreen"] = viewFullscreen!.toJson();
    }
    return json;
  }
}
