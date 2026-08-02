part of 'hc_options.dart';

/// (Highcharts, Highmaps) Options object for Breadcrumbs separator.
class HCDrilldownBreadcrumbsSeparatorOptions implements HCOption {
  const HCDrilldownBreadcrumbsSeparatorOptions({
    this.style,
    this.text,
  });

  /// (Highcharts, Highmaps) CSS styles for the breadcrumbs separator.
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
