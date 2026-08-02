part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the series data labels,
class HCTimelineDataLabelsOptionsObject implements HCOption {
  const HCTimelineDataLabelsOptionsObject({
    this.align,
    this.alignTo,
    this.allowOverlap,
    this.alternate,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.connectorColor,
    this.connectorWidth,
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
    this.width,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The alignment of the data label
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Alignment method for data
  final String? alignTo;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow data labels to
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to position data labels
  final dynamic alternate;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient
  final String? backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the data
  final String? borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the data label.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) This options is deprecated. Use
  final String? color;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the line connecting
  final dynamic connectorColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The width of the line connecting
  final num? connectorWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide data labels that
  final dynamic crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data
  final dynamic defer;

  /// (Highcharts, Highstock, Gantt) A pixel value defining the distance
  final String? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the data
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A declarative filter to control
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) For points with an extent, like
  final dynamic inside;

  /// (Highcharts, Highstock, Highmaps, Gantt) The rank for this point's data
  final num? labelrank;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for points with the value
  final dynamic nullFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle data labels that
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the `borderWidth` or
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Aligns data labels relative to
  final String? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text rotation in degrees. Note
  final num? rotation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Shadow options for the data
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for
  final String? shape;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for a label text which
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of a data
  final String? verticalAlign;

  final num? width;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The z index of the data labels
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
    if (alternate != null) {
      json["alternate"] = hcJsonValue(alternate);
    }
    if (animation != null) {
      json["animation"] = hcJsonValue(animation);
    }
    if (backgroundColor != null) {
      json["backgroundColor"] = backgroundColor;
    }
    if (borderColor != null) {
      json["borderColor"] = borderColor;
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
      json["color"] = color;
    }
    if (connectorColor != null) {
      json["connectorColor"] = hcJsonValue(connectorColor);
    }
    if (connectorWidth != null) {
      json["connectorWidth"] = connectorWidth;
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
    if (width != null) {
      json["width"] = width;
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
