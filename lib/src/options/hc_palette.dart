part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Palette options for dark mode.
class HCPaletteDarkOptions implements HCOption {
  const HCPaletteDarkOptions({
    this.backgroundColor,
    this.colors,
    this.highlightColor,
    this.negativeColor,
    this.neutralColor,
    this.positiveColor,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart background, point stroke for markers and columns etc. The background is also used as base for interpolated neutral and highlight colors.
  final String? backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Colors for data series and points. This array extends the colors defined for the general `palette.colors` array, item by item. If an item is `null` or `undefined`, the general color will be used.
  final List<String>? colors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highlight color to be used as base for interpolated colors. For example, `var(--highcharts-highlight-color-60)` is a blend of the `highlightColor` and the `backgroundColor`, with a weight of 60% `highlightColor` and 40% `backgroundColor`.
  final String? highlightColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Negative color used in stock charts, such as for technical indicators, annotations or hollow candlestick series.
  final String? negativeColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Neutral color to be used as base for interpolated colors. For example, `var(--highcharts-neutral-color-60)` is a blend of the `neutralColor` and the `backgroundColor`, with a weight of 60% `neutralColor` and 40% `backgroundColor`.
  final String? neutralColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Positive color used in stock charts, such as for technical indicators, annotations or hollow candlestick series.
  final String? positiveColor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (colors != null) {
      json['colors'] = colors;
    }
    if (highlightColor != null) {
      json['highlightColor'] = highlightColor;
    }
    if (negativeColor != null) {
      json['negativeColor'] = negativeColor;
    }
    if (neutralColor != null) {
      json['neutralColor'] = neutralColor;
    }
    if (positiveColor != null) {
      json['positiveColor'] = positiveColor;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Palette options for light mode.
class HCPaletteLightOptions implements HCOption {
  const HCPaletteLightOptions({
    this.backgroundColor,
    this.colors,
    this.highlightColor,
    this.negativeColor,
    this.neutralColor,
    this.positiveColor,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart background, point stroke for markers and columns etc. The background is also used as base for interpolated neutral and highlight colors.
  final String? backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Colors for data series and points. This array extends the colors defined for the general `palette.colors` array, item by item. If an item is `null` or `undefined`, the general color will be used.
  final List<String>? colors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highlight color to be used as base for interpolated colors. For example, `var(--highcharts-highlight-color-60)` is a blend of the `highlightColor` and the `backgroundColor`, with a weight of 60% `highlightColor` and 40% `backgroundColor`.
  final String? highlightColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Negative color used in stock charts, such as for technical indicators, annotations or hollow candlestick series.
  final String? negativeColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Neutral color to be used as base for interpolated colors. For example, `var(--highcharts-neutral-color-60)` is a blend of the `neutralColor` and the `backgroundColor`, with a weight of 60% `neutralColor` and 40% `backgroundColor`.
  final String? neutralColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Positive color used in stock charts, such as for technical indicators, annotations or hollow candlestick series.
  final String? positiveColor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (colors != null) {
      json['colors'] = colors;
    }
    if (highlightColor != null) {
      json['highlightColor'] = highlightColor;
    }
    if (negativeColor != null) {
      json['negativeColor'] = negativeColor;
    }
    if (neutralColor != null) {
      json['neutralColor'] = neutralColor;
    }
    if (positiveColor != null) {
      json['positiveColor'] = positiveColor;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The palette object specifies colors for the charts and how to apply them.
class HCPaletteOptions implements HCOption {
  const HCPaletteOptions({
    this.colors,
    this.colorScheme,
    this.dark,
    this.injectCSS,
    this.light,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Colors for data series and points. This setting is generic for both light and dark mode, and can be overridden for each mode in `light.colors` and `dark.colors`.
  final List<String>? colors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Color scheme to use. When `light dark` is set, the chart will automatically switch between light and dark mode based on the user's system preferences, or whether the `.highcharts-light` or `.highcharts-dark` class is applied to a parent of the container.
  final String? colorScheme;

  /// (Highcharts, Highstock, Highmaps, Gantt) Palette options for dark mode.
  final HCPaletteDarkOptions? dark;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to inject the CSS for the dark and light mode. If not injected, you need to include the CSS manually in your page or application, with the appropriate CSS variables. A file with the default CSS variables is available at css/highcharts-palette.css.
  final bool? injectCSS;

  /// (Highcharts, Highstock, Highmaps, Gantt) Palette options for light mode.
  final HCPaletteLightOptions? light;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (colors != null) {
      json['colors'] = colors;
    }
    if (colorScheme != null) {
      json['colorScheme'] = colorScheme;
    }
    if (dark != null) {
      json['dark'] = dark!.toJson();
    }
    if (injectCSS != null) {
      json['injectCSS'] = injectCSS;
    }
    if (light != null) {
      json['light'] = light!.toJson();
    }
    return json;
  }
}
