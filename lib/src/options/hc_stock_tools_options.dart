part of 'hc_options.dart';

/// (Highstock) Configure the stockTools gui strings in the chart. Requires the
class HCStockToolsOptions implements HCOption {
  const HCStockToolsOptions({
    this.gui,
  });

  /// (Highstock) Definitions of buttons in Stock Tools GUI.
  final HCStockToolsGuiOptions? gui;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (gui != null) {
      json["gui"] = gui!.toJson();
    }
    return json;
  }
}
