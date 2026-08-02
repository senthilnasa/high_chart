part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The palette object specifies colors
class HCPaletteOptions implements HCOption {
  const HCPaletteOptions({
    this.colors,
    this.colorScheme,
    this.dark,
    this.injectCSS,
    this.light,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Colors for data series and
  final List<String>? colors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color scheme to use. When `light
  final String? colorScheme;

  /// (Highcharts, Highstock, Highmaps, Gantt) Palette options for dark mode.
  final HCPaletteDarkOptions? dark;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to inject the CSS for
  final dynamic injectCSS;

  /// (Highcharts, Highstock, Highmaps, Gantt) Palette options for light mode.
  final HCPaletteLightOptions? light;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (colors != null) {
      json["colors"] = colors;
    }
    if (colorScheme != null) {
      json["colorScheme"] = colorScheme;
    }
    if (dark != null) {
      json["dark"] = dark!.toJson();
    }
    if (injectCSS != null) {
      json["injectCSS"] = hcJsonValue(injectCSS);
    }
    if (light != null) {
      json["light"] = light!.toJson();
    }
    return json;
  }
}
