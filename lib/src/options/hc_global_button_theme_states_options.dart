part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) State overrides for the buttons
class HCGlobalButtonThemeStatesOptions implements HCOption {
  const HCGlobalButtonThemeStatesOptions({
    this.disabled,
    this.hover,
    this.select,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Disabled state overrides for the
  final HCGlobalButtonThemeStatesDisabledOptions? disabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Hover state overrides for the
  final HCGlobalButtonThemeStatesHoverOptions? hover;

  /// (Highcharts, Highstock, Highmaps, Gantt) Select state overrides for the
  final HCGlobalButtonThemeStatesSelectOptions? select;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (disabled != null) {
      json["disabled"] = disabled!.toJson();
    }
    if (hover != null) {
      json["hover"] = hover!.toJson();
    }
    if (select != null) {
      json["select"] = select!.toJson();
    }
    return json;
  }
}
