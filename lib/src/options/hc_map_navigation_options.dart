part of 'hc_options.dart';

/// (Highmaps) The `mapNavigation` option handles buttons for navigation in
class HCMapNavigationOptions implements HCOption {
  const HCMapNavigationOptions({
    this.buttonOptions,
    this.buttons,
    this.enableButtons,
    this.enabled,
    this.enableDoubleClickZoom,
    this.enableDoubleClickZoomTo,
    this.enableMouseWheelZoom,
    this.enableTouchZoom,
    this.mouseWheelSensitivity,
  });

  /// (Highmaps) General options for the map navigation buttons. Individual
  final HCMapNavigationButtonOptions? buttonOptions;

  /// (Highmaps) The individual buttons for the map navigation. This usually
  final HCMapNavigationButtonsOptions? buttons;

  /// (Highmaps) Whether to enable navigation buttons. By default it inherits
  final dynamic enableButtons;

  /// (Highmaps) Whether to enable map navigation. The default is not to enable
  final dynamic enabled;

  /// (Highmaps) Enables zooming in on an area on double clicking in the map.
  final dynamic enableDoubleClickZoom;

  /// (Highmaps) Whether to zoom in on an area when that area is double
  final dynamic enableDoubleClickZoomTo;

  /// (Highmaps) Enables zooming by mouse wheel. By default it inherits the
  final dynamic enableMouseWheelZoom;

  /// (Highmaps) Whether to enable multitouch zooming. Note that if the chart
  final dynamic enableTouchZoom;

  /// (Highmaps) Sensitivity of mouse wheel or trackpad scrolling. 1 is no
  final num? mouseWheelSensitivity;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonOptions != null) {
      json["buttonOptions"] = buttonOptions!.toJson();
    }
    if (buttons != null) {
      json["buttons"] = buttons!.toJson();
    }
    if (enableButtons != null) {
      json["enableButtons"] = hcJsonValue(enableButtons);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (enableDoubleClickZoom != null) {
      json["enableDoubleClickZoom"] = hcJsonValue(enableDoubleClickZoom);
    }
    if (enableDoubleClickZoomTo != null) {
      json["enableDoubleClickZoomTo"] = hcJsonValue(enableDoubleClickZoomTo);
    }
    if (enableMouseWheelZoom != null) {
      json["enableMouseWheelZoom"] = hcJsonValue(enableMouseWheelZoom);
    }
    if (enableTouchZoom != null) {
      json["enableTouchZoom"] = hcJsonValue(enableTouchZoom);
    }
    if (mouseWheelSensitivity != null) {
      json["mouseWheelSensitivity"] = mouseWheelSensitivity;
    }
    return json;
  }
}
