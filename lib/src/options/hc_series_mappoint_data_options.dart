part of 'hc_options.dart';

/// (Highmaps) An array of data points for the series. For the `mappoint`
class HCSeriesMappointDataOptions implements HCOption {
  const HCSeriesMappointDataOptions({
    this.color,
    this.dataLabels,
    this.drilldown,
    this.events,
    this.geometry,
    this.id,
    this.lat,
    this.lon,
    this.name,
    this.states,
    this.x,
    this.y,
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

  /// (Highmaps) The latitude of the point. Must be combined with the `lon`
  final num? lat;

  /// (Highmaps) The longitude of the point. Must be combined with the
  final num? lon;

  /// (Highmaps) The name of the point as shown in the legend, tooltip,
  final String? name;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highmaps) The x coordinate of the point in terms of projected units.
  final num? x;

  /// (Highmaps) The x coordinate of the point in terms of projected units.
  final num? y;

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
    if (lat != null) {
      json["lat"] = lat;
    }
    if (lon != null) {
      json["lon"] = lon;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
