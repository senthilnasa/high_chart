part of 'hc_options.dart';

/// (Highcharts, Highstock) A collection of SVG attributes to override the
class HCPlotTilemapStatesHoverHaloAttributesOptions implements HCOption {
  const HCPlotTilemapStatesHoverHaloAttributesOptions({
    this.zIndex,
  });

  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
