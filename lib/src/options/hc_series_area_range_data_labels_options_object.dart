part of 'hc_options.dart';

/// (Highcharts, Highstock) Extended data labels for range series types. Range
class HCSeriesAreaRangeDataLabelsOptionsObject implements HCOption {
  const HCSeriesAreaRangeDataLabelsOptionsObject({
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
    this.zIndex,
  });

  /// (Highcharts, Highstock) The alignment of the data label compared to the
  final String? align;

  /// (Highcharts, Highstock) Alignment method for data labels. If set to
  final String? alignTo;

  /// (Highcharts, Highstock) Whether to allow data labels to overlap. To make
  final dynamic allowOverlap;

  /// (Highcharts, Highstock) Enable or disable the initial animation when a
  final dynamic animation;

  /// (Highcharts, Highstock) The background color or gradient for the data
  final dynamic backgroundColor;

  /// (Highcharts, Highstock) The border color for the data label. Setting it
  final dynamic borderColor;

  /// (Highcharts, Highstock) The border radius in pixels for the data label.
  final num? borderRadius;

  /// (Highcharts, Highstock) The border width in pixels for the data label.
  final num? borderWidth;

  /// (Highcharts, Highstock) A class name for the data label. Particularly in
  final String? className;

  /// (Highcharts, Highstock) This options is deprecated. Use style.color
  final dynamic color;

  /// (Highcharts, Highstock) Whether to hide data labels that are outside the
  final dynamic crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data
  final dynamic defer;

  /// (Highcharts, Highstock, Gantt) The distance of the data label from the
  final num? distance;

  /// (Highcharts, Highstock) Enable or disable the data labels.
  final dynamic enabled;

  /// (Highcharts, Highstock) A declarative filter to control of which data
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock) A format string for the data label. Available
  final String? format;

  /// (Highcharts, Highstock) For points with an extent, like columns or map
  final dynamic inside;

  /// (Highcharts, Highstock) The rank for this point's data label in case of
  final num? labelrank;

  /// (Highcharts, Highstock) Format for points with the value of null. Works
  final dynamic nullFormat;

  /// (Highcharts, Highstock) How to handle data labels that flow outside the
  final String? overflow;

  /// (Highcharts, Highstock) When either the `borderWidth` or the
  final dynamic padding;

  /// (Highcharts, Highstock) Aligns data labels relative to points. If
  final String? position;

  /// (Highcharts, Highstock) Text rotation in degrees. Note that due to a more
  final num? rotation;

  /// (Highcharts, Highstock) The shadow of the box. Works best with
  final dynamic shadow;

  /// (Highcharts, Highstock) The name of a symbol to use for the border around
  final String? shape;

  /// (Highcharts, Highstock) Styles for the label. The default `color` setting
  final HCCSSObject? style;

  /// (Highcharts, Highstock) Options for a label text which should follow
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Highcharts, Highstock) The vertical alignment of a data label. Can be
  final String? verticalAlign;

  /// (Highcharts, Highstock) The x position offset of the label relative to
  final num? x;

  /// (Highcharts, Highstock) X offset of the higher data labels relative to
  final num? xHigh;

  /// (Highcharts, Highstock) X offset of the lower data labels relative to the
  final num? xLow;

  /// (Highcharts, Highstock) The y position offset of the label relative to
  final num? y;

  /// (Highcharts, Highstock) Y offset of the higher data labels relative to
  final num? yHigh;

  /// (Highcharts, Highstock) Y offset of the lower data labels relative to the
  final num? yLow;

  /// (Highcharts, Highstock) The z index of the data labels group. Does not
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
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
