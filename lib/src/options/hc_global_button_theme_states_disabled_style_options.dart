part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Disabled state CSS style overrides
class HCGlobalButtonThemeStatesDisabledStyleOptions implements HCOption {
  const HCGlobalButtonThemeStatesDisabledStyleOptions({
    this.color,
  });

  final String? color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    return json;
  }
}
