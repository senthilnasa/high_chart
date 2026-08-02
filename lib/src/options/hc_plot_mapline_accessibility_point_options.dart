part of 'hc_options.dart';

/// (Highmaps) Point accessibility options for a series.
class HCPlotMaplineAccessibilityPointOptions implements HCOption {
  const HCPlotMaplineAccessibilityPointOptions({
    this.dateFormat,
    this.describeNull,
    this.descriptionFormat,
    this.valueDecimals,
    this.valueDescriptionFormat,
    this.valuePrefix,
    this.valueSuffix,
  });

  /// (Highmaps) Date format to use for points on datetime axes when describing
  final String? dateFormat;

  /// (Highmaps) Whether or not to describe points with the value `null` to
  final dynamic describeNull;

  /// (Highmaps) A format string to use instead of the default for point
  final String? descriptionFormat;

  /// (Highmaps) Decimals to use for the values in the point descriptions. Uses
  final num? valueDecimals;

  /// (Highmaps) Format to use for describing the values of data points to
  final String? valueDescriptionFormat;

  /// (Highmaps) Prefix to add to the values in the point descriptions. Uses
  final String? valuePrefix;

  /// (Highmaps) Suffix to add to the values in the point descriptions. Uses
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
