part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Point accessibility options for a series.
class HCPlotXrangeAccessibilityPointOptions implements HCOption {
  const HCPlotXrangeAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts, Highstock, Gantt) Date format to use for points on
  final String? dateFormat;

  /// (Highcharts, Highstock, Gantt) Whether or not to describe points with
  final dynamic describeNull;

  /// (Highcharts, Highstock, Gantt) A format string to use instead of the
  final String? descriptionFormat;

  /// (Highcharts, Highstock, Gantt) Decimals to use for the values in the
  final num? valueDecimals;

  /// (Highcharts, Highstock, Gantt) Format to use for describing the
  final String? valueDescriptionFormat;

  /// (Highcharts, Highstock, Gantt) Prefix to add to the values in the
  final String? valuePrefix;

  /// (Highcharts, Highstock, Gantt) Suffix to add to the values in the
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
