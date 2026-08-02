part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsTypeChangeOptions implements HCOption {
  const HCStockToolsGuiDefinitionsTypeChangeOptions({
    this.items,
    this.typeCandlestick,
    this.typeHeikinAshi,
    this.typeHLC,
    this.typeHollowCandlestick,
    this.typeLine,
    this.typeOHLC,
  });

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  final HCStockToolsGuiDefinitionsTypeChangeTypeCandlestickOptions?
      typeCandlestick;

  final HCStockToolsGuiDefinitionsTypeChangeTypeHeikinAshiOptions?
      typeHeikinAshi;

  final HCStockToolsGuiDefinitionsTypeChangeTypeHLCOptions? typeHLC;

  final HCStockToolsGuiDefinitionsTypeChangeTypeHollowCandlestickOptions?
      typeHollowCandlestick;

  final HCStockToolsGuiDefinitionsTypeChangeTypeLineOptions? typeLine;

  final HCStockToolsGuiDefinitionsTypeChangeTypeOHLCOptions? typeOHLC;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json["items"] = items;
    }
    if (typeCandlestick != null) {
      json["typeCandlestick"] = typeCandlestick!.toJson();
    }
    if (typeHeikinAshi != null) {
      json["typeHeikinAshi"] = typeHeikinAshi!.toJson();
    }
    if (typeHLC != null) {
      json["typeHLC"] = typeHLC!.toJson();
    }
    if (typeHollowCandlestick != null) {
      json["typeHollowCandlestick"] = typeHollowCandlestick!.toJson();
    }
    if (typeLine != null) {
      json["typeLine"] = typeLine!.toJson();
    }
    if (typeOHLC != null) {
      json["typeOHLC"] = typeOHLC!.toJson();
    }
    return json;
  }
}
