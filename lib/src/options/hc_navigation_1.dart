part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `annotation`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation. For other animations, see chart.animation and
class HCNavigationAnnotationsAnimationOptions implements HCOption {
  const HCNavigationAnnotationsAnimationOptions({
    this.defer,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The animation delay time in milliseconds. Set to `0` renders annotation immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

class HCNavigationAnnotationsControlPointStyleOptions implements HCOption {
  const HCNavigationAnnotationsControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Events available in annotations.
class HCNavigationAnnotationsEventsOptions implements HCOption {
  const HCNavigationAnnotationsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsLabelOptions implements HCOption {
  const HCNavigationAnnotationsLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for styling by CSS.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highcharts, Highstock, Highmaps, Gantt) The label's pixel distance from the point.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data label.
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alias for the format option.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationAnnotationsLabelsControlPointsStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsLabelsControlPointsStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) An array of labels for the annotation. For options that apply to multiple labels, they can be added to the labelOptions.
class HCNavigationAnnotationsLabelsOptions implements HCOption {
  const HCNavigationAnnotationsLabelsOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.controlPoints,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.point,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highcharts, Highstock, Highmaps, Gantt) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for styling by CSS.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) The array of control points.
  final dynamic controlPoints;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highcharts, Highstock, Highmaps, Gantt) The label's pixel distance from the point.
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data label.
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) This option defines the point to which the label will be connected. It can be either the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final dynamic point;

  /// (Highcharts, Highstock, Highmaps, Gantt) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alias for the format option.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (controlPoints != null) {
      json['controlPoints'] = hcJsonValue(controlPoints);
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (point != null) {
      json['point'] = hcJsonValue(point);
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Additional options to be merged into all annotations.
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial animation when a series is displayed for the `annotation`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation. For other animations, see chart.animation and
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for styling by CSS.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide the part of the annotation that is outside the plot area.
  final bool? crop;

  /// (Highcharts, Highstock, Highmaps, Gantt) Allow an annotation to be draggable by a user. Possible values are `'x'`, `'xy'`, `'y'` and `''` (disabled).
  final String? draggable;

  /// (Highcharts, Highstock, Highmaps, Gantt) Events available in annotations.
  final HCNavigationAnnotationsEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) Sets an ID for an annotation. Can be user later when removing an annotation in Chart.removeAnnotation(id) method.
  final dynamic id;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsLabelOptions? labelOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of labels for the annotation. For options that apply to multiple labels, they can be added to the labelOptions.
  final List<HCNavigationAnnotationsLabelsOptions>? labels;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's shapes. Each shape inherits options from the shapeOptions object. An option from the shapeOptions can be overwritten by config for a specific shape.
  final HCNavigationAnnotationsShapeOptions? shapeOptions;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of shapes for the annotation. For options that apply to multiple shapes, then can be added to the shapeOptions.
  final List<HCNavigationAnnotationsShapesOptions>? shapes;

  /// (Highstock) For advanced annotations, this option defines the type of annotation. Can be one of the keys listed under the types option.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypeOptions? typeOptions;

  /// (Highstock) Option override for specific advanced annotation types. This collection is intended for general theming using `Highcharts.setOptions()`.
  final HCNavigationAnnotationsTypesOptions? types;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the annotation is visible.
  final bool? visible;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index of the annotation.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (className != null) {
      json['className'] = className;
    }
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (draggable != null) {
      json['draggable'] = draggable;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (id != null) {
      json['id'] = hcJsonValue(id);
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (labels != null) {
      json['labels'] = labels!.map((e) => e.toJson()).toList();
    }
    if (shapeOptions != null) {
      json['shapeOptions'] = shapeOptions!.toJson();
    }
    if (shapes != null) {
      json['shapes'] = shapes!.map((e) => e.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type;
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    if (types != null) {
      json['types'] = types!.toJson();
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Options for annotation's shapes. Each shape inherits options from the shapeOptions object. An option from the shapeOptions can be overwritten by config for a specific shape.
class HCNavigationAnnotationsShapeOptions implements HCOption {
  const HCNavigationAnnotationsShapeOptions({
    this.dashStyle,
    this.fill,
    this.height,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's fill.
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highcharts, Highstock, Highmaps, Gantt) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsShapesControlPointsStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsShapesControlPointsStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) An array of shapes for the annotation. For options that apply to multiple shapes, then can be added to the shapeOptions.
class HCNavigationAnnotationsShapesOptions implements HCOption {
  const HCNavigationAnnotationsShapesOptions({
    this.controlPoints,
    this.dashStyle,
    this.fill,
    this.height,
    this.markerEnd,
    this.markerStart,
    this.point,
    this.points,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The array of control points.
  final dynamic controlPoints;

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's fill.
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) Id of the marker which will be drawn at the final vertex of the path. Custom markers can be defined in defs property.
  final String? markerEnd;

  /// (Highcharts, Highstock, Highmaps, Gantt) Id of the marker which will be drawn at the first vertex of the path. Custom markers can be defined in defs property.
  final String? markerStart;

  /// (Highcharts, Highstock, Highmaps, Gantt) This option defines the point to which the shape will be connected. It can be either the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final dynamic point;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of points for the shape or a callback function that returns that shape point.
  final List<dynamic>? points;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highcharts, Highstock, Highmaps, Gantt) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoints != null) {
      json['controlPoints'] = hcJsonValue(controlPoints);
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (markerEnd != null) {
      json['markerEnd'] = markerEnd;
    }
    if (markerStart != null) {
      json['markerStart'] = markerStart;
    }
    if (point != null) {
      json['point'] = hcJsonValue(point);
    }
    if (points != null) {
      json['points'] = points!.map((e) => hcJsonValue(e)).toList();
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Background shape options for the annotation.
class HCNavigationAnnotationsTypeBackgroundOptions implements HCOption {
  const HCNavigationAnnotationsTypeBackgroundOptions({
    this.dashStyle,
    this.fill,
    this.height,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's fill.
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highcharts, Highstock, Highmaps, Gantt) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Line options.
class HCNavigationAnnotationsTypeLineOptions implements HCOption {
  const HCNavigationAnnotationsTypeLineOptions({
    this.dashStyle,
    this.fill,
    this.height,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's fill.
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highcharts, Highstock, Highmaps, Gantt) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypeOptions({
    this.background,
    this.height,
    this.line,
    this.point,
    this.points,
    this.type,
    this.xAxis,
    this.yAxis,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Background shape options for the annotation.
  final HCNavigationAnnotationsTypeBackgroundOptions? background;

  /// (Highcharts, Highstock, Highmaps, Gantt) Height of the annotation in pixels.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) Line options.
  final HCNavigationAnnotationsTypeLineOptions? line;

  /// (Highcharts, Highstock, Highmaps, Gantt) A single point that the annotation is attached to. It can be either the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final dynamic point;

  /// (Highcharts, Highstock, Highmaps, Gantt) An array of points that the annotation is attached to. Each point can the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final List<dynamic>? points;

  /// (Highcharts, Highstock, Highmaps, Gantt) The annotation type identifier.
  final String? type;

  /// (Highcharts, Highstock, Highmaps, Gantt) This number defines which `xAxis` the point is connected to. It refers to either the axis id or the index of the axis in the `xAxis` array.
  final num? xAxis;

  /// (Highcharts, Highstock, Highmaps, Gantt) This number defines which `yAxis` the point is connected to. It refers to either the axis id or the index of the axis in the `yAxis` array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json['background'] = background!.toJson();
    }
    if (height != null) {
      json['height'] = height;
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (point != null) {
      json['point'] = hcJsonValue(point);
    }
    if (points != null) {
      json['points'] = points!.map((e) => hcJsonValue(e)).toList();
    }
    if (type != null) {
      json['type'] = type;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesCrookedLineControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesCrookedLineControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesCrookedLineLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesCrookedLineLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Options for the crooked line annotation type.
class HCNavigationAnnotationsTypesCrookedLineOptions implements HCOption {
  const HCNavigationAnnotationsTypesCrookedLineOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesCrookedLineLabelOptions? labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesCrookedLineTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesCrookedLineTypeLineOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesCrookedLineTypeLineOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesCrookedLineTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesCrookedLineTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesCrookedLineTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesCrookedLineTypePointsOptions>? points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesCrookedLineTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesCrookedLineTypePointsOptions({
    this.controlPoint,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesElliottWaveControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesElliottWaveLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.type,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final String? backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final dynamic style;

  /// (Highstock) Alias for the format option.
  final String? text;

  final String? type;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Styles for the annotation's label.
class HCNavigationAnnotationsTypesElliottWaveLabelStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveLabelStyleOptions({
    this.color,
  });

  final String? color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    return json;
  }
}

/// (Highstock) Options for the elliott wave annotation type.
class HCNavigationAnnotationsTypesElliottWaveOptions implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesElliottWaveLabelOptions? labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesElliottWaveTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesElliottWaveTypeLineOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveTypeLineOptions({
    this.fill,
    this.strokeWidth,
  });

  final String? fill;

  final num? strokeWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesElliottWaveTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesElliottWaveTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesElliottWaveTypePointsOptions>? points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesElliottWaveTypePointsLabelOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveTypePointsLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesElliottWaveTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesElliottWaveTypePointsOptions({
    this.controlPoint,
    this.label,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesElliottWaveTypePointsLabelOptions? label;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesFibonacciControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesFibonacciLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final String? backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final dynamic style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Styles for the annotation's label.
class HCNavigationAnnotationsTypesFibonacciLabelStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciLabelStyleOptions({
    this.color,
  });

  final String? color;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    return json;
  }
}

/// (Highstock) Options for the fibonacci annotation type.
class HCNavigationAnnotationsTypesFibonacciOptions implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesFibonacciLabelOptions? labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesFibonacciTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesFibonacciTimeZonesControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTimeZonesControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesFibonacciTimeZonesLabelOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTimeZonesLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Options for the fibonacci time zones annotation type.
class HCNavigationAnnotationsTypesFibonacciTimeZonesOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTimeZonesOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesFibonacciTimeZonesLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesFibonacciTimeZonesTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions({
    this.events,
  });

  final dynamic events;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (events != null) {
      json['events'] = hcJsonValue(events);
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesFibonacciTimeZonesTypeLineOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTimeZonesTypeLineOptions({
    this.fill,
    this.stroke,
    this.strokeWidth,
  });

  final String? fill;

  /// (Highstock) The color of the lines.
  final String? stroke;

  /// (Highstock) The width of the lines.
  final num? strokeWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesFibonacciTimeZonesTypeOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTimeZonesTypeOptions({
    this.controlPointOptions,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  final HCNavigationAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions?
      controlPointOptions;

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesFibonacciTimeZonesTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesFibonacciTimeZonesTypePointsOptions>?
      points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesFibonacciTimeZonesTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTimeZonesTypePointsOptions({
    this.controlPoint,
    this.x,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    return json;
  }
}

/// (Highstock) An array with options for the labels.
class HCNavigationAnnotationsTypesFibonacciTypeLabelsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTypeLabelsOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesFibonacciTypeLineOptions implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTypeLineOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesFibonacciTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTypeOptions({
    this.backgroundColors,
    this.height,
    this.labels,
    this.line,
    this.lineColor,
    this.lineColors,
    this.points,
    this.reversed,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) An array of background colors: Defaults to: (see online documentation for example)
  final dynamic backgroundColors;

  /// (Highstock) The height of the fibonacci in terms of yAxis.
  final num? height;

  /// (Highstock) An array with options for the labels.
  final List<HCNavigationAnnotationsTypesFibonacciTypeLabelsOptions>? labels;

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesFibonacciTypeLineOptions? line;

  /// (Highstock) The color of line.
  final String? lineColor;

  /// (Highstock) An array of colors for the lines.
  final dynamic lineColors;

  final List<HCNavigationAnnotationsTypesFibonacciTypePointsOptions>? points;

  /// (Highstock) Whether the annotation levels should be reversed. By default they start from 0 and go to 1.
  final bool? reversed;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColors != null) {
      json['backgroundColors'] = hcJsonValue(backgroundColors);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (labels != null) {
      json['labels'] = labels!.map((e) => e.toJson()).toList();
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (lineColor != null) {
      json['lineColor'] = lineColor;
    }
    if (lineColors != null) {
      json['lineColors'] = hcJsonValue(lineColors);
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (reversed != null) {
      json['reversed'] = reversed;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesFibonacciTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesFibonacciTypePointsOptions({
    this.controlPoint,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesInfinityLineControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesInfinityLineControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesInfinityLineLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesInfinityLineLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Options for the infinity line annotation type.
class HCNavigationAnnotationsTypesInfinityLineOptions implements HCOption {
  const HCNavigationAnnotationsTypesInfinityLineOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesInfinityLineLabelOptions? labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesInfinityLineTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesInfinityLineTypeLineOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesInfinityLineTypeLineOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesInfinityLineTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesInfinityLineTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesInfinityLineTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesInfinityLineTypePointsOptions>? points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesInfinityLineTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesInfinityLineTypePointsOptions({
    this.controlPoint,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesMeasureControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesMeasureControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for the measure annotation type.
class HCNavigationAnnotationsTypesMeasureOptions implements HCOption {
  const HCNavigationAnnotationsTypesMeasureOptions({
    this.controlPointOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesMeasureTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesMeasureTypeBackgroundOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypeBackgroundOptions({
    this.fill,
    this.stroke,
    this.strokeWidth,
  });

  /// (Highstock) The color of the rectangle.
  final String? fill;

  /// (Highstock) The color of border.
  final String? stroke;

  /// (Highstock) The width of border.
  final num? strokeWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    return json;
  }
}

/// (Highstock) Configure a crosshair that is horizontally placed in middle of rectangle.
class HCNavigationAnnotationsTypesMeasureTypeCrosshairXOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypeCrosshairXOptions({
    this.dashStyle,
    this.enabled,
    this.markerEnd,
    this.zIndex,
  });

  /// (Highstock) The dash or dot style of the crosshair's line. For possible values, see this demonstration.
  final String? dashStyle;

  /// (Highstock) Enable or disable the horizontal crosshair.
  final bool? enabled;

  /// (Highstock) The marker-end defines the arrowhead that will be drawn at the final vertex of the given crosshair's path.
  final String? markerEnd;

  /// (Highstock) The Z index of the crosshair in annotation.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (markerEnd != null) {
      json['markerEnd'] = markerEnd;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highstock) Configure a crosshair that is vertically placed in middle of rectangle.
class HCNavigationAnnotationsTypesMeasureTypeCrosshairYOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypeCrosshairYOptions({
    this.dashStyle,
    this.enabled,
    this.markerEnd,
    this.zIndex,
  });

  /// (Highstock) The dash or dot style of the crosshair's line. For possible values, see this demonstration.
  final String? dashStyle;

  /// (Highstock) Enable or disable the vertical crosshair.
  final bool? enabled;

  /// (Highstock) The marker-end defines the arrowhead that will be drawn at the final vertex of the given crosshair's path.
  final String? markerEnd;

  /// (Highstock) The Z index of the crosshair in annotation.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (markerEnd != null) {
      json['markerEnd'] = markerEnd;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesMeasureTypeLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypeLabelOptions({
    this.enabled,
    this.formatter,
    this.style,
  });

  /// (Highstock) Enable or disable the label text (min, max, average, bins values).
  final bool? enabled;

  /// (Highstock) Formatter function for the label text.
  final dynamic formatter;

  /// (Highstock) CSS styles for the measure label.
  final dynamic style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (formatter != null) {
      json['formatter'] = hcJsonValue(formatter);
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    return json;
  }
}

/// (Highstock) CSS styles for the measure label.
class HCNavigationAnnotationsTypesMeasureTypeLabelStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypeLabelStyleOptions({
    this.color,
    this.fontSize,
  });

  final String? color;

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesMeasureTypeLineOptions implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypeLineOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesMeasureTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypeOptions({
    this.background,
    this.crosshairX,
    this.crosshairY,
    this.label,
    this.line,
    this.points,
    this.selectType,
    this.xAxis,
    this.yAxis,
  });

  final HCNavigationAnnotationsTypesMeasureTypeBackgroundOptions? background;

  /// (Highstock) Configure a crosshair that is horizontally placed in middle of rectangle.
  final HCNavigationAnnotationsTypesMeasureTypeCrosshairXOptions? crosshairX;

  /// (Highstock) Configure a crosshair that is vertically placed in middle of rectangle.
  final HCNavigationAnnotationsTypesMeasureTypeCrosshairYOptions? crosshairY;

  final HCNavigationAnnotationsTypesMeasureTypeLabelOptions? label;

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesMeasureTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesMeasureTypePointsOptions>? points;

  /// (Highstock) Decides in what dimensions the user can resize by dragging the mouse. Can be one of x, y or xy.
  final String? selectType;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the yAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json['background'] = background!.toJson();
    }
    if (crosshairX != null) {
      json['crosshairX'] = crosshairX!.toJson();
    }
    if (crosshairY != null) {
      json['crosshairY'] = crosshairY!.toJson();
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (selectType != null) {
      json['selectType'] = selectType;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesMeasureTypePointsOptions implements HCOption {
  const HCNavigationAnnotationsTypesMeasureTypePointsOptions({
    this.controlPoint,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Option override for specific advanced annotation types. This collection is intended for general theming using `Highcharts.setOptions()`.
class HCNavigationAnnotationsTypesOptions implements HCOption {
  const HCNavigationAnnotationsTypesOptions({
    this.crookedLine,
    this.elliottWave,
    this.fibonacci,
    this.fibonacciTimeZones,
    this.infinityLine,
    this.measure,
    this.pitchfork,
    this.timeCycles,
    this.tunnel,
    this.verticalLine,
  });

  /// (Highstock) Options for the crooked line annotation type.
  final HCNavigationAnnotationsTypesCrookedLineOptions? crookedLine;

  /// (Highstock) Options for the elliott wave annotation type.
  final HCNavigationAnnotationsTypesElliottWaveOptions? elliottWave;

  /// (Highstock) Options for the fibonacci annotation type.
  final HCNavigationAnnotationsTypesFibonacciOptions? fibonacci;

  /// (Highstock) Options for the fibonacci time zones annotation type.
  final HCNavigationAnnotationsTypesFibonacciTimeZonesOptions?
      fibonacciTimeZones;

  /// (Highstock) Options for the infinity line annotation type.
  final HCNavigationAnnotationsTypesInfinityLineOptions? infinityLine;

  /// (Highstock) Options for the measure annotation type.
  final HCNavigationAnnotationsTypesMeasureOptions? measure;

  /// (Highstock) Options for the pitchfork annotation type.
  final HCNavigationAnnotationsTypesPitchforkOptions? pitchfork;

  /// (Highstock) Options for the time cycles annotation type.
  final HCNavigationAnnotationsTypesTimeCyclesOptions? timeCycles;

  /// (Highstock) Options for the tunnel annotation type.
  final HCNavigationAnnotationsTypesTunnelOptions? tunnel;

  /// (Highstock) Options for the vertical line annotation type.
  final HCNavigationAnnotationsTypesVerticalLineOptions? verticalLine;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (crookedLine != null) {
      json['crookedLine'] = crookedLine!.toJson();
    }
    if (elliottWave != null) {
      json['elliottWave'] = elliottWave!.toJson();
    }
    if (fibonacci != null) {
      json['fibonacci'] = fibonacci!.toJson();
    }
    if (fibonacciTimeZones != null) {
      json['fibonacciTimeZones'] = fibonacciTimeZones!.toJson();
    }
    if (infinityLine != null) {
      json['infinityLine'] = infinityLine!.toJson();
    }
    if (measure != null) {
      json['measure'] = measure!.toJson();
    }
    if (pitchfork != null) {
      json['pitchfork'] = pitchfork!.toJson();
    }
    if (timeCycles != null) {
      json['timeCycles'] = timeCycles!.toJson();
    }
    if (tunnel != null) {
      json['tunnel'] = tunnel!.toJson();
    }
    if (verticalLine != null) {
      json['verticalLine'] = verticalLine!.toJson();
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesPitchforkControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesPitchforkControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesPitchforkLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesPitchforkLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Options for the pitchfork annotation type.
class HCNavigationAnnotationsTypesPitchforkOptions implements HCOption {
  const HCNavigationAnnotationsTypesPitchforkOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesPitchforkLabelOptions? labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesPitchforkTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

/// (Highstock) Inner background options.
class HCNavigationAnnotationsTypesPitchforkTypeInnerBackgroundOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesPitchforkTypeInnerBackgroundOptions({
    this.dashStyle,
    this.fill,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final String? fill;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesPitchforkTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesPitchforkTypeOptions({
    this.innerBackground,
    this.outerBackground,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Inner background options.
  final HCNavigationAnnotationsTypesPitchforkTypeInnerBackgroundOptions?
      innerBackground;

  /// (Highstock) Outer background options.
  final HCNavigationAnnotationsTypesPitchforkTypeOuterBackgroundOptions?
      outerBackground;

  final List<HCNavigationAnnotationsTypesPitchforkTypePointsOptions>? points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (innerBackground != null) {
      json['innerBackground'] = innerBackground!.toJson();
    }
    if (outerBackground != null) {
      json['outerBackground'] = outerBackground!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highstock) Outer background options.
class HCNavigationAnnotationsTypesPitchforkTypeOuterBackgroundOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesPitchforkTypeOuterBackgroundOptions({
    this.dashStyle,
    this.fill,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final String? fill;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesPitchforkTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesPitchforkTypePointsOptions({
    this.controlPoint,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesTimeCyclesControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesTimeCyclesControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for the time cycles annotation type.
class HCNavigationAnnotationsTypesTimeCyclesOptions implements HCOption {
  const HCNavigationAnnotationsTypesTimeCyclesOptions({
    this.controlPointOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesTimeCyclesTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesTimeCyclesTypeLineOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesTimeCyclesTypeLineOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesTimeCyclesTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesTimeCyclesTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesTimeCyclesTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesTimeCyclesTypePointsOptions>? points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesTimeCyclesTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesTimeCyclesTypePointsOptions({
    this.controlPoint,
    this.x,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesTunnelControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesTunnelControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesTunnelLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesTunnelLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Options for the tunnel annotation type.
class HCNavigationAnnotationsTypesTunnelOptions implements HCOption {
  const HCNavigationAnnotationsTypesTunnelOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesTunnelLabelOptions? labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesTunnelTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

/// (Highstock) Background options.
class HCNavigationAnnotationsTypesTunnelTypeBackgroundOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesTunnelTypeBackgroundOptions({
    this.fill,
    this.strokeWidth,
  });

  final String? fill;

  final num? strokeWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesTunnelTypeHeightControlPointStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesTunnelTypeHeightControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesTunnelTypeLineOptions implements HCOption {
  const HCNavigationAnnotationsTypesTunnelTypeLineOptions({
    this.fill,
    this.strokeWidth,
  });

  final String? fill;

  final num? strokeWidth;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesTunnelTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesTunnelTypeOptions({
    this.background,
    this.height,
    this.heightControlPoint,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Background options.
  final dynamic background;

  /// (Highstock) The height of the annotation in terms of yAxis.
  final num? height;

  /// (Highstock) Options for the control point which controls the annotation's height.
  final HCAnnotationControlPointOptionsObject? heightControlPoint;

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesTunnelTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesTunnelTypePointsOptions>? points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json['background'] = hcJsonValue(background);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (heightControlPoint != null) {
      json['heightControlPoint'] = heightControlPoint!.toJson();
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesTunnelTypePointsOptions implements HCOption {
  const HCNavigationAnnotationsTypesTunnelTypePointsOptions({
    this.controlPoint,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationAnnotationsTypesVerticalLineLabelOptions implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final dynamic style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Styles for the annotation's label.
class HCNavigationAnnotationsTypesVerticalLineLabelStyleOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineLabelStyleOptions({
    this.color,
    this.fontSize,
  });

  final String? color;

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = color;
    }
    if (fontSize != null) {
      json['fontSize'] = fontSize;
    }
    return json;
  }
}

/// (Highstock) Options for the vertical line annotation type.
class HCNavigationAnnotationsTypesVerticalLineOptions implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineOptions({
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationAnnotationsTypesVerticalLineLabelOptions? labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationAnnotationsTypesVerticalLineTypeOptions? typeOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    return json;
  }
}

/// (Highstock) Connector options.
class HCNavigationAnnotationsTypesVerticalLineTypeConnectorOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineTypeConnectorOptions({
    this.dashStyle,
    this.fill,
    this.markerEnd,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final dynamic fill;

  final String? markerEnd;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (markerEnd != null) {
      json['markerEnd'] = markerEnd;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highstock) Label options.
class HCNavigationAnnotationsTypesVerticalLineTypeLabelOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineTypeLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.offset,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final String? backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  final num? offset;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = backgroundColor;
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (offset != null) {
      json['offset'] = offset;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationAnnotationsTypesVerticalLineTypeLineOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineTypeLineOptions({
    this.fill,
  });

  final String? fill;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = fill;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationAnnotationsTypesVerticalLineTypeOptions implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineTypeOptions({
    this.connector,
    this.label,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Connector options.
  final HCNavigationAnnotationsTypesVerticalLineTypeConnectorOptions? connector;

  /// (Highstock) Label options.
  final HCNavigationAnnotationsTypesVerticalLineTypeLabelOptions? label;

  /// (Highstock) Line options.
  final HCNavigationAnnotationsTypesVerticalLineTypeLineOptions? line;

  final List<HCNavigationAnnotationsTypesVerticalLineTypePointsOptions>? points;

  /// (Highstock) This number defines which xAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It refers to either the axis id or the index of the axis in the xAxis array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (connector != null) {
      json['connector'] = connector!.toJson();
    }
    if (label != null) {
      json['label'] = label!.toJson();
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (points != null) {
      json['points'] = points!.map((e) => e.toJson()).toList();
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationAnnotationsTypesVerticalLineTypePointsOptions
    implements HCOption {
  const HCNavigationAnnotationsTypesVerticalLineTypePointsOptions({
    this.controlPoint,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) The x position of the point.
  final num? x;

  /// (Highstock) The y position of the point.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoint != null) {
      json['controlPoint'] = controlPoint;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Enable or disable the initial animation when a series is displayed for the `annotation`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation. For other animations, see chart.animation and the animation parameter unde
class HCNavigationBindingsArrowInfinityLineAnnotationsAnimationOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsAnimationOptions({
    this.defer,
  });

  /// (Highstock) The animation delay time in milliseconds. Set to `0` renders annotation immediately. As `undefined` inherits defer time from the series.animation.defer.
  final num? defer;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (defer != null) {
      json['defer'] = defer;
    }
    return json;
  }
}

class HCNavigationBindingsArrowInfinityLineAnnotationsControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsControlPointStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) Events available in annotations.
class HCNavigationBindingsArrowInfinityLineAnnotationsEventsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationBindingsArrowInfinityLineAnnotationsLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsLabelOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

class HCNavigationBindingsArrowInfinityLineAnnotationsLabelsControlPointsStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsLabelsControlPointsStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) An array of labels for the annotation. For options that apply to multiple labels, they can be added to the labelOptions.
class HCNavigationBindingsArrowInfinityLineAnnotationsLabelsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsLabelsOptions({
    this.accessibility,
    this.align,
    this.allowOverlap,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.controlPoints,
    this.crop,
    this.distance,
    this.format,
    this.includeInDataExport,
    this.overflow,
    this.padding,
    this.point,
    this.shadow,
    this.shape,
    this.style,
    this.text,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock) Accessibility options for an annotation label.
  final HCAnnotationLabelAccessibilityOptionsObject? accessibility;

  /// (Highstock) The alignment of the annotation's label. If right, the right side of the label should be touching the point.
  final String? align;

  /// (Highstock) Whether to allow the annotation's labels to overlap. To make the labels less sensitive for overlapping, the can be set to 0.
  final bool? allowOverlap;

  /// (Highstock) The background color or gradient for the annotation's label.
  final dynamic backgroundColor;

  /// (Highstock) The border color for the annotation's label.
  final dynamic borderColor;

  /// (Highstock) The border radius in pixels for the annotation's label.
  final num? borderRadius;

  /// (Highstock) The border width in pixels for the annotation's label.
  final num? borderWidth;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) The array of control points.
  final dynamic controlPoints;

  /// (Highstock) Whether to hide the annotation's label that is outside the plot area.
  final bool? crop;

  /// (Highstock) The label's pixel distance from the point.
  final num? distance;

  /// (Highstock) A format string for the data label.
  final String? format;

  /// (Highstock) Whether all the labels for an annotation are visible in the exported data table.
  final bool? includeInDataExport;

  /// (Highstock) How to handle the annotation's label that flow outside the plot area. The justify option aligns the label inside the plot area.
  final String? overflow;

  /// (Highstock) When either the borderWidth or the backgroundColor is set, this is the padding within the box.
  final num? padding;

  /// (Highstock) This option defines the point to which the label will be connected. It can be either the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final dynamic point;

  /// (Highstock) The shadow of the box. The shadow can be an object configuration containing `color`, `offsetX`, `offsetY`, `opacity` and `width`.
  final dynamic shadow;

  /// (Highstock) The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object.
  final String? shape;

  /// (Highstock) Styles for the annotation's label.
  final HCCSSObject? style;

  /// (Highstock) Alias for the format option.
  final String? text;

  /// (Highstock) Whether to use HTML to render the annotation's label.
  final bool? useHTML;

  /// (Highstock) The vertical alignment of the annotation's label.
  final String? verticalAlign;

  /// (Highstock) The x position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? x;

  /// (Highstock) The y position offset of the label relative to the point. Note that if a `distance` is defined, the distance takes precedence over `x` and `y` options.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (accessibility != null) {
      json['accessibility'] = accessibility!.toJson();
    }
    if (align != null) {
      json['align'] = align;
    }
    if (allowOverlap != null) {
      json['allowOverlap'] = allowOverlap;
    }
    if (backgroundColor != null) {
      json['backgroundColor'] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json['borderColor'] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json['borderRadius'] = borderRadius;
    }
    if (borderWidth != null) {
      json['borderWidth'] = borderWidth;
    }
    if (className != null) {
      json['className'] = className;
    }
    if (controlPoints != null) {
      json['controlPoints'] = hcJsonValue(controlPoints);
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (distance != null) {
      json['distance'] = distance;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (includeInDataExport != null) {
      json['includeInDataExport'] = includeInDataExport;
    }
    if (overflow != null) {
      json['overflow'] = overflow;
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (point != null) {
      json['point'] = hcJsonValue(point);
    }
    if (shadow != null) {
      json['shadow'] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json['shape'] = shape;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highstock) Options to customize the bindings' annotation shapes and labels.
class HCNavigationBindingsArrowInfinityLineAnnotationsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsOptions({
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

  /// (Highstock) Enable or disable the initial animation when a series is displayed for the `annotation`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation. For other animations, see chart.animation and the animation parameter unde
  final dynamic animation;

  /// (Highstock) A class name for styling by CSS.
  final String? className;

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Whether to hide the part of the annotation that is outside the plot area.
  final bool? crop;

  /// (Highstock) Allow an annotation to be draggable by a user. Possible values are `'x'`, `'xy'`, `'y'` and `''` (disabled).
  final String? draggable;

  /// (Highstock) Events available in annotations.
  final HCNavigationBindingsArrowInfinityLineAnnotationsEventsOptions? events;

  /// (Highstock) Sets an ID for an annotation. Can be user later when removing an annotation in Chart.removeAnnotation(id) method.
  final dynamic id;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsLabelOptions?
      labelOptions;

  /// (Highstock) An array of labels for the annotation. For options that apply to multiple labels, they can be added to the labelOptions.
  final List<HCNavigationBindingsArrowInfinityLineAnnotationsLabelsOptions>?
      labels;

  /// (Highstock) Options for annotation's shapes. Each shape inherits options from the shapeOptions object. An option from the shapeOptions can be overwritten by config for a specific shape.
  final HCNavigationBindingsArrowInfinityLineAnnotationsShapeOptions?
      shapeOptions;

  /// (Highstock) An array of shapes for the annotation. For options that apply to multiple shapes, then can be added to the shapeOptions.
  final List<HCNavigationBindingsArrowInfinityLineAnnotationsShapesOptions>?
      shapes;

  /// (Highstock) For advanced annotations, this option defines the type of annotation. Can be one of the keys listed under the types option.
  final String? type;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypeOptions?
      typeOptions;

  /// (Highstock) Option override for specific advanced annotation types. This collection is intended for general theming using `Highcharts.setOptions()`.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesOptions? types;

  /// (Highstock) Whether the annotation is visible.
  final bool? visible;

  /// (Highstock) The Z index of the annotation.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (animation != null) {
      json['animation'] = hcJsonValue(animation);
    }
    if (className != null) {
      json['className'] = className;
    }
    if (controlPointOptions != null) {
      json['controlPointOptions'] = controlPointOptions!.toJson();
    }
    if (crop != null) {
      json['crop'] = crop;
    }
    if (draggable != null) {
      json['draggable'] = draggable;
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (id != null) {
      json['id'] = hcJsonValue(id);
    }
    if (labelOptions != null) {
      json['labelOptions'] = labelOptions!.toJson();
    }
    if (labels != null) {
      json['labels'] = labels!.map((e) => e.toJson()).toList();
    }
    if (shapeOptions != null) {
      json['shapeOptions'] = shapeOptions!.toJson();
    }
    if (shapes != null) {
      json['shapes'] = shapes!.map((e) => e.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type;
    }
    if (typeOptions != null) {
      json['typeOptions'] = typeOptions!.toJson();
    }
    if (types != null) {
      json['types'] = types!.toJson();
    }
    if (visible != null) {
      json['visible'] = visible;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highstock) Options for annotation's shapes. Each shape inherits options from the shapeOptions object. An option from the shapeOptions can be overwritten by config for a specific shape.
class HCNavigationBindingsArrowInfinityLineAnnotationsShapeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsShapeOptions({
    this.dashStyle,
    this.fill,
    this.height,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final dynamic fill;

  /// (Highstock) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highstock) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highstock) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highstock) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

class HCNavigationBindingsArrowInfinityLineAnnotationsShapesControlPointsStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsShapesControlPointsStyleOptions({
    this.cursor,
    this.fill,
    this.stroke,
  });

  final String? cursor;

  final String? fill;

  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fill != null) {
      json['fill'] = fill;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highstock) An array of shapes for the annotation. For options that apply to multiple shapes, then can be added to the shapeOptions.
class HCNavigationBindingsArrowInfinityLineAnnotationsShapesOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsShapesOptions({
    this.controlPoints,
    this.dashStyle,
    this.fill,
    this.height,
    this.markerEnd,
    this.markerStart,
    this.point,
    this.points,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) The array of control points.
  final dynamic controlPoints;

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final dynamic fill;

  /// (Highstock) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highstock) Id of the marker which will be drawn at the final vertex of the path. Custom markers can be defined in defs property.
  final String? markerEnd;

  /// (Highstock) Id of the marker which will be drawn at the first vertex of the path. Custom markers can be defined in defs property.
  final String? markerStart;

  /// (Highstock) This option defines the point to which the shape will be connected. It can be either the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final dynamic point;

  /// (Highstock) An array of points for the shape or a callback function that returns that shape point.
  final List<dynamic>? points;

  /// (Highstock) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highstock) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highstock) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (controlPoints != null) {
      json['controlPoints'] = hcJsonValue(controlPoints);
    }
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (markerEnd != null) {
      json['markerEnd'] = markerEnd;
    }
    if (markerStart != null) {
      json['markerStart'] = markerStart;
    }
    if (point != null) {
      json['point'] = hcJsonValue(point);
    }
    if (points != null) {
      json['points'] = points!.map((e) => hcJsonValue(e)).toList();
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highstock) Background shape options for the annotation.
class HCNavigationBindingsArrowInfinityLineAnnotationsTypeBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypeBackgroundOptions({
    this.dashStyle,
    this.fill,
    this.height,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final dynamic fill;

  /// (Highstock) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highstock) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highstock) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highstock) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highstock) Line options.
class HCNavigationBindingsArrowInfinityLineAnnotationsTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypeLineOptions({
    this.dashStyle,
    this.fill,
    this.height,
    this.r,
    this.ry,
    this.snap,
    this.src,
    this.stroke,
    this.strokeWidth,
    this.type,
    this.width,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Name of the dash style to use for the shape's stroke.
  final String? dashStyle;

  /// (Highstock) The color of the shape's fill.
  final dynamic fill;

  /// (Highstock) The height of the `rect` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? height;

  /// (Highstock) The radius of the `circle` shape. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? r;

  /// (Highstock) The radius of the `ellipse` shape in y direction. Can be defined in pixels or yAxis units, if shapes.yAxis index is defined.
  final num? ry;

  /// (Highstock) Defines additional snapping area around an annotation making this annotation to focus. Defined in pixels.
  final num? snap;

  /// (Highstock) The URL for an image to use as the annotation shape. Note, type has to be set to `'image'`.
  final String? src;

  /// (Highstock) The color of the shape's stroke.
  final dynamic stroke;

  /// (Highstock) The pixel stroke width of the shape.
  final num? strokeWidth;

  /// (Highstock) The type of the shape. Available options are `circle`, `rect`, `ellipse` and `path`.
  final String? type;

  /// (Highstock) The width of the `rect` shape. Can be defined in pixels or xAxis units, if shapes.xAxis index is defined.
  final num? width;

  /// (Highstock) The xAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? xAxis;

  /// (Highstock) The yAxis index which should be used for annotation's sizes and points coordinates conversion.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (dashStyle != null) {
      json['dashStyle'] = dashStyle;
    }
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (height != null) {
      json['height'] = height;
    }
    if (r != null) {
      json['r'] = r;
    }
    if (ry != null) {
      json['ry'] = ry;
    }
    if (snap != null) {
      json['snap'] = snap;
    }
    if (src != null) {
      json['src'] = src;
    }
    if (stroke != null) {
      json['stroke'] = hcJsonValue(stroke);
    }
    if (strokeWidth != null) {
      json['strokeWidth'] = strokeWidth;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsArrowInfinityLineAnnotationsTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypeOptions({
    this.background,
    this.height,
    this.line,
    this.point,
    this.points,
    this.type,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Background shape options for the annotation.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypeBackgroundOptions?
      background;

  /// (Highstock) Height of the annotation in pixels.
  final num? height;

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypeLineOptions? line;

  /// (Highstock) A single point that the annotation is attached to. It can be either the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final dynamic point;

  /// (Highstock) An array of points that the annotation is attached to. Each point can the point which exists in the series - it is referenced by the point's id - or a new point with defined x, y properties and optionally axes.
  final List<dynamic>? points;

  /// (Highstock) The annotation type identifier.
  final String? type;

  /// (Highstock) This number defines which `xAxis` the point is connected to. It refers to either the axis id or the index of the axis in the `xAxis` array.
  final num? xAxis;

  /// (Highstock) This number defines which `yAxis` the point is connected to. It refers to either the axis id or the index of the axis in the `yAxis` array.
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json['background'] = background!.toJson();
    }
    if (height != null) {
      json['height'] = height;
    }
    if (line != null) {
      json['line'] = line!.toJson();
    }
    if (point != null) {
      json['point'] = hcJsonValue(point);
    }
    if (points != null) {
      json['points'] = points!.map((e) => hcJsonValue(e)).toList();
    }
    if (type != null) {
      json['type'] = type;
    }
    if (xAxis != null) {
      json['xAxis'] = xAxis;
    }
    if (yAxis != null) {
      json['yAxis'] = yAxis;
    }
    return json;
  }
}
