part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip that appears
class HCTooltipOptions implements HCOption {
  const HCTooltipOptions({
    this.animation,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.changeDecimals,
    this.className,
    this.clusterFormat,
    this.crosshairs,
    this.dateTimeLabelFormats,
    this.distance,
    this.enabled,
    this.fixed,
    this.followPointer,
    this.followTouchMove,
    this.footerFormat,
    this.format,
    this.header,
    this.headerFormat,
    this.headerShape,
    this.hideDelay,
    this.nullFormat,
    this.outside,
    this.padding,
    this.pointFormat,
    this.position,
    this.shadow,
    this.shape,
    this.shared,
    this.showDelay,
    this.snap,
    this.split,
    this.stickOnContact,
    this.style,
    this.useHTML,
    this.valueDecimals,
    this.valuePrefix,
    this.valueSuffix,
    this.xDateFormat,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable animation of
  final dynamic animation;

  /// (Highcharts, Highstock, Highmaps, Gantt) The background color or gradient
  final dynamic backgroundColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The color of the tooltip border.
  final dynamic borderColor;

  /// (Highcharts, Highstock, Highmaps, Gantt) The radius of the rounded border
  final num? borderRadius;

  /// (Highcharts, Highstock, Highmaps, Gantt) The pixel width of the tooltip
  final num? borderWidth;

  /// (Highstock) How many decimals to show for the `point.change` or the
  final num? changeDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) A CSS class name to apply to the
  final String? className;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the cluster point's
  final String? clusterFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Since 4.1, the crosshair
  final dynamic crosshairs;

  /// (Highcharts, Highstock, Gantt) For series on datetime axes, the date
  final dynamic dateTimeLabelFormats;

  /// (Highcharts, Highstock, Highmaps, Gantt) Distance from point to tooltip
  final num? distance;

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable or disable the tooltip.
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the tooltip should be
  final dynamic fixed;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the tooltip should
  final dynamic followPointer;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether the tooltip should
  final dynamic followTouchMove;

  /// (Highcharts, Highstock, Highmaps, Gantt) A string to append to the
  final String? footerFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) A format string for the whole
  final String? format;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the tooltip header
  final HCTooltipHeaderOptions? header;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the tooltip header
  final String? headerFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for
  final String? headerShape;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of milliseconds to
  final num? hideDelay;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the null point's
  final String? nullFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to allow the tooltip to
  final dynamic outside;

  /// (Highcharts, Highstock, Highmaps, Gantt) Padding inside the tooltip, in
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The HTML of the point's line in
  final String? pointFormat;

  /// (Highcharts, Highstock, Highmaps, Gantt) Positioning options for fixed
  final HCTooltipPositionOptions? position;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to apply a drop shadow
  final dynamic shadow;

  /// (Highcharts, Highstock, Highmaps, Gantt) The name of a symbol to use for
  final String? shape;

  /// (Highcharts, Highstock) Shows information in the tooltip for all points
  final dynamic shared;

  /// (Highcharts, Highstock, Highmaps, Gantt) The number of milliseconds to
  final num? showDelay;

  /// (Highcharts, Highstock) Proximity snap for graphs or single points. It
  final num? snap;

  /// (Highcharts, Highstock) Shows tooltip for all points with the same X
  final dynamic split;

  /// (Highcharts, Highstock, Highmaps, Gantt) Prevents the tooltip from
  final dynamic stickOnContact;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the tooltip. The
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) Use HTML to render the contents
  final dynamic useHTML;

  /// (Highcharts, Highstock, Highmaps, Gantt) How many decimals to show in
  final num? valueDecimals;

  /// (Highcharts, Highstock, Highmaps, Gantt) A string to prepend to each
  final String? valuePrefix;

  /// (Highcharts, Highstock, Highmaps, Gantt) A string to append to each
  final String? valueSuffix;

  /// (Highcharts, Highstock, Gantt) The format for the date in the tooltip
  final dynamic xDateFormat;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
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
    if (changeDecimals != null) {
      json["changeDecimals"] = changeDecimals;
    }
    if (className != null) {
      json["className"] = className;
    }
    if (clusterFormat != null) {
      json["clusterFormat"] = clusterFormat;
    }
    if (crosshairs != null) {
      json["crosshairs"] = hcJsonValue(crosshairs);
    }
    if (dateTimeLabelFormats != null) {
      json["dateTimeLabelFormats"] = hcJsonValue(dateTimeLabelFormats);
    }
    if (distance != null) {
      json["distance"] = distance;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (fixed != null) {
      json["fixed"] = hcJsonValue(fixed);
    }
    if (followPointer != null) {
      json["followPointer"] = hcJsonValue(followPointer);
    }
    if (followTouchMove != null) {
      json["followTouchMove"] = hcJsonValue(followTouchMove);
    }
    if (footerFormat != null) {
      json["footerFormat"] = footerFormat;
    }
    if (format != null) {
      json["format"] = format;
    }
    if (header != null) {
      json["header"] = header!.toJson();
    }
    if (headerFormat != null) {
      json["headerFormat"] = headerFormat;
    }
    if (headerShape != null) {
      json["headerShape"] = headerShape;
    }
    if (hideDelay != null) {
      json["hideDelay"] = hideDelay;
    }
    if (nullFormat != null) {
      json["nullFormat"] = nullFormat;
    }
    if (outside != null) {
      json["outside"] = hcJsonValue(outside);
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (pointFormat != null) {
      json["pointFormat"] = pointFormat;
    }
    if (position != null) {
      json["position"] = position!.toJson();
    }
    if (shadow != null) {
      json["shadow"] = hcJsonValue(shadow);
    }
    if (shape != null) {
      json["shape"] = shape;
    }
    if (shared != null) {
      json["shared"] = hcJsonValue(shared);
    }
    if (showDelay != null) {
      json["showDelay"] = showDelay;
    }
    if (snap != null) {
      json["snap"] = snap;
    }
    if (split != null) {
      json["split"] = hcJsonValue(split);
    }
    if (stickOnContact != null) {
      json["stickOnContact"] = hcJsonValue(stickOnContact);
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    if (valueDecimals != null) {
      json["valueDecimals"] = valueDecimals;
    }
    if (valuePrefix != null) {
      json["valuePrefix"] = valuePrefix;
    }
    if (valueSuffix != null) {
      json["valueSuffix"] = valueSuffix;
    }
    if (xDateFormat != null) {
      json["xDateFormat"] = hcJsonValue(xDateFormat);
    }
    return json;
  }
}
