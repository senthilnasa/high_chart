part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) A title to be added on top of the
class HCLegendTitleOptions implements HCOption {
  const HCLegendTitleOptions({
    this.style,
    this.text,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Generic CSS styles for the
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text or HTML string for the
  final String? text;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (text != null) {
      json["text"] = text;
    }
    return json;
  }
}
