part of 'hc_options.dart';

/// (Highstock) An options object of the buttons definitions. Each name refers to
class HCStockToolsGuiDefinitionsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsOptions({
    this.advanced,
    this.crookedLines,
    this.currentPriceIndicator,
    this.flags,
    this.fullScreen,
    this.indicators,
    this.lines,
    this.measure,
    this.saveChart,
    this.separator,
    this.simpleShapes,
    this.toggleAnnotations,
    this.typeChange,
    this.verticalLabels,
    this.zoomChange,
  });

  final HCStockToolsGuiDefinitionsAdvancedOptions? advanced;

  final HCStockToolsGuiDefinitionsCrookedLinesOptions? crookedLines;

  final HCStockToolsGuiDefinitionsCurrentPriceIndicatorOptions?
      currentPriceIndicator;

  final HCStockToolsGuiDefinitionsFlagsOptions? flags;

  final HCStockToolsGuiDefinitionsFullScreenOptions? fullScreen;

  final HCStockToolsGuiDefinitionsIndicatorsOptions? indicators;

  final HCStockToolsGuiDefinitionsLinesOptions? lines;

  final HCStockToolsGuiDefinitionsMeasureOptions? measure;

  final HCStockToolsGuiDefinitionsSaveChartOptions? saveChart;

  final HCStockToolsGuiDefinitionsSeparatorOptions? separator;

  final HCStockToolsGuiDefinitionsSimpleShapesOptions? simpleShapes;

  final HCStockToolsGuiDefinitionsToggleAnnotationsOptions? toggleAnnotations;

  final HCStockToolsGuiDefinitionsTypeChangeOptions? typeChange;

  final HCStockToolsGuiDefinitionsVerticalLabelsOptions? verticalLabels;

  final HCStockToolsGuiDefinitionsZoomChangeOptions? zoomChange;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (advanced != null) {
      json["advanced"] = advanced!.toJson();
    }
    if (crookedLines != null) {
      json["crookedLines"] = crookedLines!.toJson();
    }
    if (currentPriceIndicator != null) {
      json["currentPriceIndicator"] = currentPriceIndicator!.toJson();
    }
    if (flags != null) {
      json["flags"] = flags!.toJson();
    }
    if (fullScreen != null) {
      json["fullScreen"] = fullScreen!.toJson();
    }
    if (indicators != null) {
      json["indicators"] = indicators!.toJson();
    }
    if (lines != null) {
      json["lines"] = lines!.toJson();
    }
    if (measure != null) {
      json["measure"] = measure!.toJson();
    }
    if (saveChart != null) {
      json["saveChart"] = saveChart!.toJson();
    }
    if (separator != null) {
      json["separator"] = separator!.toJson();
    }
    if (simpleShapes != null) {
      json["simpleShapes"] = simpleShapes!.toJson();
    }
    if (toggleAnnotations != null) {
      json["toggleAnnotations"] = toggleAnnotations!.toJson();
    }
    if (typeChange != null) {
      json["typeChange"] = typeChange!.toJson();
    }
    if (verticalLabels != null) {
      json["verticalLabels"] = verticalLabels!.toJson();
    }
    if (zoomChange != null) {
      json["zoomChange"] = zoomChange!.toJson();
    }
    return json;
  }
}
