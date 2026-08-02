part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for buttons
class HCNavigationButtonOptions implements HCOption {
  const HCNavigationButtonOptions({
    this.align,
    this.buttonSpacing,
    this.enabled,
    this.height,
    this.symbolFill,
    this.symbolSize,
    this.symbolStroke,
    this.symbolStrokeWidth,
    this.symbolX,
    this.symbolY,
    this.text,
    this.theme,
    this.useHTML,
    this.verticalAlign,
    this.width,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment for the buttons.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel spacing between
  final num? buttonSpacing;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable buttons.
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Pixel height of the buttons.
  final num? height;

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
  final HCNavigationButtonThemeOptions? theme;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML for
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the button.
  final num? width;

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
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (height != null) {
      json["height"] = height;
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
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
    }
    if (width != null) {
      json["width"] = width;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
