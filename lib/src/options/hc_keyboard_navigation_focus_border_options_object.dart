part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the focus border drawn
class HCKeyboardNavigationFocusBorderOptionsObject implements HCOption {
  const HCKeyboardNavigationFocusBorderOptionsObject({
    this.enabled,
    this.hideBrowserFocusOutline,
    this.margin,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable/disable focus border for
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Hide the browser's default focus
  final dynamic hideBrowserFocusOutline;

  /// (Highcharts, Highstock, Highmaps, Gantt) Focus border margin around the
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) Style options for the focus
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (hideBrowserFocusOutline != null) {
      json["hideBrowserFocusOutline"] = hcJsonValue(hideBrowserFocusOutline);
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    return json;
  }
}
