part of 'hc_options.dart';

/// (Highmaps) The `mapView` options control the initial view of the chart, and
class HCMapViewOptions implements HCOption {
  const HCMapViewOptions({
    this.center,
    this.fitToGeometry,
    this.insetOptions,
    this.insets,
    this.maxZoom,
    this.padding,
    this.projection,
    this.zoom,
  });

  /// (Highmaps) The center of the map in terms of longitude and latitude. For
  final List<num>? center;

  /// (Highmaps) Fit the map to a geometry object consisting of individual
  final dynamic fitToGeometry;

  /// (Highmaps) Generic options for the placement and appearance of map insets
  final HCMapViewInsetOptions? insetOptions;

  /// (Highmaps) The individual MapView insets, typically used for
  final dynamic insets;

  /// (Highmaps) Prevents the end user from zooming too far in on the map. See
  final num? maxZoom;

  /// (Highmaps) The padding inside the plot area when auto fitting to the map
  final dynamic padding;

  /// (Highmaps) The projection options allow applying client side projection
  final dynamic projection;

  /// (Highmaps) The zoom level of a map. Higher zoom levels means more zoomed
  final num? zoom;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (center != null) {
      json["center"] = center;
    }
    if (fitToGeometry != null) {
      json["fitToGeometry"] = hcJsonValue(fitToGeometry);
    }
    if (insetOptions != null) {
      json["insetOptions"] = insetOptions!.toJson();
    }
    if (insets != null) {
      json["insets"] = hcJsonValue(insets);
    }
    if (maxZoom != null) {
      json["maxZoom"] = maxZoom;
    }
    if (padding != null) {
      json["padding"] = hcJsonValue(padding);
    }
    if (projection != null) {
      json["projection"] = hcJsonValue(projection);
    }
    if (zoom != null) {
      json["zoom"] = zoom;
    }
    return json;
  }
}
