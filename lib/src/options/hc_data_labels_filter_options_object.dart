part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) A declarative filter to control of which data
class HCDataLabelsFilterOptionsObject implements HCOption {
  const HCDataLabelsFilterOptionsObject({
    this.operator_,
    this.property,
    this.value,
  });

  /// (Highcharts, Highstock, Gantt) The operator to compare by. Can be one of
  final String? operator_;

  /// (Highcharts, Highstock, Gantt) The point property to filter by. Point
  final String? property;

  /// (Highcharts, Highstock, Gantt) The value to compare against.
  final num? value;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (operator_ != null) {
      json["operator"] = operator_;
    }
    if (property != null) {
      json["property"] = property;
    }
    if (value != null) {
      json["value"] = value;
    }
    return json;
  }
}
