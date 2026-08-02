part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The loading options control the
class HCLoadingOptions implements HCOption {
  const HCLoadingOptions({
    this.hideDuration,
    this.labelStyle,
    this.showDuration,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The duration in milliseconds of
  final num? hideDuration;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the loading label
  final HCCSSObject? labelStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The duration in milliseconds of
  final num? showDuration;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the loading
  final HCCSSObject? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hideDuration != null) {
      json["hideDuration"] = hideDuration;
    }
    if (labelStyle != null) {
      json["labelStyle"] = labelStyle!.toJson();
    }
    if (showDuration != null) {
      json["showDuration"] = showDuration;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
