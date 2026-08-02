part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) The corner radius of the border
class HCPlotColumnrangeBorderRadiusOptions implements HCOption {
  const HCPlotColumnrangeBorderRadiusOptions({
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
