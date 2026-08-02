part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsSimpleShapesOptions implements HCOption {
  const HCStockToolsGuiDefinitionsSimpleShapesOptions({
    this.circle,
    this.ellipse,
    this.items,
    this.label,
    this.rectangle,
  });

  final HCStockToolsGuiDefinitionsSimpleShapesCircleOptions? circle;

  final HCStockToolsGuiDefinitionsSimpleShapesEllipseOptions? ellipse;

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  final HCStockToolsGuiDefinitionsSimpleShapesLabelOptions? label;

  final HCStockToolsGuiDefinitionsSimpleShapesRectangleOptions? rectangle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (circle != null) {
      json["circle"] = circle!.toJson();
    }
    if (ellipse != null) {
      json["ellipse"] = ellipse!.toJson();
    }
    if (items != null) {
      json["items"] = items;
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (rectangle != null) {
      json["rectangle"] = rectangle!.toJson();
    }
    return json;
  }
}
