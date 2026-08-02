part of 'hc_options.dart';

/// (Highcharts, Highmaps) Additional styles to apply to the data label of a point that has drilldown data. By default it is underlined and blue to invite to interaction.
class HCDrilldownActiveDataLabelStyleOptions implements HCOption {
  const HCDrilldownActiveDataLabelStyleOptions({
    this.color,
    this.cursor,
    this.fontWeight,
    this.textDecoration,
  });

  final String? color;

  final String? cursor;

  final String? fontWeight;

  final String? textDecoration;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    if (textDecoration != null) {
      json['textDecoration'] = textDecoration;
    }
    return json;
  }
}

/// (Highcharts) A collection of attributes for the buttons. The object takes SVG attributes like `fill`, `stroke`, `stroke-width`, as well as `style`, a collection of CSS properties for the text.
class HCDrilldownBreadcrumbsButtonThemeOptions implements HCOption {
  const HCDrilldownBreadcrumbsButtonThemeOptions({
    this.style,
  });

  final HCDrilldownBreadcrumbsButtonThemeStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

class HCDrilldownBreadcrumbsButtonThemeStyleOptions implements HCOption {
  const HCDrilldownBreadcrumbsButtonThemeStyleOptions({
    this.color,
  });

  final String? color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    return json;
  }
}

class HCDrilldownBreadcrumbsEventsOptions implements HCOption {
  const HCDrilldownBreadcrumbsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highmaps) Options for the breadcrumbs, the navigation at the top leading the way up through the drilldown levels.
class HCDrilldownBreadcrumbsOptions implements HCOption {
  const HCDrilldownBreadcrumbsOptions({
    this.buttonSpacing,
    this.buttonTheme,
    this.events,
    this.floating,
    this.format,
    this.position,
    this.relativeTo,
    this.rtl,
    this.separator,
    this.showFullPath,
    this.style,
    this.useHTML,
    this.zIndex,
  });

  /// (Highcharts, Highmaps) The default padding for each button and separator in each direction.
  final num? buttonSpacing;

  /// (Highcharts) A collection of attributes for the buttons. The object takes SVG attributes like `fill`, `stroke`, `stroke-width`, as well as `style`, a collection of CSS properties for the text.
  final dynamic buttonTheme;

  final HCDrilldownBreadcrumbsEventsOptions? events;

  /// (Highcharts, Highmaps) When the breadcrumbs are floating, the plot area will not move to make space for it. By default, the chart will not make space for the buttons. This property won't work when positioned in the middle.
  final bool? floating;

  /// (Highcharts, Highmaps) A format string for the breadcrumbs button. Variables are enclosed by curly brackets. Available values are passed in the declared point options.
  final String? format;

  /// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs buttons will be aligned properly for the default chart layout (title, subtitle, legend, range selector) for the custom chart layout set the position properties.
  final dynamic position;

  /// (Highcharts, Highmaps) What box to align the button to. Can be either `plotBox` or `spacingBox`.
  final String? relativeTo;

  /// (Highcharts, Highmaps) Whether to reverse the order of buttons. This is common in Arabic and Hebrew.
  final bool? rtl;

  /// (Highcharts, Highmaps) Options object for Breadcrumbs separator.
  final HCDrilldownBreadcrumbsSeparatorOptions? separator;

  /// (Highcharts, Highmaps) Show full path or only a single button.
  final bool? showFullPath;

  /// (Highcharts, Highmaps) CSS styles for all breadcrumbs.
  final HCSVGAttributes? style;

  /// (Highcharts, Highmaps) Whether to use HTML to render the breadcrumbs items texts.
  final bool? useHTML;

  /// (Highcharts, Highmaps) The z index of the breadcrumbs group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonSpacing != null) {
      json['buttonSpacing'] = buttonSpacing;
    }
    if (buttonTheme != null) {
      json['buttonTheme'] = hcJsonValue(buttonTheme);
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (rtl != null) {
      json['rtl'] = rtl;
    }
    if (separator != null) {
      json['separator'] = separator!.toJson();
    }
    if (showFullPath != null) {
      json['showFullPath'] = showFullPath;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs buttons will be aligned properly for the default chart layout (title, subtitle, legend, range selector) for the custom chart layout set the position properties.
class HCDrilldownBreadcrumbsPositionOptions implements HCOption {
  const HCDrilldownBreadcrumbsPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) Horizontal alignment of the breadcrumbs buttons.
  final String? align;

  /// (Highcharts, Highmaps) Vertical alignment of the breadcrumbs buttons.
  final String? verticalAlign;

  /// (Highcharts, Highmaps) The X offset of the breadcrumbs button group.
  final num? x;

  /// (Highcharts, Highmaps) The Y offset of the breadcrumbs button group. When `undefined`, and `floating` is `false`, the `y` position is adapted so that the breadcrumbs are rendered outside the target area.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Options object for Breadcrumbs separator.
class HCDrilldownBreadcrumbsSeparatorOptions implements HCOption {
  const HCDrilldownBreadcrumbsSeparatorOptions({
    this.style,
    this.text,
  });

  /// (Highcharts, Highmaps) CSS styles for the breadcrumbs separator.
  final dynamic style;

  final String? text;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    return json;
  }
}

/// (Highcharts, Highmaps) CSS styles for the breadcrumbs separator.
class HCDrilldownBreadcrumbsSeparatorStyleOptions implements HCOption {
  const HCDrilldownBreadcrumbsSeparatorStyleOptions({
    this.color,
    this.fontSize,
  });

  final String? color;

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Drill up button is deprecated since Highcharts v9.3.2. Use drilldown.breadcrumbs instead.
class HCDrilldownDrillUpButtonOptions implements HCOption {
  const HCDrilldownDrillUpButtonOptions({
    this.position,
    this.relativeTo,
    this.theme,
  });

  /// (Highcharts, Highmaps) Positioning options for the button within the `relativeTo` box. Available properties are `x`, `y`, `align` and `verticalAlign`.
  final dynamic position;

  /// (Highcharts, Highmaps) What box to align the button to. Can be either `plotBox` or `spacingBox`.
  final String? relativeTo;

  /// (Highcharts, Highmaps) A collection of attributes for the button. The object takes SVG attributes like `fill`, `stroke`, `stroke-width` or `r`, the border radius. The theme also supports `style`, a collection of CSS properties for the text. Equivalent attributes for the hover state are given in `the
  final dynamic theme;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (theme != null) {
      json['theme'] = hcJsonValue(theme);
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Positioning options for the button within the `relativeTo` box. Available properties are `x`, `y`, `align` and `verticalAlign`.
class HCDrilldownDrillUpButtonPositionOptions implements HCOption {
  const HCDrilldownDrillUpButtonPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) Horizontal alignment.
  final String? align;

  /// (Highcharts, Highmaps) Vertical alignment of the button.
  final String? verticalAlign;

  /// (Highcharts, Highmaps) The X offset of the button.
  final num? x;

  /// (Highcharts, Highmaps) The Y offset of the button.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Options for drill down, the concept of inspecting increasingly high resolution data through clicking on chart items like columns or pie slices.
class HCDrilldownOptions implements HCOption {
  const HCDrilldownOptions({
    this.activeAxisLabelStyle,
    this.activeDataLabelStyle,
    this.allowPointDrilldown,
    this.animation,
    this.breadcrumbs,
    this.drillUpButton,
    this.mapZooming,
    this.series,
  });

  /// (Highcharts, Highmaps) Additional styles to apply to the X axis label for a point that has drilldown data. By default it is underlined and blue to invite to interaction.
  final HCCSSObject? activeAxisLabelStyle;

  /// (Highcharts, Highmaps) Additional styles to apply to the data label of a point that has drilldown data. By default it is underlined and blue to invite to interaction.
  final dynamic activeDataLabelStyle;

  /// (Highcharts) When this option is false, clicking a single point will drill down all points in the same category, equivalent to clicking the X axis label.
  final bool? allowPointDrilldown;

  /// (Highcharts, Highmaps) Set the animation for all drilldown animations. Animation of a drilldown occurs when drilling between a column point and a column series, or a pie slice and a full pie series. Drilldown can still be used between series and points of different types, but animation will not occu
  final dynamic animation;

  /// (Highcharts, Highmaps) Options for the breadcrumbs, the navigation at the top leading the way up through the drilldown levels.
  final HCDrilldownBreadcrumbsOptions? breadcrumbs;

  /// (Highcharts, Highmaps) Drill up button is deprecated since Highcharts v9.3.2. Use drilldown.breadcrumbs instead.
  final HCDrilldownDrillUpButtonOptions? drillUpButton;

  /// (Highmaps) Enable or disable zooming into a region of clicked map point you want to drill into. If mapZooming is set to false the drilldown/drillup animations only fade in/fade out without zooming to a specific map point.
  final bool? mapZooming;

  /// (Highcharts, Highmaps) An array of series configurations for the drill down. Each series configuration uses the same syntax as the series option set. These drilldown series are hidden by default. The drilldown series is linked to the parent series' point by its `id`.
  final List<dynamic>? series;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeAxisLabelStyle != null) {
      json['activeAxisLabelStyle'] = activeAxisLabelStyle!.toJson();
    }
    if (activeDataLabelStyle != null) {
      json['activeDataLabelStyle'] = hcJsonValue(activeDataLabelStyle);
    }
    if (allowPointDrilldown != null) {
      json['allowPointDrilldown'] = allowPointDrilldown;
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (breadcrumbs != null) {
      json['breadcrumbs'] = breadcrumbs!.toJson();
    }
    if (drillUpButton != null) {
      json['drillUpButton'] = drillUpButton!.toJson();
    }
    if (mapZooming != null) {
      json['mapZooming'] = mapZooming;
    }
    if (series != null) {
      json['series'] = series!.map((e) => hcJsonValue(e)).toList();
    }
    return json;
  }
}
