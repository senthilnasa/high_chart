part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for configuring markers for
class HCDefsOptions implements HCOption {
  const HCDefsOptions({
    this.arrow,
  });

  final dynamic arrow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arrow != null) {
      json["arrow"] = hcJsonValue(arrow);
    }
    return json;
  }
}
