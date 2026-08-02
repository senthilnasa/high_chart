part of 'hc_options.dart';

class HCSeriesPackedBubbleDataLabelsTextPathOptionsObject implements HCOption {
  const HCSeriesPackedBubbleDataLabelsTextPathOptionsObject({
    this.attributes,
    this.enabled,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Presentation attributes for the
  final HCSVGAttributes? attributes;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable `textPath`
  final dynamic enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json["attributes"] = attributes!.toJson();
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    return json;
  }
}
