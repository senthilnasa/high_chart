part of 'hc_options.dart';

/// (Highcharts, Highstock) Point accessibility options for a series.
class HCPlotWindbarbAccessibilityPointOptions implements HCOption {
  const HCPlotWindbarbAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highcharts, Highstock) Date format to use for points on datetime
  final String? dateFormat;

  /// (Highcharts, Highstock) Whether or not to describe points with the
  final dynamic describeNull;

  /// (Highcharts, Highstock) A format string to use instead of the default
  final String? descriptionFormat;

  /// (Highcharts, Highstock) Decimals to use for the values in the point
  final num? valueDecimals;

  /// (Highcharts, Highstock) Format to use for describing the values of
  final String? valueDescriptionFormat;

  /// (Highcharts, Highstock) Prefix to add to the values in the point
  final String? valuePrefix;

  /// (Highcharts, Highstock) Suffix to add to the values in the point
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
