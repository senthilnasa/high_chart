part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) A partial fill for each point, typically used
class HCXrangePointPartialFillOptionsObject implements HCOption {
  const HCXrangePointPartialFillOptionsObject({
    this.amount,
    this.fill,
  });

  /// (Highcharts, Highstock, Gantt) The amount of the X-range point to be
  final num? amount;

  /// (Highcharts, Highstock, Gantt) The fill color to be used for partial
  final dynamic fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (amount != null) {
      json["amount"] = amount;
    }
    if (fill != null) {
      json["fill"] = hcJsonValue(fill);
    }
    return json;
  }
}
