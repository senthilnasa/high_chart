part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Individual data label for each point. The
class HCDataLabelsOptions implements HCOption {
  const HCDataLabelsOptions({
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
    this.xHigh,
    this.xLow,
    this.y,
    this.yHigh,
    this.yLow,
  });

  /// (Highcharts, Highstock, Gantt) The alignment of the data label compared
  final String? align;

  /// (Highcharts, Highstock, Gantt) Alignment method for data labels. If set
  final String? alignTo;

  /// (Highcharts, Highstock, Gantt) Whether to allow data labels to overlap.
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Gantt) Enable or disable the initial animation
  final dynamic animation;

  /// (Highcharts, Highstock, Gantt) The background color or gradient for the
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Gantt) The border color for the data label.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Gantt) The border radius in pixels for the data
  final num? borderRadius;

  /// (Highcharts, Highstock, Gantt) The border width in pixels for the data
  final num? borderWidth;

  /// (Highcharts, Highstock, Gantt) A class name for the data label.
  final String? className;

  /// (Highcharts, Highstock, Gantt) This options is deprecated. Use
  final dynamic color;

  /// (Highcharts, Highstock, Gantt) Whether to hide data labels that are
  final dynamic crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data
  final dynamic defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from the
  final num? distance;

  /// (Highcharts, Highstock, Gantt) Enable or disable the data labels.
  final dynamic enabled;

  /// (Highcharts, Highstock, Gantt) A declarative filter to control of which
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock, Gantt) A format string for the data label.
  final String? format;

  /// (Highcharts, Highstock, Gantt) For points with an extent, like columns or
  final dynamic inside;

  /// (Highcharts, Highstock, Gantt) The rank for this point's data label in
  final num? labelrank;

  /// (Highcharts, Highstock, Gantt) Format for points with the value of null.
  final dynamic nullFormat;

  /// (Highcharts, Highstock, Gantt) How to handle data labels that flow
  final String? overflow;

  /// (Highcharts, Highstock, Gantt) When either the `borderWidth` or the
  final dynamic padding;

  /// (Highcharts, Highstock, Gantt) Aligns data labels relative to points. If
  final String? position;

  /// (Highcharts, Highstock, Gantt) Text rotation in degrees. Note that due to
  final num? rotation;

  /// (Highcharts, Highstock, Gantt) The shadow of the box. Works best with
  final dynamic shadow;

  /// (Highcharts, Highstock, Gantt) The name of a symbol to use for the border
  final String? shape;

  /// (Highcharts, Highstock, Gantt) Styles for the label. The default `color`
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) Options for a label text which should
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Highcharts, Highstock, Gantt) The vertical alignment of a data label.
  final String? verticalAlign;

  /// (Highcharts, Highstock, Gantt) The x position offset of the label
  final num? x;

  /// (Highcharts, Highstock) X offset of the higher data labels relative to
  final num? xHigh;

  /// (Highcharts, Highstock) X offset of the lower data labels relative to the
  final num? xLow;

  /// (Highcharts, Highstock, Gantt) The y position offset of the label
  final num? y;

  /// (Highcharts, Highstock) Y offset of the higher data labels relative to
  final num? yHigh;

  /// (Highcharts, Highstock) Y offset of the lower data labels relative to the
  final num? yLow;

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
      json["padding"] = hcJsonValue(padding);
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
      json["style"] = style!.toJson();
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
    if (xHigh != null) {
      json["xHigh"] = xHigh;
    }
    if (xLow != null) {
      json["xLow"] = xLow;
    }
    if (y != null) {
      json["y"] = y;
    }
    if (yHigh != null) {
      json["yHigh"] = yHigh;
    }
    if (yLow != null) {
      json["yLow"] = yLow;
    }
    return json;
  }
}
