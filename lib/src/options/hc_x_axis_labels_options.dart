part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) The axis labels show the number or
class HCXAxisLabelsOptions implements HCOption {
  const HCXAxisLabelsOptions({
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

  /// (Highcharts, Highstock, Highmaps, Gantt) What part of the string the
  final String? align;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the axis labels
  final dynamic allowOverlap;

  /// (Highcharts, Highstock, Gantt) For horizontal axes, the allowed degrees
  final List<num>? autoRotation;

  /// (Highcharts, Gantt) When each category width is more than this many
  final num? autoRotationLimit;

  /// (Highcharts, Gantt) The label's pixel distance from the perimeter of the
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the axis
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the axis
  final String? format;

  /// (Gantt) The number of pixels to indent the labels per level in a treegrid
  final num? indentation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Horizontal axis only. When
  final num? maxStaggerLines;

  /// (Highcharts, Highstock, Highmaps, Gantt) How to handle overflowing labels
  final String? overflow;

  /// (Highcharts, Gantt) The pixel padding for axis labels, to ensure white
  final num? padding;

  /// (Highcharts) Defines how the labels are be repositioned according to the
  final String? position3d;

  /// (Highcharts, Highstock, Gantt) Whether to reserve space for the labels.
  final dynamic reserveSpace;

  /// (Highcharts, Highstock, Highmaps, Gantt) Rotation of the labels in
  final num? rotation;

  /// (Highcharts) If enabled, the axis labels will skewed to follow the
  final dynamic skew3d;

  /// (Highcharts, Highstock, Highmaps, Gantt) Horizontal axes only. The number
  final num? staggerLines;

  /// (Highcharts, Highstock, Highmaps, Gantt) To show only every _n_'th label
  final num? step;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the label. Use
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to use HTML to render
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) The x position offset of all
  final num? x;

  /// (Highcharts, Highstock, Highmaps, Gantt) The y position offset of all
  final num? y;

  /// (Highcharts, Highstock, Highmaps, Gantt) The Z index for the axis labels.
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
