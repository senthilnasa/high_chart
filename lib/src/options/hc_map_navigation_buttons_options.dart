part of 'hc_options.dart';

/// (Highmaps) The individual buttons for the map navigation. This usually
class HCMapNavigationButtonsOptions implements HCOption {
  const HCMapNavigationButtonsOptions({
    this.zoomIn,
    this.zoomOut,
  });

  /// (Highmaps) Options for the zoom in button. Properties for the zoom in and
  final HCMapNavigationButtonsZoomInOptions? zoomIn;

  /// (Highmaps) Options for the zoom out button. Properties for the zoom in
  final HCMapNavigationButtonsZoomOutOptions? zoomOut;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (zoomIn != null) {
      json["zoomIn"] = zoomIn!.toJson();
    }
    if (zoomOut != null) {
      json["zoomOut"] = zoomOut!.toJson();
    }
    return json;
  }
}
