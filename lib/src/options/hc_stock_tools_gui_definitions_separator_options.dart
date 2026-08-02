part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsSeparatorOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSeparatorOptions({
    this.elementType,
    this.symbol,
  });

  final String? elementType;

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (elementType != null) {
      json["elementType"] = elementType;
    }
    if (symbol != null) {
      json["symbol"] = symbol;
    }
    return json;
  }
}
