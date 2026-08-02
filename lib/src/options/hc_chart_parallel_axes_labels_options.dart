part of 'hc_options.dart';

/// (Highcharts) The axis labels show the number or category for each tick.
class HCChartParallelAxesLabelsOptions implements HCOption {
  const HCChartParallelAxesLabelsOptions({
    this.align,
    this.allowOverlap,
    this.autoRotation,
    this.autoRotationLimit,
    this.distance,
    this.enabled,
    this.format,
    this.maxStaggerLines,
    this.overflow,
    this.padding,
    this.position3d,
    this.reserveSpace,
    this.rotation,
    this.skew3d,
    this.staggerLines,
    this.step,
    this.style,
    this.useHTML,
    this.x,
    this.y,
    this.zIndex,
  });

  /// (Highcharts) What part of the string the given position is anchored to.
  final String? align;

  /// (Highcharts) Whether to allow the axis labels to overlap. When false,
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many
  final num? autoRotationLimit;

  /// (Highcharts) The label's pixel distance from the perimeter of the plot
  final dynamic distance;

  /// (Highcharts) Enable or disable the axis labels.
  final dynamic enabled;

  /// (Highcharts) A format string for the axis label. The context is available
  final String? format;

  /// (Highcharts) Horizontal axis only. When `staggerLines` is not set,
  final num? maxStaggerLines;

  /// (Highcharts) How to handle overflowing labels on horizontal axis. If set
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white
  final num? padding;

  /// (Highcharts) Defines how the labels are be repositioned according to the
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels.
  final dynamic reserveSpace;

  /// (Highcharts) Rotation of the labels in degrees. When `undefined`, the
  final num? rotation;

  /// (Highcharts) If enabled, the axis labels will skewed to follow the
  final dynamic skew3d;

  /// (Highcharts) Horizontal axes only. The number of lines to spread the
  final num? staggerLines;

  /// (Highcharts) To show only every _n_'th label on the axis, set the step to
  final num? step;

  /// (Highcharts) CSS styles for the label. Use `lineClamp` to control
  final dynamic style;

  /// (Highcharts) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Highcharts) The x position offset of all labels relative to the tick
  final num? x;

  /// (Highcharts) The y position offset of all labels relative to the tick
  final num? y;

  /// (Highcharts) The Z index for the axis labels.
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
      json["distance"] = hcJsonValue(distance);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (format != null) {
      json["format"] = format;
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
    if (position3d != null) {
      json["position3d"] = position3d;
    }
    if (reserveSpace != null) {
      json["reserveSpace"] = hcJsonValue(reserveSpace);
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (skew3d != null) {
      json["skew3d"] = hcJsonValue(skew3d);
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
