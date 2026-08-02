part of 'hc_options.dart';

class HCAxisDateTimeLabelFormatsOptionsObject implements HCOption {
  const HCAxisDateTimeLabelFormatsOptionsObject({
    this.boundary,
    this.list,
    this.main,
    this.range,
  });

  /// (Highcharts, Highstock, Gantt) Label format that should be used when a
  final String? boundary;

  /// (Highcharts, Highstock, Gantt) List of possible format strings used for
  final List<dynamic>? list;

  final String? main;

  /// (Gantt) When `false`, this time unit is treated as a point in time rather
  final dynamic range;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (boundary != null) {
      json["boundary"] = boundary;
    }
    if (list != null) {
      json["list"] = list!.map((e) => hcJsonValue(e)).toList();
    }
    if (main != null) {
      json["main"] = main;
    }
    if (range != null) {
      json["range"] = hcJsonValue(range);
    }
    return json;
  }
}
