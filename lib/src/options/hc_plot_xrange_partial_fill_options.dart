part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) A partial fill for each point, typically used
class HCPlotXrangePartialFillOptions implements HCOption {
  const HCPlotXrangePartialFillOptions({
    this.fill,
  });

  /// (Highcharts, Highstock, Gantt) The fill color to be used for partial
  final dynamic fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = hcJsonValue(fill);
    }
    return json;
  }
}
