part of 'hc_options.dart';

/// (Highcharts) An option to optimize treemap series rendering by grouping
class HCPlotTreemapClusterOptions implements HCOption {
  const HCPlotTreemapClusterOptions({
    this.className,
    this.color,
    this.enabled,
    this.layoutAlgorithm,
    this.marker,
    this.minimumClusterSize,
    this.name,
    this.pixelHeight,
    this.pixelWidth,
    this.reductionFactor,
  });

  /// (Highcharts) An additional, individual class name for the grouped point's
  final String? className;

  /// (Highcharts) Individual color for the grouped point. By default the color
  final dynamic color;

  /// (Highcharts) Enable or disable Treemap grouping.
  final dynamic enabled;

  final HCPlotTreemapClusterLayoutAlgorithmOptions? layoutAlgorithm;

  final HCPlotTreemapClusterMarkerOptions? marker;

  /// (Highcharts) Defines the minimum number of child nodes required to create
  final num? minimumClusterSize;

  /// (Highcharts) The name of the point of grouped nodes shown in the tooltip,
  final String? name;

  /// (Highcharts) The pixel threshold height of area, which is used in Treemap
  final num? pixelHeight;

  /// (Highcharts) The pixel threshold width of area, which is used in Treemap
  final num? pixelWidth;

  /// (Highcharts) A configuration property that specifies the factor by which
  final num? reductionFactor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (layoutAlgorithm != null) {
      json["layoutAlgorithm"] = layoutAlgorithm!.toJson();
    }
    if (marker != null) {
      json["marker"] = marker!.toJson();
    }
    if (minimumClusterSize != null) {
      json["minimumClusterSize"] = minimumClusterSize;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (pixelHeight != null) {
      json["pixelHeight"] = pixelHeight;
    }
    if (pixelWidth != null) {
      json["pixelWidth"] = pixelWidth;
    }
    if (reductionFactor != null) {
      json["reductionFactor"] = reductionFactor;
    }
    return json;
  }
}
