part of 'hc_options.dart';

/// (Highstock, Gantt) The axis labels show the number or category for each tick.
class HCNavigatorXAxisLabelsOptions implements HCOption {
  const HCNavigatorXAxisLabelsOptions({
    this.align,
    this.allowOverlap,
    this.autoRotation,
    this.autoRotationLimit,
    this.distance,
    this.enabled,
    this.format,
    this.indentation,
    this.maxStaggerLines,
    this.overflow,
    this.padding,
    this.reserveSpace,
    this.rotation,
    this.staggerLines,
    this.step,
    this.style,
    this.useHTML,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highstock, Gantt) What part of the string the given position is anchored
  final String? align;

  /// (Highstock, Gantt) Whether to allow the axis labels to overlap. When
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many
  final num? autoRotationLimit;

  /// (Highcharts, Gantt) The label's pixel distance from the perimeter of the
  final num? distance;

  /// (Highstock, Gantt) Enable or disable the axis labels.
  final dynamic enabled;

  /// (Highstock, Gantt) A format string for the axis label. The context is
  final String? format;

  /// (Gantt) The number of pixels to indent the labels per level in a treegrid
  final num? indentation;

  /// (Highstock, Gantt) Horizontal axis only. When `staggerLines` is not set,
  final num? maxStaggerLines;

  /// (Highstock, Gantt) How to handle overflowing labels on horizontal axis.
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white
  final num? padding;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels.
  final dynamic reserveSpace;

  /// (Highstock, Gantt) Rotation of the labels in degrees. When `undefined`,
  final num? rotation;

  /// (Highstock, Gantt) Horizontal axes only. The number of lines to spread
  final num? staggerLines;

  /// (Highstock, Gantt) To show only every _n_'th label on the axis, set the
  final num? step;

  /// (Highstock, Gantt) CSS styles for the label. Use `lineClamp` to control
  final dynamic style;

  /// (Highstock, Gantt) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Highstock, Gantt) The x position offset of all labels relative to the
  final num? x;

  /// (Highstock, Gantt) The y position offset of all labels relative to the
  final num? y;

  /// (Highstock, Gantt) The Z index for the axis labels.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (allowOverlap != null) {
      json["allowOverlap"] = hcJsonValue(allowOverlap);
    }
    if (autoRotation != null) {
      json["autoRotation"] = autoRotation;
    }
    if (autoRotationLimit != null) {
      json["autoRotationLimit"] = autoRotationLimit;
    }
    if (distance != null) {
      json["distance"] = distance;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (format != null) {
      json["format"] = format;
    }
    if (indentation != null) {
      json["indentation"] = indentation;
    }
    if (maxStaggerLines != null) {
      json["maxStaggerLines"] = maxStaggerLines;
    }
    if (overflow != null) {
      json["overflow"] = overflow;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (reserveSpace != null) {
      json["reserveSpace"] = hcJsonValue(reserveSpace);
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (staggerLines != null) {
      json["staggerLines"] = staggerLines;
    }
    if (step != null) {
      json["step"] = step;
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
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
