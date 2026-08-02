part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for descriptions of
class HCAccessibilityPointOptions implements HCOption {
  const HCAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Date format to use for points on
  final String? dateFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to describe
  final dynamic describeNull;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string to use instead
  final String? descriptionFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Decimals to use for the values
  final num? valueDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format to use for describing the
  final String? valueDescriptionFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Prefix to add to the values in
  final String? valuePrefix;

  /// (Highcharts, Highstock, Highmaps, Gantt) Suffix to add to the values in
  final String? valueSuffix;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dateFormat != null) {
      json["dateFormat"] = dateFormat;
    }
    if (describeNull != null) {
      json["describeNull"] = hcJsonValue(describeNull);
    }
    if (descriptionFormat != null) {
      json["descriptionFormat"] = descriptionFormat;
    }
    if (valueDecimals != null) {
      json["valueDecimals"] = valueDecimals;
    }
    if (valueDescriptionFormat != null) {
      json["valueDescriptionFormat"] = valueDescriptionFormat;
    }
    if (valuePrefix != null) {
      json["valuePrefix"] = valuePrefix;
    }
    if (valueSuffix != null) {
      json["valueSuffix"] = valueSuffix;
    }
    return json;
  }
}
