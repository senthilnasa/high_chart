part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsMeasureOptions implements HCOption {
  const HCStockToolsGuiDefinitionsMeasureOptions({
    this.items,
    this.measureX,
    this.measureXY,
    this.measureY,
  });

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  final HCStockToolsGuiDefinitionsMeasureMeasureXOptions? measureX;

  final HCStockToolsGuiDefinitionsMeasureMeasureXYOptions? measureXY;

  final HCStockToolsGuiDefinitionsMeasureMeasureYOptions? measureY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json["items"] = items;
    }
    if (measureX != null) {
      json["measureX"] = measureX!.toJson();
    }
    if (measureXY != null) {
      json["measureXY"] = measureXY!.toJson();
    }
    if (measureY != null) {
      json["measureY"] = measureY!.toJson();
    }
    return json;
  }
}
