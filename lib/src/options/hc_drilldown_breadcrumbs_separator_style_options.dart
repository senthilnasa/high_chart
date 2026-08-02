part of 'hc_options.dart';

/// (Highcharts, Highmaps) CSS styles for the breadcrumbs separator.
class HCDrilldownBreadcrumbsSeparatorStyleOptions implements HCOption {
  const HCDrilldownBreadcrumbsSeparatorStyleOptions({
    this.color,
    this.fontSize,
  });

  final String? color;

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = color;
    }
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    return json;
  }
}
