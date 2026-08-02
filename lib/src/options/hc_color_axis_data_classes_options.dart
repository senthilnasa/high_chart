part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) An array of data classes or ranges for the
class HCColorAxisDataClassesOptions implements HCOption {
  const HCColorAxisDataClassesOptions({
    this.color,
    this.from,
    this.name,
    this.to,
  });

  /// (Highcharts, Highstock, Highmaps) The color of each data class. If not
  final dynamic color;

  /// (Highcharts, Highstock, Highmaps) The start of the value range that the
  final num? from;

  /// (Highcharts, Highstock, Highmaps) The name of the data class as it
  final String? name;

  /// (Highcharts, Highstock, Highmaps) The end of the value range that the
  final num? to;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (from != null) {
      json["from"] = from;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (to != null) {
      json["to"] = to;
    }
    return json;
  }
}
