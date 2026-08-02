part of 'hc_options.dart';

/// (Highmaps) An array of data points for the series. For the `geoheatmap`
class HCSeriesGeoheatmapDataOptions implements HCOption {
  const HCSeriesGeoheatmapDataOptions({
    this.color,
    this.dataLabels,
    this.drilldown,
    this.events,
    this.geometry,
    this.id,
    this.labelrank,
    this.middleX,
    this.middleY,
    this.name,
    this.path,
    this.states,
    this.value,
  });

  /// (Highmaps) Individual color for the point. By default the color is either
  final dynamic color;

  /// (Highmaps) Individual data label for each point. The options are the same
  final HCDataLabelsOptions? dataLabels;

  /// (Highmaps) The `id` of a series in the drilldown.series array to use for
  final String? drilldown;

  /// (Highmaps) Individual point events
  final HCPointEventsOptionsObject? events;

  /// (Highmaps) For map and mapline series types, the geometry of a point.
  final dynamic geometry;

  /// (Highmaps) An id for the point. This can be used after render time to get
  final String? id;

  /// (Highmaps) When data labels are laid out on a map, Highmaps runs a
  final num? labelrank;

  /// (Highmaps) The relative mid point of an area, used to place the data
  final num? middleX;

  /// (Highmaps) The relative mid point of an area, used to place the data
  final num? middleY;

  /// (Highmaps) The name of the point as shown in the legend, tooltip,
  final String? name;

  /// (Highmaps) For map and mapline series types, the SVG path for the shape.
  final String? path;

  /// (Highmaps) A collection of options for different series states.
  final HCSeriesStatesOptionsObject? states;

  /// (Highmaps) The value of the point, resulting in a color controlled by
  final num? value;

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
    if (labelrank != null) {
      json["labelrank"] = labelrank;
    }
    if (middleX != null) {
      json["middleX"] = middleX;
    }
    if (middleY != null) {
      json["middleY"] = middleY;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (path != null) {
      json["path"] = path;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (value != null) {
      json["value"] = value;
    }
    return json;
  }
}
