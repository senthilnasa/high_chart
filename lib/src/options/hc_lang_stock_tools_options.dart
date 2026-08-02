part of 'hc_options.dart';

/// (Highstock) Configure the stockTools GUI titles(hints) in the chart. Requires
class HCLangStockToolsOptions implements HCOption {
  const HCLangStockToolsOptions({
    this.gui,
  });

  final HCLangStockToolsGuiOptions? gui;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (gui != null) {
      json["gui"] = gui!.toJson();
    }
    return json;
  }
}
