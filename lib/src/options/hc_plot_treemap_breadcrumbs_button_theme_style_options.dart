part of 'hc_options.dart';

class HCPlotTreemapBreadcrumbsButtonThemeStyleOptions implements HCOption {
  const HCPlotTreemapBreadcrumbsButtonThemeStyleOptions({
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
