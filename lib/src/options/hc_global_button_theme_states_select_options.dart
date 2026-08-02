part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Select state overrides for the
class HCGlobalButtonThemeStatesSelectOptions implements HCOption {
  const HCGlobalButtonThemeStatesSelectOptions({
    this.fill,
    this.style,
  });

  final dynamic fill;

  final HCGlobalButtonThemeStatesSelectStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = hcJsonValue(fill);
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
