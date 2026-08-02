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

  /// (Highcharts, Highstock, Highmaps, Gantt) Chart background, point stroke
  final String? backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Colors for data series and
  final List<String>? colors;

  /// (Highcharts, Highstock, Highmaps, Gantt) Highlight color to be used as
  final String? highlightColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Negative color used in stock
  final String? negativeColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Neutral color to be used as base
  final String? neutralColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) Positive color used in stock
  final String? positiveColor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColor != null) {
      json["backgroundColor"] = backgroundColor;
    }
    if (colors != null) {
      json["colors"] = colors;
    }
    if (highlightColor != null) {
      json["highlightColor"] = highlightColor;
    }
    if (negativeColor != null) {
      json["negativeColor"] = negativeColor;
    }
    if (neutralColor != null) {
      json["neutralColor"] = neutralColor;
    }
    if (positiveColor != null) {
      json["positiveColor"] = positiveColor;
    }
    return json;
  }
}
