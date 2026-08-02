part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) The corner radius of the border
class HCPlotRenkoBorderRadiusOptions implements HCOption {
  const HCPlotRenkoBorderRadiusOptions({
    this.where,
  });

  final String? where;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (where != null) {
      json["where"] = where;
    }
    return json;
  }
}
