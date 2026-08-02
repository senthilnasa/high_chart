part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Options for a label text which should follow
class HCDataLabelsTextPathOptionsObject implements HCOption {
  const HCDataLabelsTextPathOptionsObject({
    this.attributes,
    this.enabled,
  });

  /// (Highcharts, Highstock, Gantt) Presentation attributes for the text path.
  final dynamic attributes;

  /// (Highcharts, Highstock, Gantt) Enable or disable `textPath` option for
  final dynamic enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json["attributes"] = hcJsonValue(attributes);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    return json;
  }
}
