part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The legend is a box containing a
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for the
  final HCLegendAccessibilityOptions? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal alignment of the
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) If the layout is `horizontal`
  final dynamic alignColumns;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color of the
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the drawn border
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border corner radius of the
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the drawn border
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps) The bubble legend is an additional
  final HCLegendBubbleLegendOptions? bubbleLegend;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name to apply to the
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the legend.
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) General event handlers for the
  final HCLegendEventsOptionsObject? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) When the legend is floating, the
  final dynamic floating;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default styling for the checkbox
  final HCCSSObject? itemCheckboxStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) In a legend with horizontal
  final num? itemDistance;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for each legend item
  final HCCSSObject? itemHiddenStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for each legend item
  final HCCSSObject? itemHoverStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel bottom margin for each
  final num? itemMarginBottom;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel top margin for each
  final num? itemMarginTop;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for each legend item.
  final HCCSSObject? itemStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width for each legend item.
  final num? itemWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for each legend
  final String? labelFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) The layout of the legend items.
  final String? layout;

  /// (Highcharts, Gantt) Line height for the legend items. Deprecated as of
  final num? lineHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) If the plot area sized is
  final num? margin;

  /// (Highcharts, Highstock, Highmaps, Gantt) Maximum pixel height for the
  final num? maxHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) Maximum width for the legend.
  final dynamic maxWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the paging or
  final HCLegendNavigationOptions? navigation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The inner padding of the legend
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to reverse the order of
  final dynamic reversed;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the symbol on
  final dynamic rtl;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When this is true, the legend
  final dynamic squareSymbol;

  /// (Highcharts, Highstock) CSS styles for the legend area. In the 1.x
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel height of the symbol
  final num? symbolHeight;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel padding between the
  final num? symbolPadding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius of the symbol
  final num? symbolRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the legend
  final num? symbolWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A title to be added on top of
  final HCLegendTitleOptions? title;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render
  final dynamic useHTML;

  /// (Highcharts, Highmaps) For a color axis with data classes, how many
  final num? valueDecimals;

  /// (Highcharts, Highmaps) For a color axis with data classes, a suffix for
  final String? valueSuffix;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the legend box. If
  final dynamic width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x offset of the legend
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical offset of the
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json["accessibility"] = accessibility!.toJson();
    }
    if (align != null) {
      json["align"] = align;
    }
    if (alignColumns != null) {
      json["alignColumns"] = hcJsonValue(alignColumns);
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (bubbleLegend != null) {
      json["bubbleLegend"] = bubbleLegend!.toJson();
    }
    if (className != null) {
      json["className"] = className;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (floating != null) {
      json["floating"] = hcJsonValue(floating);
    }
    if (itemCheckboxStyle != null) {
      json["itemCheckboxStyle"] = itemCheckboxStyle!.toJson();
    }
    if (itemDistance != null) {
      json["itemDistance"] = itemDistance;
    }
    if (itemHiddenStyle != null) {
      json["itemHiddenStyle"] = itemHiddenStyle!.toJson();
    }
    if (itemHoverStyle != null) {
      json["itemHoverStyle"] = itemHoverStyle!.toJson();
    }
    if (itemMarginBottom != null) {
      json["itemMarginBottom"] = itemMarginBottom;
    }
    if (itemMarginTop != null) {
      json["itemMarginTop"] = itemMarginTop;
    }
    if (itemStyle != null) {
      json["itemStyle"] = itemStyle!.toJson();
    }
    if (itemWidth != null) {
      json["itemWidth"] = itemWidth;
    }
    if (labelFormat != null) {
      json["labelFormat"] = labelFormat;
    }
    if (layout != null) {
      json["layout"] = layout;
    }
    if (lineHeight != null) {
      json["lineHeight"] = lineHeight;
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (maxHeight != null) {
      json["maxHeight"] = maxHeight;
    }
    if (maxWidth != null) {
      json["maxWidth"] = hcJsonValue(maxWidth);
    }
    if (navigation != null) {
      json["navigation"] = navigation!.toJson();
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
    }
    if (rtl != null) {
      json["rtl"] = hcJsonValue(rtl);
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (squareSymbol != null) {
      json["squareSymbol"] = hcJsonValue(squareSymbol);
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (symbolHeight != null) {
      json["symbolHeight"] = symbolHeight;
    }
    if (symbolPadding != null) {
      json["symbolPadding"] = symbolPadding;
    }
    if (symbolRadius != null) {
      json["symbolRadius"] = symbolRadius;
    }
    if (symbolWidth != null) {
      json["symbolWidth"] = symbolWidth;
    }
    if (title != null) {
      json["title"] = title!.toJson();
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    if (valueDecimals != null) {
      json["valueDecimals"] = valueDecimals;
    }
    if (valueSuffix != null) {
      json["valueSuffix"] = valueSuffix;
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
    }
    if (width != null) {
      json["width"] = hcJsonValue(width);
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
