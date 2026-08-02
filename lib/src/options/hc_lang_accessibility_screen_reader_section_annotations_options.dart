part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for annotation
class HCLangAccessibilityScreenReaderSectionAnnotationsOptions
    implements HCOption {
  const HCLangAccessibilityScreenReaderSectionAnnotationsOptions({
    this.descriptionMultiplePoints,
    this.descriptionNoPoints,
    this.descriptionSinglePoint,
    this.heading,
  });

  final String? descriptionMultiplePoints;

  final String? descriptionNoPoints;

  final String? descriptionSinglePoint;

  final String? heading;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (descriptionMultiplePoints != null) {
      json["descriptionMultiplePoints"] = descriptionMultiplePoints;
    }
    if (descriptionNoPoints != null) {
      json["descriptionNoPoints"] = descriptionNoPoints;
    }
    if (descriptionSinglePoint != null) {
      json["descriptionSinglePoint"] = descriptionSinglePoint;
    }
    if (heading != null) {
      json["heading"] = heading;
    }
    return json;
  }
}
