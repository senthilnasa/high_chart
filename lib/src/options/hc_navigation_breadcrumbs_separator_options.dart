part of 'hc_options.dart';

/// (Highcharts) Options object for Breadcrumbs separator.
class HCNavigationBreadcrumbsSeparatorOptions implements HCOption {
  const HCNavigationBreadcrumbsSeparatorOptions({
    this.style,
    this.text,
  });

  /// (Highcharts) CSS styles for the breadcrumbs separator.
  final dynamic style;

  final String? text;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (text != null) {
      json["text"] = text;
    }
    return json;
  }
}
