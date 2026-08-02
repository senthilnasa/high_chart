part of 'hc_options.dart';

class HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypeHeightControlPointStyleOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypeHeightControlPointStyleOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypeLineOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypeOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypeOptions({
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
  final HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypePointsOptions>?
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

class HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesTunnelTypePointsOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineLabelOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineLabelOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineLabelStyleOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineLabelStyleOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineOptions({
    this.labelOptions,
    this.typeOptions,
  });

  /// (Highstock) Options for annotation's labels. Each label inherits options from the labelOptions object. An option from the labelOptions can be overwritten by config for a specific label.
  final HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineLabelOptions?
      labelOptions;

  /// (Highstock) Additional options for an annotation with the type.
  final HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeOptions?
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
class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeConnectorOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeConnectorOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeLabelOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeLabelOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeLineOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeLineOptions({
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
class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeOptions({
    this.connector,
    this.label,
    this.line,
    this.points,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) Connector options.
  final HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeConnectorOptions?
      connector;

  /// (Highstock) Label options.
  final HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeLabelOptions?
      label;

  /// (Highstock) Line options.
  final HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypePointsOptions>?
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

class HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypePointsOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLineAnnotationsTypesVerticalLineTypePointsOptions({
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

/// (Highstock) A vertical line annotation. Includes `start` event.
class HCNavigationBindingsVerticalLineOptions implements HCOption {
  const HCNavigationBindingsVerticalLineOptions({
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

/// (Highcharts) A collection of attributes for the buttons. The object takes SVG attributes like `fill`, `stroke`, `stroke-width`, as well as `style`, a collection of CSS properties for the text.
class HCNavigationBreadcrumbsButtonThemeOptions implements HCOption {
  const HCNavigationBreadcrumbsButtonThemeOptions({
    this.style,
  });

  final HCNavigationBreadcrumbsButtonThemeStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = style!.toJson();
    }
    return json;
  }
}

class HCNavigationBreadcrumbsButtonThemeStyleOptions implements HCOption {
  const HCNavigationBreadcrumbsButtonThemeStyleOptions({
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

class HCNavigationBreadcrumbsEventsOptions implements HCOption {
  const HCNavigationBreadcrumbsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highcharts) Options for breadcrumbs. Breadcrumbs general options are defined in `navigation.breadcrumbs`. Specific options for drilldown are set in `drilldown.breadcrumbs` and for tree-like series traversing, in `plotOptions[series].breadcrumbs`.
class HCNavigationBreadcrumbsOptions implements HCOption {
  const HCNavigationBreadcrumbsOptions({
    this.buttonSpacing,
    this.buttonTheme,
    this.events,
    this.floating,
    this.format,
    this.position,
    this.relativeTo,
    this.rtl,
    this.separator,
    this.showFullPath,
    this.style,
    this.useHTML,
    this.zIndex,
  });

  /// (Highcharts) The default padding for each button and separator in each direction.
  final num? buttonSpacing;

  /// (Highcharts) A collection of attributes for the buttons. The object takes SVG attributes like `fill`, `stroke`, `stroke-width`, as well as `style`, a collection of CSS properties for the text.
  final dynamic buttonTheme;

  final HCNavigationBreadcrumbsEventsOptions? events;

  /// (Highcharts) When the breadcrumbs are floating, the plot area will not move to make space for it. By default, the chart will not make space for the buttons. This property won't work when positioned in the middle.
  final bool? floating;

  /// (Highcharts) A format string for the breadcrumbs button. Variables are enclosed by curly brackets. Available values are passed in the declared point options.
  final String? format;

  /// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs buttons will be aligned properly for the default chart layout (title, subtitle, legend, range selector) for the custom chart layout set the position properties.
  final dynamic position;

  /// (Highcharts, Highmaps) What box to align the button to. Can be either `plotBox` or `spacingBox`.
  final String? relativeTo;

  /// (Highcharts) Whether to reverse the order of buttons. This is common in Arabic and Hebrew.
  final bool? rtl;

  /// (Highcharts) Options object for Breadcrumbs separator.
  final HCNavigationBreadcrumbsSeparatorOptions? separator;

  /// (Highcharts) Show full path or only a single button.
  final bool? showFullPath;

  /// (Highcharts) CSS styles for all breadcrumbs.
  final HCSVGAttributes? style;

  /// (Highcharts) Whether to use HTML to render the breadcrumbs items texts.
  final bool? useHTML;

  /// (Highcharts) The z index of the breadcrumbs group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (buttonSpacing != null) {
      json['buttonSpacing'] = buttonSpacing;
    }
    if (buttonTheme != null) {
      json['buttonTheme'] = hcJsonValue(buttonTheme);
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (format != null) {
      json['format'] = format;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json['relativeTo'] = relativeTo;
    }
    if (rtl != null) {
      json['rtl'] = rtl;
    }
    if (separator != null) {
      json['separator'] = separator!.toJson();
    }
    if (showFullPath != null) {
      json['showFullPath'] = showFullPath;
    }
    if (style != null) {
      json['style'] = style!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (zIndex != null) {
      json['zIndex'] = zIndex;
    }
    return json;
  }
}

/// (Highcharts, Highmaps) Positioning for the button row. The breadcrumbs buttons will be aligned properly for the default chart layout (title, subtitle, legend, range selector) for the custom chart layout set the position properties.
class HCNavigationBreadcrumbsPositionOptions implements HCOption {
  const HCNavigationBreadcrumbsPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highcharts, Highmaps) Horizontal alignment of the breadcrumbs buttons.
  final String? align;

  /// (Highcharts, Highmaps) Vertical alignment of the breadcrumbs buttons.
  final String? verticalAlign;

  /// (Highcharts, Highmaps) The X offset of the breadcrumbs button group.
  final num? x;

  /// (Highcharts, Highmaps) The Y offset of the breadcrumbs button group. When `undefined`, and `floating` is `false`, the `y` position is adapted so that the breadcrumbs are rendered outside the target area.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
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

/// (Highcharts) Options object for Breadcrumbs separator.
class HCNavigationBreadcrumbsSeparatorOptions implements HCOption {
  const HCNavigationBreadcrumbsSeparatorOptions({
    this.style,
    this.text,
  });

  /// (Highcharts) CSS styles for the breadcrumbs separator.
  final dynamic style;

  final String? text;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    return json;
  }
}

/// (Highcharts) CSS styles for the breadcrumbs separator.
class HCNavigationBreadcrumbsSeparatorStyleOptions implements HCOption {
  const HCNavigationBreadcrumbsSeparatorStyleOptions({
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

/// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for buttons appearing in the exporting module.
class HCNavigationButtonOptions implements HCOption {
  const HCNavigationButtonOptions({
    this.align,
    this.buttonSpacing,
    this.enabled,
    this.height,
    this.symbolFill,
    this.symbolSize,
    this.symbolStroke,
    this.symbolStrokeWidth,
    this.symbolX,
    this.symbolY,
    this.text,
    this.theme,
    this.useHTML,
    this.verticalAlign,
    this.width,
    this.y,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment for the buttons.
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel spacing between buttons, and between the context button and the title.
  final num? buttonSpacing;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to enable buttons.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Pixel height of the buttons.
  final num? height;

  /// (Highcharts, Highstock, Highmaps, Gantt) Fill color for the symbol within the button.
  final dynamic symbolFill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel size of the symbol on the button.
  final num? symbolSize;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the symbol's stroke or line.
  final String? symbolStroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel stroke width of the symbol on the button.
  final num? symbolStrokeWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position of the center of the symbol inside the button.
  final num? symbolX;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position of the center of the symbol inside the button.
  final num? symbolY;

  /// (Highcharts, Highstock, Highmaps, Gantt) A text string to add to the individual button.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) A configuration object for the button theme. The object accepts SVG properties like `stroke-width`, `stroke` and `fill`. Tri-state button styles are supported by the `states.hover` and `states.select` objects.
  final HCNavigationButtonThemeOptions? theme;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML for rendering the button. HTML allows for things like inline CSS or image-based icons.
  final bool? useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of the buttons. Can be one of `"top"`, `"middle"` or `"bottom"`.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the button.
  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical offset of the button's position relative to its `verticalAlign`. By default adjusted for the chart title alignment.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (buttonSpacing != null) {
      json['buttonSpacing'] = buttonSpacing;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (symbolFill != null) {
      json['symbolFill'] = hcJsonValue(symbolFill);
    }
    if (symbolSize != null) {
      json['symbolSize'] = symbolSize;
    }
    if (symbolStroke != null) {
      json['symbolStroke'] = symbolStroke;
    }
    if (symbolStrokeWidth != null) {
      json['symbolStrokeWidth'] = symbolStrokeWidth;
    }
    if (symbolX != null) {
      json['symbolX'] = symbolX;
    }
    if (symbolY != null) {
      json['symbolY'] = symbolY;
    }
    if (text != null) {
      json['text'] = text;
    }
    if (theme != null) {
      json['theme'] = theme!.toJson();
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (width != null) {
      json['width'] = width;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) A configuration object for the button theme. The object accepts SVG properties like `stroke-width`, `stroke` and `fill`. Tri-state button styles are supported by the `states.hover` and `states.select` objects.
class HCNavigationButtonThemeOptions implements HCOption {
  const HCNavigationButtonThemeOptions({
    this.fill,
    this.padding,
    this.stroke,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The default fill exists only to capture hover events.
  final dynamic fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) Padding for the button.
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Default stroke for the buttons.
  final String? stroke;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json['fill'] = hcJsonValue(fill);
    }
    if (padding != null) {
      json['padding'] = padding;
    }
    if (stroke != null) {
      json['stroke'] = stroke;
    }
    return json;
  }
}

/// (Highcharts, Highstock) Events to communicate between Stock Tools and custom GUI.
class HCNavigationEventsOptions implements HCOption {
  const HCNavigationEventsOptions({
    this.closePopup,
    this.deselectButton,
    this.selectButton,
    this.showPopup,
  });

  /// (Highcharts, Highstock) A `closePopup` event. Fired when Popup should be hidden, for example when clicking on an annotation again.
  final dynamic closePopup;

  /// (Highcharts, Highstock) Event fired when button state should change, for example after adding an annotation.
  final dynamic deselectButton;

  /// (Highcharts, Highstock) Event fired on a button click.
  final dynamic selectButton;

  /// (Highcharts, Highstock) A `showPopup` event. Fired when selecting for example an annotation.
  final dynamic showPopup;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (closePopup != null) {
      json['closePopup'] = hcJsonValue(closePopup);
    }
    if (deselectButton != null) {
      json['deselectButton'] = hcJsonValue(deselectButton);
    }
    if (selectButton != null) {
      json['selectButton'] = hcJsonValue(selectButton);
    }
    if (showPopup != null) {
      json['showPopup'] = hcJsonValue(showPopup);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for buttons and menus appearing in the exporting module or in Stock Tools.
class HCNavigationOptions implements HCOption {
  const HCNavigationOptions({
    this.annotationsOptions,
    this.bindings,
    this.bindingsClassName,
    this.breadcrumbs,
    this.buttonOptions,
    this.events,
    this.iconsURL,
    this.menuItemHoverStyle,
    this.menuItemStyle,
    this.menuStyle,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Additional options to be merged into all annotations.
  final dynamic annotationsOptions;

  final HCNavigationBindingsOptions? bindings;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name where all bindings will be attached to. Multiple charts on the same page should have separate class names to prevent duplicating events.
  final String? bindingsClassName;

  /// (Highcharts) Options for breadcrumbs. Breadcrumbs general options are defined in `navigation.breadcrumbs`. Specific options for drilldown are set in `drilldown.breadcrumbs` and for tree-like series traversing, in `plotOptions[series].breadcrumbs`.
  final HCNavigationBreadcrumbsOptions? breadcrumbs;

  /// (Highcharts, Highstock, Highmaps, Gantt) A collection of options for buttons appearing in the exporting module.
  final HCNavigationButtonOptions? buttonOptions;

  /// (Highcharts, Highstock) Events to communicate between Stock Tools and custom GUI.
  final HCNavigationEventsOptions? events;

  /// (Highcharts, Highstock, Highmaps, Gantt) Path where Highcharts will look for icons. Change this to use icons from a different server. When undefined, icons are loaded from the library's internal source.
  final String? iconsURL;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the hover state of the individual items within the popup menu appearing by default when the export icon is clicked. The menu items are rendered in HTML.
  final HCCSSObject? menuItemHoverStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the individual items within the popup menu appearing by default when the export icon is clicked. The menu items are rendered in HTML. Font size defaults to `11px` on desktop and `14px` on touch devices.
  final HCCSSObject? menuItemStyle;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the popup menu appearing by default when the export icon is clicked. This menu is rendered in HTML.
  final HCCSSObject? menuStyle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (annotationsOptions != null) {
      json['annotationsOptions'] = hcJsonValue(annotationsOptions);
    }
    if (bindings != null) {
      json['bindings'] = bindings!.toJson();
    }
    if (bindingsClassName != null) {
      json['bindingsClassName'] = bindingsClassName;
    }
    if (breadcrumbs != null) {
      json['breadcrumbs'] = breadcrumbs!.toJson();
    }
    if (buttonOptions != null) {
      json['buttonOptions'] = buttonOptions!.toJson();
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (iconsURL != null) {
      json['iconsURL'] = iconsURL;
    }
    if (menuItemHoverStyle != null) {
      json['menuItemHoverStyle'] = menuItemHoverStyle!.toJson();
    }
    if (menuItemStyle != null) {
      json['menuItemStyle'] = menuItemStyle!.toJson();
    }
    if (menuStyle != null) {
      json['menuStyle'] = menuStyle!.toJson();
    }
    return json;
  }
}
