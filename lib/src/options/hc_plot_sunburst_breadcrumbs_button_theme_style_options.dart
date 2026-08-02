part of 'hc_options.dart';

class HCPlotSunburstBreadcrumbsButtonThemeStyleOptions implements HCOption {
  const HCPlotSunburstBreadcrumbsButtonThemeStyleOptions({
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
