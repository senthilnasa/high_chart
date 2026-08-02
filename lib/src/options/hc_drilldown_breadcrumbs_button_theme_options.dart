part of 'hc_options.dart';

/// (Highcharts) A collection of attributes for the buttons. The object takes SVG
class HCDrilldownBreadcrumbsButtonThemeOptions implements HCOption {
  const HCDrilldownBreadcrumbsButtonThemeOptions({
    this.style,
  });

  final HCDrilldownBreadcrumbsButtonThemeStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
