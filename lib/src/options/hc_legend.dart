part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation for the legend.
class HCLegendAccessibilityKeyboardNavigationOptions implements HCOption {
  const HCLegendAccessibilityKeyboardNavigationOptions({
    this.enabled,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable keyboard navigation for the legend.
  final bool? enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the legend. Requires the Accessibility module.
class HCLegendAccessibilityOptions implements HCOption {
  const HCLegendAccessibilityOptions({
    this.enabled,
    this.keyboardNavigation,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable accessibility support for the legend.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation for the legend.
  final HCLegendAccessibilityKeyboardNavigationOptions? keyboardNavigation;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (keyboardNavigation != null) {
      json['keyboardNavigation'] = keyboardNavigation!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps) Options for the bubble legend labels.
class HCLegendBubbleLegendLabelsOptions implements HCOption {
  const HCLegendBubbleLegendLabelsOptions({
    this.align,
    this.allowOverlap,
    this.className,
    this.format,
    this.style,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps) The alignment of the labels compared to the bubble legend. Can be one of `left`, `center` or `right`.
  final String? align;

  /// (Highcharts, Highstock, Highmaps) Whether to allow data labels to overlap.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Highmaps) An additional class name to apply to the bubble legend label graphical elements. This option does not replace default class names of the graphical element.
  final String? className;

  /// (Highcharts, Highstock, Highmaps) A format string for the bubble legend labels. Available variables are the same as for `formatter`.
  final String? format;

  /// (Highcharts, Highstock, Highmaps) CSS styles for the labels.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps) The x position offset of the label relative to the connector.
  final num? x;

  /// (Highcharts, Highstock, Highmaps) The y position offset of the label relative to the connector.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (style != null) {
      json['style'] = style!.toJson();
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

/// (Highcharts, Highstock, Highmaps) The bubble legend is an additional element in legend which presents the scale of the bubble series. Individual bubble ranges can be defined by user or calculated from series. In the case of automatically calculated ranges, a 1px margin of error is permitted.
class HCLegendBubbleLegendOptions implements HCOption {
  const HCLegendBubbleLegendOptions({
    this.borderColor,
    this.borderWidth,
    this.className,
    this.color,
    this.connectorClassName,
    this.connectorColor,
    this.connectorDistance,
    this.connectorWidth,
    this.enabled,
    this.labels,
    this.legendIndex,
    this.maxSize,
    this.minSize,
    this.ranges,
    this.sizeBy,
    this.sizeByAbsoluteValue,
    this.zIndex,
    this.zThreshold,
  });

  /// (Highcharts, Highstock, Highmaps) The color of the ranges borders, can be also defined for an individual range.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps) The width of the ranges borders in pixels, can be also defined for an individual range.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps) An additional class name to apply to the bubble legend' circle graphical elements. This option does not replace default class names of the graphical element.
  final String? className;

  /// (Highcharts, Highstock, Highmaps) The main color of the bubble legend. Applies to ranges, if individual color is not defined.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) An additional class name to apply to the bubble legend's connector graphical elements. This option does not replace default class names of the graphical element.
  final String? connectorClassName;

  /// (Highcharts, Highstock, Highmaps) The color of the connector, can be also defined for an individual range.
  final dynamic connectorColor;

  /// (Highcharts, Highstock, Highmaps) The length of the connectors in pixels. If labels are centered, the distance is reduced to 0.
  final num? connectorDistance;

  /// (Highcharts, Highstock, Highmaps) The width of the connectors in pixels.
  final num? connectorWidth;

  /// (Highcharts, Highstock, Highmaps) Enable or disable the bubble legend.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps) Options for the bubble legend labels.
  final HCLegendBubbleLegendLabelsOptions? labels;

  /// (Highcharts, Highstock, Highmaps) The position of the bubble legend in the legend.
  final num? legendIndex;

  /// (Highcharts, Highstock, Highmaps) Maximum bubble legend range size. If values for ranges are not specified, the `minSize` and the `maxSize` are calculated from bubble series.
  final num? maxSize;

  /// (Highcharts, Highstock, Highmaps) Minimum bubble legend range size. If values for ranges are not specified, the `minSize` and the `maxSize` are calculated from bubble series.
  final num? minSize;

  /// (Highcharts, Highstock, Highmaps) Options for specific range. One range consists of bubble, label and connector.
  final List<HCLegendBubbleLegendRangesOptions>? ranges;

  /// (Highcharts, Highstock, Highmaps) Whether the bubble legend range value should be represented by the area or the width of the bubble. The default, area, corresponds best to the human perception of the size of each bubble.
  final String? sizeBy;

  /// (Highcharts, Highstock, Highmaps) When this is true, the absolute value of z determines the size of the bubble. This means that with the default zThreshold of 0, a bubble of value -1 will have the same size as a bubble of value 1, while a bubble of value 0 will have a smaller size according to minSi
  final bool? sizeByAbsoluteValue;

  /// (Highcharts, Highstock, Highmaps) Define the visual z index of the bubble legend.
  final num? zIndex;

  /// (Highcharts, Highstock, Highmaps) Ranges with lower value than zThreshold are skipped.
  final num? zThreshold;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (connectorClassName != null) {
      json['connectorClassName'] = connectorClassName;
    }
    if (connectorColor != null) {
      json['connectorColor'] = hcJsonValue(connectorColor);
    }
    if (connectorDistance != null) {
      json['connectorDistance'] = connectorDistance;
    }
    if (connectorWidth != null) {
      json['connectorWidth'] = connectorWidth;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (labels != null) {
      json['labels'] = labels!.toJson();
    }
    if (legendIndex != null) {
      json['legendIndex'] = legendIndex;
    }
    if (maxSize != null) {
      json['maxSize'] = maxSize;
    }
    if (minSize != null) {
      json['minSize'] = minSize;
    }
    if (ranges != null) {
      json['ranges'] = ranges!.map((e) => e.toJson()).toList();
    }
    if (sizeBy != null) {
      json['sizeBy'] = sizeBy;
    }
    if (sizeByAbsoluteValue != null) {
      json['sizeByAbsoluteValue'] = sizeByAbsoluteValue;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    if (zThreshold != null) {
      json['zThreshold'] = zThreshold;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps) Options for specific range. One range consists of bubble, label and connector.
class HCLegendBubbleLegendRangesOptions implements HCOption {
  const HCLegendBubbleLegendRangesOptions({
    this.borderColor,
    this.color,
    this.connectorColor,
    this.value,
  });

  /// (Highcharts, Highstock, Highmaps) The color of the border for individual range.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps) The color of the bubble for individual range.
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) The color of the connector for individual range.
  final dynamic connectorColor;

  /// (Highcharts, Highstock, Highmaps) Range size value, similar to bubble Z data.
  final num? value;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (connectorColor != null) {
      json['connectorColor'] = hcJsonValue(connectorColor);
    }
    if (value != null) {
      json['value'] = value;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) General event handlers for the legend. These event hooks can also be attached to the legend at run time using the `Highcharts.addEvent` function.
class HCLegendEventsOptionsObject implements HCOption {
  const HCLegendEventsOptionsObject();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the paging or navigation appearing when the legend is overflown. Navigation works well on screen, but not in static exported images. One way of working around that is to increase the chart height in export.
class HCLegendNavigationOptions implements HCOption {
  const HCLegendNavigationOptions({
    this.activeColor,
    this.animation,
    this.arrowSize,
    this.enabled,
    this.inactiveColor,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The color for the active up or down arrow in the legend page navigation.
  final dynamic activeColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to animate the pages when navigating up or down. A value of `true` applies the default navigation given in the `chart.animation` option. Additional options can be given as an object containing values for easing and duration.
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel size of the up and down arrows in the legend paging navigation.
  final num? arrowSize;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable the legend navigation. In most cases, disabling the navigation results in an unwanted overflow.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the inactive up or down arrow in the legend page navigation. .
  final dynamic inactiveColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text styles for the legend page navigation.
  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (activeColor != null) {
      json['activeColor'] = hcJsonValue(activeColor);
    }
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (arrowSize != null) {
      json['arrowSize'] = arrowSize;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (inactiveColor != null) {
      json['inactiveColor'] = hcJsonValue(inactiveColor);
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) The legend is a box containing a symbol and name for each series item or point item in the chart. Each series (or points in case of pie charts) is represented by a symbol and its name in the legend.
class HCLegendOptions implements HCOption {
  const HCLegendOptions({
    this.accessibility,
    this.align,
    this.alignColumns,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.bubbleLegend,
    this.className,
    this.enabled,
    this.events,
    this.floating,
    this.itemCheckboxStyle,
    this.itemDistance,
    this.itemHiddenStyle,
    this.itemHoverStyle,
    this.itemMarginBottom,
    this.itemMarginTop,
    this.itemStyle,
    this.itemWidth,
    this.labelFormat,
    this.layout,
    this.lineHeight,
    this.margin,
    this.maxHeight,
    this.maxWidth,
    this.navigation,
    this.padding,
    this.reversed,
    this.rtl,
    this.shadow,
    this.squareSymbol,
    this.style,
    this.symbolHeight,
    this.symbolPadding,
    this.symbolRadius,
    this.symbolWidth,
    this.title,
    this.useHTML,
    this.valueDecimals,
    this.valueSuffix,
    this.verticalAlign,
    this.width,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the legend. Requires the Accessibility module.
  final HCLegendAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the legend box within the chart area. Valid values are `left`, `center` and `right`.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) If the layout is `horizontal` and the legend items span over two lines or more, whether to align the items into vertical columns. Setting this to `false` makes room for more items, but will look more messy.
  final bool? alignColumns;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color of the legend.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the drawn border around the legend.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border corner radius of the legend.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the drawn border around the legend.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps) The bubble legend is an additional element in legend which presents the scale of the bubble series. Individual bubble ranges can be defined by user or calculated from series. In the case of automatically calculated ranges, a 1px margin of error is permitted.
  final HCLegendBubbleLegendOptions? bubbleLegend;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name to apply to the legend group.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the legend. There is also a series-specific option, showInLegend, that can hide the series from the legend. In some series types this is `false` by default, so it must set to `true` in order to show the legend for the series.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) General event handlers for the legend. These event hooks can also be attached to the legend at run time using the `Highcharts.addEvent` function.
  final HCLegendEventsOptionsObject? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the legend is floating, the plot area ignores it and is allowed to be placed below it.
  final bool? floating;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default styling for the checkbox next to a legend item when `showCheckbox` is true.
  final HCCSSObject? itemCheckboxStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) In a legend with horizontal layout, the itemDistance defines the pixel distance between each item.
  final num? itemDistance;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for each legend item when the corresponding series or point is hidden. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from `style` unless overridden here.
  final HCCSSObject? itemHiddenStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for each legend item in hover mode. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from `style` unless overridden here.
  final HCCSSObject? itemHoverStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel bottom margin for each legend item.
  final num? itemMarginBottom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel top margin for each legend item.
  final num? itemMarginTop;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for each legend item. Only a subset of CSS is supported, notably those options related to text. The default `textOverflow` property makes long texts truncate. Set it to `undefined` to wrap text instead. A `width` property can be added to control th
  final HCCSSObject? itemStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width for each legend item. By default the items are laid out successively. In a horizontal layout, if the items are laid out across two rows or more, they will be vertically aligned depending on the legend.alignColumns option.
  final num? itemWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for each legend label. Available variables relates to properties on the series, or the point in case of pies.
  final String? labelFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) The layout of the legend items. Can be one of `horizontal` or `vertical` or `proximate`. When `proximate`, the legend items will be placed as close as possible to the graphs they're representing, except in inverted charts or when the legend position doesn't a
  final String? layout;

  /// (Highcharts, Gantt) Line height for the legend items. Deprecated as of 2.1\. Instead, the line height for each item can be set using `itemStyle.lineHeight`, and the padding between items using `itemMarginTop` and `itemMarginBottom`.
  final num? lineHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) If the plot area sized is calculated automatically and the legend is not floating, the legend margin is the space between the legend and the axis labels or plot area.
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) Maximum pixel height for the legend. When the maximum height is extended, navigation will show.
  final num? maxHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) Maximum width for the legend. Can be a percentage of the chart width, or an integer representing how many pixels wide the legend can be.
  final dynamic maxWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the paging or navigation appearing when the legend is overflown. Navigation works well on screen, but not in static exported images. One way of working around that is to increase the chart height in export.
  final HCLegendNavigationOptions? navigation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The inner padding of the legend box.
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to reverse the order of the legend items compared to the order of the series or points as defined in the configuration object.
  final bool? reversed;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the symbol on the right side of the text rather than the left side. This is common in Arabic and Hebrew.
  final bool? rtl;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow to the legend. A `backgroundColor` also needs to be applied for this to take effect. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When this is true, the legend symbol width will be the same as the symbol height, which in turn defaults to the font size of the legend items.
  final bool? squareSymbol;

  /// (Highcharts, Highstock) CSS styles for the legend area. In the 1.x versions the position of the legend area was determined by CSS. In 2.x, the position is determined by properties like `align`, `verticalAlign`, `x` and `y`, but the styles are still parsed for backwards compatibility.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel height of the symbol for series types that use a rectangle in the legend. Defaults to the font size of legend items.
  final num? symbolHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel padding between the legend item symbol and the legend item text.
  final num? symbolPadding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius of the symbol for series types that use a rectangle in the legend. Defaults to half the `symbolHeight`, effectively creating a circle.
  final num? symbolRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the legend item symbol. When the `squareSymbol` option is set, this defaults to the `symbolHeight`, otherwise 16.
  final num? symbolWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A title to be added on top of the legend.
  final HCLegendTitleOptions? title;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the legend item texts.
  final bool? useHTML;

  /// (Highcharts, Highmaps) For a color axis with data classes, how many decimals to render in the legend. The default preserves the decimals of the range numbers.
  final num? valueDecimals;

  /// (Highcharts, Highmaps) For a color axis with data classes, a suffix for the range numbers in the legend.
  final String? valueSuffix;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the legend box. Can be one of `top`, `middle` or `bottom`. Vertical position can be further determined by the `y` option.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the legend box. If a number is set, it translates to pixels. Since v7.0.2 it allows setting a percent string of the full chart width, for example `40%`.
  final dynamic width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x offset of the legend relative to its horizontal alignment `align` within chart.spacingLeft and chart.spacingRight. Negative x moves it to the left, positive x moves it to the right.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical offset of the legend relative to it's vertical alignment `verticalAlign` within chart.spacingTop and chart.spacingBottom. Negative y moves it up, positive y moves it down.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (alignColumns != null) {
      json['alignColumns'] = alignColumns;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (bubbleLegend != null) {
      json['bubbleLegend'] = bubbleLegend!.toJson();
    }
    if (className != null) {
      json['className'] = className;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (itemCheckboxStyle != null) {
      json['itemCheckboxStyle'] = itemCheckboxStyle!.toJson();
    }
    if (itemDistance != null) {
      json['itemDistance'] = itemDistance;
    }
    if (itemHiddenStyle != null) {
      json['itemHiddenStyle'] = itemHiddenStyle!.toJson();
    }
    if (itemHoverStyle != null) {
      json['itemHoverStyle'] = itemHoverStyle!.toJson();
    }
    if (itemMarginBottom != null) {
      json['itemMarginBottom'] = itemMarginBottom;
    }
    if (itemMarginTop != null) {
      json['itemMarginTop'] = itemMarginTop;
    }
    if (itemStyle != null) {
      json['itemStyle'] = itemStyle!.toJson();
    }
    if (itemWidth != null) {
      json['itemWidth'] = itemWidth;
    }
    if (labelFormat != null) {
      json['labelFormat'] = labelFormat;
    }
    if (layout != null) {
      json['layout'] = layout;
    }
    if (lineHeight != null) {
      json['lineHeight'] = lineHeight;
    }
    if (margin != null) {
      json['margin'] = margin;
    }
    if (maxHeight != null) {
      json['maxHeight'] = maxHeight;
    }
    if (maxWidth != null) {
      json['maxWidth'] = hcJsonValue(maxWidth);
    }
    if (navigation != null) {
      json['navigation'] = navigation!.toJson();
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (rtl != null) {
      json['rtl'] = rtl;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (squareSymbol != null) {
      json['squareSymbol'] = squareSymbol;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (symbolHeight != null) {
      json['symbolHeight'] = symbolHeight;
    }
    if (symbolPadding != null) {
      json['symbolPadding'] = symbolPadding;
    }
    if (symbolRadius != null) {
      json['symbolRadius'] = symbolRadius;
    }
    if (symbolWidth != null) {
      json['symbolWidth'] = symbolWidth;
    }
    if (title != null) {
      json['title'] = title!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (valueDecimals != null) {
      json['valueDecimals'] = valueDecimals;
    }
    if (valueSuffix != null) {
      json['valueSuffix'] = valueSuffix;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = hcJsonValue(width);
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

/// (Highcharts, Highstock, Highmaps, Gantt) A title to be added on top of the legend.
class HCLegendTitleOptions implements HCOption {
  const HCLegendTitleOptions({
    this.style,
    this.text,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Generic CSS styles for the legend title.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text or HTML string for the title.
  final String? text;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    return json;
  }
}
