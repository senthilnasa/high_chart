part of 'hc_options.dart';

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineTypePointsOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveLabelStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypePointsOptions>?
      points;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypePointsLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypePointsLabelOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypePointsOptions({
    this.controlPoint,
    this.label,
    this.x,
    this.y,
  });

  final num? controlPoint;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveTypePointsLabelOptions?
      label;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciLabelStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeOptions?
      typeOptions;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeOptions?
      typeOptions;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeOptions({
    this.controlPointOptions,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions?
      controlPointOptions;

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypePointsOptions>?
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesTypePointsOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeLabelsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeLabelsOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeOptions({
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
  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeLabelsOptions>?
      labels;

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypeLineOptions?
      line;

  /// (Highstock) The color of line.
  final String? lineColor;

  /// (Highstock) An array of colors for the lines.
  final dynamic lineColors;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTypePointsOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineTypePointsOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureOptions({
    this.controlPointOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeOptions?
      typeOptions;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeBackgroundOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeCrosshairXOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeCrosshairXOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeCrosshairYOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeCrosshairYOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLabelStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeOptions({
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

  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeBackgroundOptions?
      background;

  /// (Highstock) Configure a crosshair that is horizontally placed in middle of rectangle.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeCrosshairXOptions?
      crosshairX;

  /// (Highstock) Configure a crosshair that is vertically placed in middle of rectangle.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeCrosshairYOptions?
      crosshairY;

  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLabelOptions?
      label;

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureTypePointsOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesOptions({
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
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesCrookedLineOptions?
      crookedLine;

  /// (Highstock) Options for the elliott wave annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesElliottWaveOptions?
      elliottWave;

  /// (Highstock) Options for the fibonacci annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciOptions?
      fibonacci;

  /// (Highstock) Options for the fibonacci time zones annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesFibonacciTimeZonesOptions?
      fibonacciTimeZones;

  /// (Highstock) Options for the infinity line annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesInfinityLineOptions?
      infinityLine;

  /// (Highstock) Options for the measure annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesMeasureOptions?
      measure;

  /// (Highstock) Options for the pitchfork annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkOptions?
      pitchfork;

  /// (Highstock) Options for the time cycles annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesOptions?
      timeCycles;

  /// (Highstock) Options for the tunnel annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelOptions?
      tunnel;

  /// (Highstock) Options for the vertical line annotation type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineOptions?
      verticalLine;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeInnerBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeInnerBackgroundOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeOptions({
    this.innerBackground,
    this.outerBackground,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Inner background options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeInnerBackgroundOptions?
      innerBackground;

  /// (Highstock) Outer background options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeOuterBackgroundOptions?
      outerBackground;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypePointsOptions>?
      points;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeOuterBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypeOuterBackgroundOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesPitchforkTypePointsOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesOptions({
    this.controlPointOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTimeCyclesTypePointsOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeBackgroundOptions({
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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeHeightControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeHeightControlPointStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeOptions({
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
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesTunnelTypePointsOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineLabelStyleOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineOptions({
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeConnectorOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeConnectorOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeLabelOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeLineOptions({
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
class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeOptions({
    this.connector,
    this.label,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Connector options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeConnectorOptions?
      connector;

  /// (Highstock) Label options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeLabelOptions?
      label;

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowInfinityLineAnnotationsTypesVerticalLineTypePointsOptions({
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

/// (Highstock) A line with arrow annotation. Includes `start` and one event in `steps` array.
class HCNavigationBindingsArrowInfinityLineOptions implements HCOption {
  const HCNavigationBindingsArrowInfinityLineOptions({
    this.annotationsOptions,
  });

  /// (Highstock) Options to customize the bindings' annotation shapes and labels.
  final dynamic annotationsOptions;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotationsOptions != null) {
      json['annotationsOptions'] = hcJsonValue(annotationsOptions);
    }
    return json;
  }
}

/// (Highstock) Enable or disable the initial animation when a series is displayed for the `annotation`. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation. For other animations, see chart.animation and the animation parameter unde
class HCNavigationBindingsArrowRayAnnotationsAnimationOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsAnimationOptions({
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

class HCNavigationBindingsArrowRayAnnotationsControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsControlPointStyleOptions({
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
class HCNavigationBindingsArrowRayAnnotationsEventsOptions implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
class HCNavigationBindingsArrowRayAnnotationsLabelOptions implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsLabelOptions({
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

class HCNavigationBindingsArrowRayAnnotationsLabelsControlPointsStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsLabelsControlPointsStyleOptions({
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
class HCNavigationBindingsArrowRayAnnotationsLabelsOptions implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsLabelsOptions({
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
class HCNavigationBindingsArrowRayAnnotationsOptions implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsOptions({
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
  final HCNavigationBindingsArrowRayAnnotationsEventsOptions? events;

  /// (Highstock) Sets an ID for an annotation. Can be user later when removing an annotation in Chart.removeAnnotation(id) method.
  final dynamic id;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowRayAnnotationsLabelOptions? labelOptions;

  /// (Highstock) An array of labels for the annotation. For options that apply to multiple labels, they can be added to the labelOptions.
  final List<HCNavigationBindingsArrowRayAnnotationsLabelsOptions>? labels;

  /// (Highstock) Options for annotation's shapes. Each shape inherits options from the shapeOptions object. An option from the shapeOptions can be overwritten by config for a specific shape.
  final HCNavigationBindingsArrowRayAnnotationsShapeOptions? shapeOptions;

  /// (Highstock) An array of shapes for the annotation. For options that apply to multiple shapes, then can be added to the shapeOptions.
  final List<HCNavigationBindingsArrowRayAnnotationsShapesOptions>? shapes;

  /// (Highstock) For advanced annotations, this option defines the type of annotation. Can be one of the keys listed under the types option.
  final String? type;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowRayAnnotationsTypeOptions? typeOptions;

  /// (Highstock) Option override for specific advanced annotation types. This collection is intended for general theming using `Highcharts.setOptions()`.
  final HCNavigationBindingsArrowRayAnnotationsTypesOptions? types;

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
class HCNavigationBindingsArrowRayAnnotationsShapeOptions implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsShapeOptions({
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

class HCNavigationBindingsArrowRayAnnotationsShapesControlPointsStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsShapesControlPointsStyleOptions({
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
class HCNavigationBindingsArrowRayAnnotationsShapesOptions implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsShapesOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypeBackgroundOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypeBackgroundOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypeLineOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypeOptions implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypeOptions({
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
  final HCNavigationBindingsArrowRayAnnotationsTypeBackgroundOptions?
      background;

  /// (Highstock) Height of the annotation in pixels.
  final num? height;

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowRayAnnotationsTypeLineOptions? line;

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

class HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineControlPointStyleOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineLabelOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypeLineOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypePointsOptions>?
      points;

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

class HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesCrookedLineTypePointsOptions({
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

class HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveControlPointStyleOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveLabelOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveLabelOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveLabelStyleOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveOptions({
    this.controlPointOptions,
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's control points. Each control point inherits options from controlPointOptions object. Options from the controlPointOptions can be overwritten by options in a specific control point.
  final HCAnnotationControlPointOptionsObject? controlPointOptions;

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveTypeOptions?
      typeOptions;

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
class HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveTypeLineOptions({
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
class HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveTypeOptions
    implements HCOption {
  const HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveTypeOptions({
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Line options.
  final HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsArrowRayAnnotationsTypesElliottWaveTypePointsOptions>?
      points;

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
