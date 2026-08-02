part of 'hc_options.dart';

/// (Highcharts) Can set the options of dataLabels on each point which lies
class HCPlotTreemapLevelsDataLabelsOptions implements HCOption {
  const HCPlotTreemapLevelsDataLabelsOptions({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.crop,
    this.defer,
    this.distance,
    this.enabled,
    this.filter,
    this.format,
    this.headers,
    this.inside,
    this.labelrank,
    this.nullFormat,
    this.overflow,
    this.padding,
    this.position,
    this.rotation,
    this.shadow,
    this.shape,
    this.style,
    this.textPath,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts) The alignment of the data label compared to the point.
  final String? align;

  /// (Highcharts) Alignment method for data labels. If set to `plotEdges`,
  final String? alignTo;

  /// (Highcharts) Whether to allow data labels to overlap. To make the
  final dynamic allowOverlap;

  /// (Highcharts) Enable or disable the initial animation when a series is
  final dynamic animation;

  /// (Highcharts) The background color or gradient for the data label. In
  final dynamic backgroundColor;

  /// (Highcharts) The border color for the data label. Setting it to
  final dynamic borderColor;

  /// (Highcharts) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts) A class name for the data label. Particularly in styled
  final String? className;

  /// (Highcharts) This options is deprecated. Use style.color instead.
  final dynamic color;

  /// (Highcharts) Whether to hide data labels that are outside the plot
  final dynamic crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data
  final dynamic defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from
  final num? distance;

  /// (Highcharts) Enable or disable the data labels.
  final dynamic enabled;

  /// (Highcharts) A declarative filter to control of which data labels to
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts) A format string for the data label. Available variables
  final String? format;

  /// (Highcharts) Whether the data label should act as a group-level
  final dynamic headers;

  /// (Highcharts) For points with an extent, like columns or map areas,
  final dynamic inside;

  /// (Highcharts) The rank for this point's data label in case of
  final num? labelrank;

  /// (Highcharts) Format for points with the value of null. Works
  final dynamic nullFormat;

  /// (Highcharts) How to handle data labels that flow outside the plot
  final String? overflow;

  /// (Highcharts) When either the `borderWidth` or the `backgroundColor`
  final num? padding;

  /// (Highcharts) Aligns data labels relative to points. If `center`
  final String? position;

  /// (Highcharts) Text rotation in degrees. Note that due to a more
  final num? rotation;

  /// (Highcharts) The shadow of the box. Works best with `borderWidth` or
  final dynamic shadow;

  /// (Highcharts) The name of a symbol to use for the border around the
  final String? shape;

  /// (Highcharts) Styles for the label. The default `color` setting is
  final dynamic style;

  /// (Highcharts) Options for a label text which should follow marker's
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Highcharts) The vertical alignment of a data label. Can be one of
  final String? verticalAlign;

  /// (Highcharts) The x position offset of the label relative to the point
  final num? x;

  /// (Highcharts) The y position offset of the label relative to the point
  final num? y;

  /// (Highcharts) The z index of the data labels group. Does not apply
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (alignTo != null) {
      json["alignTo"] = alignTo;
    }
    if (allowOverlap != null) {
      json["allowOverlap"] = hcJsonValue(allowOverlap);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = hcJsonValue(backgroundColor);
    }
    if (borderColor != null) {
      json["borderColor"] = hcJsonValue(borderColor);
    }
    if (borderRadius != null) {
      json["borderRadius"] = borderRadius;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (color != null) {
      json["color"] = hcJsonValue(color);
    }
    if (crop != null) {
      json["crop"] = hcJsonValue(crop);
    }
    if (defer != null) {
      json["defer"] = hcJsonValue(defer);
    }
    if (distance != null) {
      json["distance"] = distance;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (filter != null) {
      json["filter"] = filter!.toJson();
    }
    if (format != null) {
      json["format"] = format;
    }
    if (headers != null) {
      json["headers"] = hcJsonValue(headers);
    }
    if (inside != null) {
      json["inside"] = hcJsonValue(inside);
    }
    if (labelrank != null) {
      json["labelrank"] = labelrank;
    }
    if (nullFormat != null) {
      json["nullFormat"] = hcJsonValue(nullFormat);
    }
    if (overflow != null) {
      json["overflow"] = overflow;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (position != null) {
      json["position"] = position;
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (textPath != null) {
      json["textPath"] = textPath!.toJson();
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
