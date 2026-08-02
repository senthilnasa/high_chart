part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsMeasureMeasureYOptions implements HCOption {
  const HCStockToolsGuiDefinitionsMeasureMeasureYOptions({
    this.symbol,
  });

  /// (Highstock) A predefined background symbol for the button.
  final String? symbol;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (symbol != null) {
      json["symbol"] = symbol;
    }
    return json;
  }
}
