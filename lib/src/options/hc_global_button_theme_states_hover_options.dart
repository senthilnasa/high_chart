part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Hover state overrides for the
class HCGlobalButtonThemeStatesHoverOptions implements HCOption {
  const HCGlobalButtonThemeStatesHoverOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = fill;
    }
    return json;
  }
}
