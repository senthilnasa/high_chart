part of 'hc_options.dart';

/// (Highstock) Definitions of buttons in Stock Tools GUI.
class HCStockToolsGuiOptions implements HCOption {
  const HCStockToolsGuiOptions({
    this.buttons,
    this.className,
    this.definitions,
    this.enabled,
    this.iconsURL,
    this.toolbarClassName,
    this.visible,
  });

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? buttons;

  /// (Highstock) A CSS class name to apply to the stocktools' div, allowing
  final String? className;

  /// (Highstock) An options object of the buttons definitions. Each name
  final HCStockToolsGuiDefinitionsOptions? definitions;

  /// (Highstock) Enable or disable the stockTools gui.
  final dynamic enabled;

  /// (Highstock) Path where Highcharts will look for icons. Change this to use
  final dynamic iconsURL;

  /// (Highstock) A CSS class name to apply to the container of buttons,
  final String? toolbarClassName;

  /// (Highstock) Whether the stock tools toolbar is visible.
  final dynamic visible;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttons != null) {
      json["buttons"] = buttons;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (definitions != null) {
      json["definitions"] = definitions!.toJson();
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (iconsURL != null) {
      json["iconsURL"] = hcJsonValue(iconsURL);
    }
    if (toolbarClassName != null) {
      json["toolbarClassName"] = toolbarClassName;
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    return json;
  }
}
