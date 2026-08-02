part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the export button.
class HCExportingButtonsOptionsObject implements HCOption {
  const HCExportingButtonsOptionsObject({
    this.align,
    this.buttonSpacing,
    this.className,
    this.enabled,
    this.height,
    this.menuClassName,
    this.menuItems,
    this.onclick,
    this.symbol,
    this.symbolFill,
    this.symbolSize,
    this.symbolStroke,
    this.symbolStrokeWidth,
    this.symbolX,
    this.symbolY,
    this.text,
    this.theme,
    this.titleKey,
    this.useHTML,
    this.verticalAlign,
    this.width,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment for the buttons.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel spacing between
  final num? buttonSpacing;

  /// (Highcharts, Highstock, Highmaps, Gantt) The class name of the context
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable buttons.
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Pixel height of the buttons.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) The class name of the menu
  final String? menuClassName;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of strings pointing
  final List<String>? menuItems;

  /// (Highcharts, Highstock, Highmaps, Gantt) A click handler callback to use
  final dynamic onclick;

  /// (Highcharts, Highstock, Highmaps, Gantt) The symbol for the button.
  final String? symbol;

  /// (Highcharts, Highstock, Highmaps, Gantt) Fill color for the symbol within
  final dynamic symbolFill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel size of the symbol on
  final num? symbolSize;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the symbol's stroke
  final String? symbolStroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the
  final num? symbolStrokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the center of
  final num? symbolX;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the center of
  final num? symbolY;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text string to add to the
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) A configuration object for the
  final HCExportingButtonsContextButtonThemeOptions? theme;

  /// (Highcharts, Highstock, Highmaps, Gantt) The key to a lang option setting
  final String? titleKey;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML for
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the button.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The horizontal position of the
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical offset of the
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (buttonSpacing != null) {
      json["buttonSpacing"] = buttonSpacing;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (menuClassName != null) {
      json["menuClassName"] = menuClassName;
    }
    if (menuItems != null) {
      json["menuItems"] = menuItems;
    }
    if (onclick != null) {
      json["onclick"] = hcJsonValue(onclick);
    }
    if (symbol != null) {
      json["symbol"] = symbol;
    }
    if (symbolFill != null) {
      json["symbolFill"] = hcJsonValue(symbolFill);
    }
    if (symbolSize != null) {
      json["symbolSize"] = symbolSize;
    }
    if (symbolStroke != null) {
      json["symbolStroke"] = symbolStroke;
    }
    if (symbolStrokeWidth != null) {
      json["symbolStrokeWidth"] = symbolStrokeWidth;
    }
    if (symbolX != null) {
      json["symbolX"] = symbolX;
    }
    if (symbolY != null) {
      json["symbolY"] = symbolY;
    }
    if (text != null) {
      json["text"] = text;
    }
    if (theme != null) {
      json["theme"] = theme!.toJson();
    }
    if (titleKey != null) {
      json["titleKey"] = titleKey;
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
    }
    if (width != null) {
      json["width"] = width;
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
