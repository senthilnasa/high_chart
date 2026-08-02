part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsZoomChangeOptions implements HCOption {
  const HCStockToolsGuiDefinitionsZoomChangeOptions({
    this.items,
    this.zoomX,
    this.zoomXY,
    this.zoomY,
  });

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  final HCStockToolsGuiDefinitionsZoomChangeZoomXOptions? zoomX;

  final HCStockToolsGuiDefinitionsZoomChangeZoomXYOptions? zoomXY;

  final HCStockToolsGuiDefinitionsZoomChangeZoomYOptions? zoomY;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (items != null) {
      json["items"] = items;
    }
    if (zoomX != null) {
      json["zoomX"] = zoomX!.toJson();
    }
    if (zoomXY != null) {
      json["zoomXY"] = zoomXY!.toJson();
    }
    if (zoomY != null) {
      json["zoomY"] = zoomY!.toJson();
    }
    return json;
  }
}
