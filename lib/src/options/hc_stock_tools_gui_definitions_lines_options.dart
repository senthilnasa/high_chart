part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsLinesOptions implements HCOption {
  const HCStockToolsGuiDefinitionsLinesOptions({
    this.arrowInfinityLine,
    this.arrowRay,
    this.arrowSegment,
    this.horizontalLine,
    this.items,
    this.line,
    this.ray,
    this.segment,
    this.verticalLine,
  });

  final HCStockToolsGuiDefinitionsLinesArrowInfinityLineOptions?
      arrowInfinityLine;

  final HCStockToolsGuiDefinitionsLinesArrowRayOptions? arrowRay;

  final HCStockToolsGuiDefinitionsLinesArrowSegmentOptions? arrowSegment;

  final HCStockToolsGuiDefinitionsLinesHorizontalLineOptions? horizontalLine;

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  final HCStockToolsGuiDefinitionsLinesLineOptions? line;

  final HCStockToolsGuiDefinitionsLinesRayOptions? ray;

  final HCStockToolsGuiDefinitionsLinesSegmentOptions? segment;

  final HCStockToolsGuiDefinitionsLinesVerticalLineOptions? verticalLine;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arrowInfinityLine != null) {
      json["arrowInfinityLine"] = arrowInfinityLine!.toJson();
    }
    if (arrowRay != null) {
      json["arrowRay"] = arrowRay!.toJson();
    }
    if (arrowSegment != null) {
      json["arrowSegment"] = arrowSegment!.toJson();
    }
    if (horizontalLine != null) {
      json["horizontalLine"] = horizontalLine!.toJson();
    }
    if (items != null) {
      json["items"] = items;
    }
    if (line != null) {
      json["line"] = line!.toJson();
    }
    if (ray != null) {
      json["ray"] = ray!.toJson();
    }
    if (segment != null) {
      json["segment"] = segment!.toJson();
    }
    if (verticalLine != null) {
      json["verticalLine"] = verticalLine!.toJson();
    }
    return json;
  }
}
