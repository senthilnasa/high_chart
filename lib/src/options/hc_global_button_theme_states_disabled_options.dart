part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Disabled state overrides for the
class HCGlobalButtonThemeStatesDisabledOptions implements HCOption {
  const HCGlobalButtonThemeStatesDisabledOptions({
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Disabled state CSS style
  final HCGlobalButtonThemeStatesDisabledStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
