part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsFlagsOptions implements HCOption {
  const HCStockToolsGuiDefinitionsFlagsOptions({
    this.flagCirclepin,
    this.flagDiamondpin,
    this.flagSimplepin,
    this.flagSquarepin,
    this.items,
  });

  final HCStockToolsGuiDefinitionsFlagsFlagCirclepinOptions? flagCirclepin;

  final HCStockToolsGuiDefinitionsFlagsFlagDiamondpinOptions? flagDiamondpin;

  final HCStockToolsGuiDefinitionsFlagsFlagSimplepinOptions? flagSimplepin;

  final HCStockToolsGuiDefinitionsFlagsFlagSquarepinOptions? flagSquarepin;

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (flagCirclepin != null) {
      json["flagCirclepin"] = flagCirclepin!.toJson();
    }
    if (flagDiamondpin != null) {
      json["flagDiamondpin"] = flagDiamondpin!.toJson();
    }
    if (flagSimplepin != null) {
      json["flagSimplepin"] = flagSimplepin!.toJson();
    }
    if (flagSquarepin != null) {
      json["flagSquarepin"] = flagSquarepin!.toJson();
    }
    if (items != null) {
      json["items"] = items;
    }
    return json;
  }
}
