part of 'hc_options.dart';

/// (Highstock) Point accessibility options for a series.
class HCPlotWmaAccessibilityPointOptions implements HCOption {
  const HCPlotWmaAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highstock) Date format to use for points on datetime axes when
  final String? dateFormat;

  /// (Highstock) Whether or not to describe points with the value `null` to
  final dynamic describeNull;

  /// (Highstock) A format string to use instead of the default for point
  final String? descriptionFormat;

  /// (Highstock) Decimals to use for the values in the point descriptions.
  final num? valueDecimals;

  /// (Highstock) Format to use for describing the values of data points to
  final String? valueDescriptionFormat;

  /// (Highstock) Prefix to add to the values in the point descriptions. Uses
  final String? valuePrefix;

  /// (Highstock) Suffix to add to the values in the point descriptions. Uses
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
