part of 'hc_options.dart';

/// (Highcharts) A collection of options for the individual nodes. The nodes in a
class HCSeriesSankeyNodesOptionsObject implements HCOption {
  const HCSeriesSankeyNodesOptionsObject({
    this.color,
    this.colorIndex,
    this.column,
    this.dataLabels,
    this.description,
    this.height,
    this.id,
    this.image,
    this.layout,
    this.level,
    this.name,
    this.offset,
    this.offsetHorizontal,
    this.offsetVertical,
    this.title,
  });

  /// (Highcharts) The color of the auto generated node.
  final dynamic color;

  /// (Highcharts) The color index of the auto generated node, especially for
  final num? colorIndex;

  /// (Highcharts) An optional column index of where to place the node. The
  final num? column;

  /// (Highcharts, Highstock, Highmaps, Gantt) Individual data label for each
  final dynamic dataLabels;

  /// (Highcharts) The job description for the node card, will be inserted by
  final String? description;

  /// (Highcharts) The height of the node.
  final num? height;

  /// (Highcharts) The id of the auto-generated node, referring to the `from`
  final String? id;

  /// (Highcharts) An image for the node card, will be inserted by the default
  final String? image;

  /// (Highcharts) Layout for the node's children. If `hanging`, this node's
  final String? layout;

  /// (Highcharts) An optional level index of where to place the node. The
  final num? level;

  /// (Highcharts) The name to display for the node in data labels and
  final String? name;

  /// (Highcharts) This option is deprecated, use offsetHorizontal and
  final dynamic offset;

  /// (Highcharts) The horizontal offset of a node. Positive values shift the
  final dynamic offsetHorizontal;

  /// (Highcharts) The vertical offset of a node. Positive values shift the
  final dynamic offsetVertical;

  /// (Highcharts) The job title for the node card, will be inserted by the
  final String? title;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (colorIndex != null) {
      json["colorIndex"] = colorIndex;
    }
    if (column != null) {
      json["column"] = column;
    }
    if (dataLabels != null) {
      json["dataLabels"] = hcJsonValue(dataLabels);
    }
    if (description != null) {
      json["description"] = description;
    }
    if (height != null) {
      json["height"] = height;
    }
    if (id != null) {
      json["id"] = id;
    }
    if (image != null) {
      json["image"] = image;
    }
    if (layout != null) {
      json["layout"] = layout;
    }
    if (level != null) {
      json["level"] = level;
    }
    if (name != null) {
      json["name"] = name;
    }
    if (offset != null) {
      json["offset"] = hcJsonValue(offset);
    }
    if (offsetHorizontal != null) {
      json["offsetHorizontal"] = hcJsonValue(offsetHorizontal);
    }
    if (offsetVertical != null) {
      json["offsetVertical"] = hcJsonValue(offsetVertical);
    }
    if (title != null) {
      json["title"] = title;
    }
    return json;
  }
}
