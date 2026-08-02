part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsCrookedLinesOptions implements HCOption {
  const HCStockToolsGuiDefinitionsCrookedLinesOptions({
    this.crooked3,
    this.crooked5,
    this.elliott3,
    this.elliott5,
    this.items,
  });

  final HCStockToolsGuiDefinitionsCrookedLinesCrooked3Options? crooked3;

  final HCStockToolsGuiDefinitionsCrookedLinesCrooked5Options? crooked5;

  final HCStockToolsGuiDefinitionsCrookedLinesElliott3Options? elliott3;

  final HCStockToolsGuiDefinitionsCrookedLinesElliott5Options? elliott5;

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (crooked3 != null) {
      json["crooked3"] = crooked3!.toJson();
    }
    if (crooked5 != null) {
      json["crooked5"] = crooked5!.toJson();
    }
    if (elliott3 != null) {
      json["elliott3"] = elliott3!.toJson();
    }
    if (elliott5 != null) {
      json["elliott5"] = elliott5!.toJson();
    }
    if (items != null) {
      json["items"] = items;
    }
    return json;
  }
}
