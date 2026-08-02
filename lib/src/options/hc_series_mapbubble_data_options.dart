part of 'hc_options.dart';

/// (Highmaps) An array of data points for the series. For the `mapbubble`
class HCSeriesMapbubbleDataOptions implements HCOption {
  const HCSeriesMapbubbleDataOptions({
    this.color,
    this.dataLabels,
    this.drilldown,
    this.events,
    this.geometry,
    this.id,
    this.name,
    this.states,
    this.z,
  });

  /// (Highmaps) Individual color for the point. By default the color is
  final dynamic color;

  /// (Highmaps) Individual data label for each point. The options are the
  final HCDataLabelsOptions? dataLabels;

  /// (Highmaps) The `id` of a series in the drilldown.series array to use
  final String? drilldown;

  /// (Highmaps) Individual point events
  final HCPointEventsOptionsObject? events;

  /// (Highmaps) The geometry of a point.
  final dynamic geometry;

  /// (Highmaps) An id for the point. This can be used after render time to
  final String? id;

  /// (Highmaps) The name of the point as shown in the legend, tooltip,
  final String? name;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highmaps) While the `x` and `y` values of the bubble are determined
  final num? z;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (dataLabels != null) {
      json["dataLabels"] = dataLabels!.toJson();
    }
    if (drilldown != null) {
      json["drilldown"] = drilldown;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (geometry != null) {
      json["geometry"] = hcJsonValue(geometry);
    }
    if (id != null) {
      json["id"] = id;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (z != null) {
      json["z"] = z;
    }
    return json;
  }
}
