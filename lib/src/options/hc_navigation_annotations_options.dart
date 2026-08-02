part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Additional options to be merged into
class HCNavigationAnnotationsOptions implements HCOption {
  const HCNavigationAnnotationsOptions({
    this.animation,
    this.className,
    this.controlPointOptions,
    this.crop,
    this.draggable,
    this.events,
    this.id,
    this.labelOptions,
    this.labels,
    this.shapeOptions,
    this.shapes,
    this.type,
    this.typeOptions,
    this.types,
    this.visible,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for styling by CSS.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's control
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide the part of the
  final dynamic crop;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow an annotation to be
  final String? draggable;

  /// (Highcharts, Highstock, Highmaps, Gantt) Events available in annotations.
  final HCNavigationAnnotationsEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) Sets an ID for an annotation.
  final dynamic id;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's labels.
  final HCNavigationAnnotationsLabelOptions? labelOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of labels for the
  final List<HCNavigationAnnotationsLabelsOptions>? labels;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's shapes.
  final HCNavigationAnnotationsShapeOptions? shapeOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of shapes for the
  final List<HCNavigationAnnotationsShapesOptions>? shapes;

  /// (Highstock) For advanced annotations, this option defines the type of
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional options for an
  final HCNavigationAnnotationsTypeOptions? typeOptions;

  /// (Highstock) Option override for specific advanced annotation types. This
  final HCNavigationAnnotationsTypesOptions? types;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the annotation is
  final dynamic visible;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index of the annotation.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (className != null) {
      json["className"] = className;
    }
    if (controlPointOptions != null) {
      json["controlPointOptions"] = controlPointOptions!.toJson();
    }
    if (crop != null) {
      json["crop"] = hcJsonValue(crop);
    }
    if (draggable != null) {
      json["draggable"] = draggable;
    }
    if (events != null) {
      json["events"] = events!.toJson();
    }
    if (id != null) {
      json["id"] = hcJsonValue(id);
    }
    if (labelOptions != null) {
      json["labelOptions"] = labelOptions!.toJson();
    }
    if (labels != null) {
      json["labels"] = labels!.map((e) => e.toJson()).toList();
    }
    if (shapeOptions != null) {
      json["shapeOptions"] = shapeOptions!.toJson();
    }
    if (shapes != null) {
      json["shapes"] = shapes!.map((e) => e.toJson()).toList();
    }
    if (type != null) {
      json["type"] = type;
    }
    if (typeOptions != null) {
      json["typeOptions"] = typeOptions!.toJson();
    }
    if (types != null) {
      json["types"] = types!.toJson();
    }
    if (visible != null) {
      json["visible"] = hcJsonValue(visible);
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
