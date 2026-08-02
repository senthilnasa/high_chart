part of 'hc_options.dart';

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

  /// (Highcharts, Highstock, Highmaps) The alignment of the labels compared to
  final String? align;

  /// (Highcharts, Highstock, Highmaps) Whether to allow data labels to
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Highmaps) An additional class name to apply to
  final String? className;

  /// (Highcharts, Highstock, Highmaps) A format string for the bubble legend
  final String? format;

  /// (Highcharts, Highstock, Highmaps) CSS styles for the labels.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps) The x position offset of the label
  final num? x;

  /// (Highcharts, Highstock, Highmaps) The y position offset of the label
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (allowOverlap != null) {
      json["allowOverlap"] = hcJsonValue(allowOverlap);
    }
    if (className != null) {
      json["className"] = className;
    }
    if (format != null) {
      json["format"] = format;
    }
    if (style != null) {
      json["style"] = style!.toJson();
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
