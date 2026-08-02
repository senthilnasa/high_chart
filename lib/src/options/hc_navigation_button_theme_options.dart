part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) A configuration object for the
class HCNavigationButtonThemeOptions implements HCOption {
  const HCNavigationButtonThemeOptions({
    this.fill,
    this.padding,
    this.stroke,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The default fill exists only to
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) Padding for the button.
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default stroke for the buttons.
  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = hcJsonValue(fill);
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (stroke != null) {
      json["stroke"] = stroke;
    }
    return json;
  }
}
