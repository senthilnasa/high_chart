part of 'hc_options.dart';

/// (Highstock) Options to customize the bindings' annotation shapes and labels.
class HCNavigationBindingsInfinityLineAnnotationsOptions implements HCOption {
  const HCNavigationBindingsInfinityLineAnnotationsOptions({
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

  /// (Highstock) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Options for annotation's control points. Each control point
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Whether to hide the part of the annotation that is outside
  final dynamic crop;

  /// (Highstock) Allow an annotation to be draggable by a user. Possible
  final String? draggable;

  /// (Highstock) Events available in annotations.
  final HCNavigationBindingsInfinityLineAnnotationsEventsOptions? events;

  /// (Highstock) Sets an ID for an annotation. Can be user later when removing
  final dynamic id;

  /// (Highstock) Options for annotation's labels. Each label inherits options
  final HCNavigationBindingsInfinityLineAnnotationsLabelOptions? labelOptions;

  /// (Highstock) An array of labels for the annotation. For options that apply
  final List<HCNavigationBindingsInfinityLineAnnotationsLabelsOptions>? labels;

  /// (Highstock) Options for annotation's shapes. Each shape inherits options
  final HCNavigationBindingsInfinityLineAnnotationsShapeOptions? shapeOptions;

  /// (Highstock) An array of shapes for the annotation. For options that apply
  final List<HCNavigationBindingsInfinityLineAnnotationsShapesOptions>? shapes;

  /// (Highstock) For advanced annotations, this option defines the type of
  final String? type;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsInfinityLineAnnotationsTypeOptions? typeOptions;

  /// (Highstock) Option override for specific advanced annotation types. This
  final HCNavigationBindingsInfinityLineAnnotationsTypesOptions? types;

  /// (Highstock) Whether the annotation is visible.
  final dynamic visible;

  /// (Highstock) The Z index of the annotation.
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
