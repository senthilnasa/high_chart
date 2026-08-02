part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsVerticalLabelsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsVerticalLabelsOptions({
    this.items,
    this.verticalArrow,
    this.verticalCounter,
    this.verticalLabel,
  });

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  final HCStockToolsGuiDefinitionsVerticalLabelsVerticalArrowOptions?
      verticalArrow;

  final HCStockToolsGuiDefinitionsVerticalLabelsVerticalCounterOptions?
      verticalCounter;

  final HCStockToolsGuiDefinitionsVerticalLabelsVerticalLabelOptions?
      verticalLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json["items"] = items;
    }
    if (verticalArrow != null) {
      json["verticalArrow"] = verticalArrow!.toJson();
    }
    if (verticalCounter != null) {
      json["verticalCounter"] = verticalCounter!.toJson();
    }
    if (verticalLabel != null) {
      json["verticalLabel"] = verticalLabel!.toJson();
    }
    return json;
  }
}
