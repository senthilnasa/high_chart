part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Can set `dataLabels` on all points
class HCSeriesSunburstDataLabelsOptionsObject implements HCOption {
  const HCSeriesSunburstDataLabelsOptionsObject({
    this.alignTo,
    this.allowOverlap,
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.className,
    this.color,
    this.connectorColor,
    this.connectorPadding,
    this.connectorShape,
    this.connectorWidth,
    this.crookDistance,
    this.crop,
    this.defer,
    this.distance,
    this.enabled,
    this.filter,
    this.format,
    this.labelrank,
    this.nullFormat,
    this.overflow,
    this.padding,
    this.position,
    this.rotation,
    this.rotationMode,
    this.shadow,
    this.shape,
    this.softConnector,
    this.style,
    this.textPath,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts, Highmaps) Alignment method for data labels. Possible values
  final String? alignTo;

  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the initial
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border color for the data
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius in pixels for
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border width in pixels for
  final num? borderWidth;

  /// (Highcharts, Highstock, Highmaps, Gantt) A class name for the data label.
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) This options is deprecated. Use
  final dynamic color;

  /// (Highcharts, Highmaps) The color of the line connecting the data label to
  final dynamic connectorColor;

  /// (Highcharts, Highmaps) The distance from the data label to the connector.
  final num? connectorPadding;

  /// (Highcharts, Highmaps) Specifies the method that is used to generate the
  final dynamic connectorShape;

  /// (Highcharts, Highmaps) The width of the line connecting the data label to
  final num? connectorWidth;

  /// (Highcharts, Highmaps) Works only if `connectorShape` is `'crookedLine'`.
  final String? crookDistance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to hide data labels that
  final dynamic crop;

  /// (Highcharts, Highstock, Gantt) Whether to defer displaying the data
  final dynamic defer;

  /// (Highcharts, Highmaps) The distance of the data label from the pie's
  final dynamic distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the data
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A declarative filter to control
  final HCDataLabelsFilterOptionsObject? filter;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the data
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) The rank for this point's data
  final num? labelrank;

  /// (Highcharts, Highstock, Highmaps, Gantt) Format for points with the value
  final dynamic nullFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle data labels that
  final String? overflow;

  /// (Highcharts, Highstock, Highmaps, Gantt) When either the `borderWidth` or
  final dynamic padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) Aligns data labels relative to
  final String? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Text rotation in degrees. Note
  final num? rotation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Decides how the data label will
  final String? rotationMode;

  /// (Highcharts, Highstock, Highmaps, Gantt) The shadow of the box. Works
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for
  final String? shape;

  /// (Highcharts, Highmaps) Whether to render the connector as a soft arc or a
  final dynamic softConnector;

  /// (Highcharts, Highstock, Highmaps, Gantt) Styles for the label. The
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for a label text which
  final HCDataLabelsTextPathOptionsObject? textPath;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The vertical alignment of a data
  final String? verticalAlign;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of the
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of the
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The z index of the data labels
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
    if (connectorColor != null) {
      json["connectorColor"] = hcJsonValue(connectorColor);
    }
    if (connectorPadding != null) {
      json["connectorPadding"] = connectorPadding;
    }
    if (connectorShape != null) {
      json["connectorShape"] = hcJsonValue(connectorShape);
    }
    if (connectorWidth != null) {
      json["connectorWidth"] = connectorWidth;
    }
    if (crookDistance != null) {
      json["crookDistance"] = crookDistance;
    }
    if (crop != null) {
      json["crop"] = hcJsonValue(crop);
    }
    if (defer != null) {
      json["defer"] = hcJsonValue(defer);
    }
    if (distance != null) {
      json["distance"] = hcJsonValue(distance);
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
    if (rotationMode != null) {
      json["rotationMode"] = rotationMode;
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (softConnector != null) {
      json["softConnector"] = hcJsonValue(softConnector);
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
