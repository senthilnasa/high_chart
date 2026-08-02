part of 'hc_options.dart';

class HCNavigationBindingsVerticalLabelOptions implements HCOption {
  const HCNavigationBindingsVerticalLabelOptions({
    this.annotationsOptions,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options to customize the
  final dynamic annotationsOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotationsOptions != null) {
      json["annotationsOptions"] = hcJsonValue(annotationsOptions);
    }
    return json;
  }
}
