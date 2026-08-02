part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) General theme for buttons. This applies to the zoom button, exporting context menu, map navigation, range selector buttons and custom buttons generated using the `SVGRenderer.button` function. However, each of these may be overridden with more specific option
class HCGlobalButtonThemeOptions implements HCOption {
  const HCGlobalButtonThemeOptions({
    this.fill,
    this.padding,
    this.r,
    this.states,
    this.stroke,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The fill color for buttons
  final String? fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The padding of buttons
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius for buttons
  final num? r;

  /// (Highcharts, Highstock, Highmaps, Gantt) State overrides for the buttons
  final HCGlobalButtonThemeStatesOptions? states;

  /// (Highcharts, Highstock, Highmaps, Gantt) The stroke color for buttons
  final String? stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styling for the buttons' text
  final HCGlobalButtonThemeStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (r != null) {
      json['r'] = r;
    }
    if (states != null) {
      json['states'] = states!.toJson();
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Disabled state overrides for the buttons are applied in addition to the normal state options
class HCGlobalButtonThemeStatesDisabledOptions implements HCOption {
  const HCGlobalButtonThemeStatesDisabledOptions({
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Disabled state CSS style overrides for the buttons' text
  final HCGlobalButtonThemeStatesDisabledStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Disabled state CSS style overrides for the buttons' text
class HCGlobalButtonThemeStatesDisabledStyleOptions implements HCOption {
  const HCGlobalButtonThemeStatesDisabledStyleOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) Hover state overrides for the buttons are applied in addition to the normal state options
class HCGlobalButtonThemeStatesHoverOptions implements HCOption {
  const HCGlobalButtonThemeStatesHoverOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) State overrides for the buttons
class HCGlobalButtonThemeStatesOptions implements HCOption {
  const HCGlobalButtonThemeStatesOptions({
    this.disabled,
    this.hover,
    this.select,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Disabled state overrides for the buttons are applied in addition to the normal state options
  final HCGlobalButtonThemeStatesDisabledOptions? disabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Hover state overrides for the buttons are applied in addition to the normal state options
  final HCGlobalButtonThemeStatesHoverOptions? hover;

  /// (Highcharts, Highstock, Highmaps, Gantt) Select state overrides for the buttons are applied in addition to the normal state options
  final HCGlobalButtonThemeStatesSelectOptions? select;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (disabled != null) {
      json['disabled'] = disabled!.toJson();
    }
    if (hover != null) {
      json['hover'] = hover!.toJson();
    }
    if (select != null) {
      json['select'] = select!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Select state overrides for the buttons are applied in addition to the normal state options
class HCGlobalButtonThemeStatesSelectOptions implements HCOption {
  const HCGlobalButtonThemeStatesSelectOptions({
    this.fill,
    this.style,
  });

  final dynamic fill;

  final HCGlobalButtonThemeStatesSelectStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

class HCGlobalButtonThemeStatesSelectStyleOptions implements HCOption {
  const HCGlobalButtonThemeStatesSelectStyleOptions({
    this.color,
    this.fontWeight,
  });

  final dynamic color;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styling for the buttons' text
class HCGlobalButtonThemeStyleOptions implements HCOption {
  const HCGlobalButtonThemeStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
    this.fontWeight,
  });

  final dynamic color;

  final String? cursor;

  final num? fontSize;

  final String? fontWeight;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    if (fontWeight != null) {
      json['fontWeight'] = fontWeight;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Global options that don't apply to each chart. These options must be set using the `Highcharts.setOptions` method. (see online documentation for example)
class HCGlobalOptions implements HCOption {
  const HCGlobalOptions({
    this.buttonTheme,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) General theme for buttons. This applies to the zoom button, exporting context menu, map navigation, range selector buttons and custom buttons generated using the `SVGRenderer.button` function. However, each of these may be overridden with more specific option
  final HCGlobalButtonThemeOptions? buttonTheme;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonTheme != null) {
      json['buttonTheme'] = buttonTheme!.toJson();
    }
    return json;
  }
}
