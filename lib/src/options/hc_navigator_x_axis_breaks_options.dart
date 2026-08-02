part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) An array defining breaks in the axis, the
class HCNavigatorXAxisBreaksOptions implements HCOption {
  const HCNavigatorXAxisBreaksOptions({
    this.breakSize,
    this.from,
    this.repeat,
    this.to,
  });

  /// (Highcharts, Highstock, Gantt) A number indicating how much space should
  final num? breakSize;

  /// (Highcharts, Highstock, Gantt) The axis value where the break starts. On
  final dynamic from;

  /// (Highcharts, Highstock, Gantt) Defines an interval after which the break
  final num? repeat;

  /// (Highcharts, Highstock, Gantt) The axis value where the break ends. On
  final dynamic to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (breakSize != null) {
      json["breakSize"] = breakSize;
    }
    if (from != null) {
      json["from"] = hcJsonValue(from);
    }
    if (repeat != null) {
      json["repeat"] = repeat;
    }
    if (to != null) {
      json["to"] = hcJsonValue(to);
    }
    return json;
  }
}
