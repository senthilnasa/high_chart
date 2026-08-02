part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps) The axis labels show the number for each
class HCColorAxisLabelsOptions implements HCOption {
  const HCColorAxisLabelsOptions({
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

  /// (Highcharts, Highstock, Highmaps) What part of the string the given
  final String? align;

  /// (Highcharts, Highstock, Highmaps) Whether to allow the axis labels to
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many
  final num? autoRotationLimit;

  /// (Highcharts, Gantt) The label's pixel distance from the perimeter of the
  final num? distance;

  /// (Highcharts, Highstock, Highmaps) Enable or disable the axis labels.
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps) A format string for the axis label. The
  final String? format;

  /// (Highcharts, Highstock, Highmaps) Horizontal axis only. When
  final num? maxStaggerLines;

  /// (Highcharts, Highstock, Highmaps) How to handle overflowing labels on
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white
  final num? padding;

  /// (Highcharts) Defines how the labels are be repositioned according to the
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels.
  final dynamic reserveSpace;

  /// (Highcharts, Highstock, Highmaps) Rotation of the labels in degrees. When
  final num? rotation;

  /// (Highcharts) If enabled, the axis labels will skewed to follow the
  final dynamic skew3d;

  /// (Highcharts, Highstock, Highmaps) Horizontal axes only. The number of
  final num? staggerLines;

  /// (Highcharts, Highstock, Highmaps) To show only every _n_'th label on the
  final num? step;

  /// (Highcharts, Highstock, Highmaps) CSS styles for the label. Use
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps) Whether to use HTML to render the
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps) The x position offset of all labels
  final num? x;

  /// (Highcharts, Highstock, Highmaps) The y position offset of all labels
  final num? y;

  /// (Highcharts, Highstock, Highmaps) The Z index for the axis labels.
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
