part of 'hc_options.dart';

/// (Highstock) A configuration object for the tooltip rendering of each single
class HCSeriesTooltipOptionsObject implements HCOption {
  const HCSeriesTooltipOptionsObject({
    this.changeDecimals,
    this.clusterFormat,
    this.dateTimeLabelFormats,
    this.distance,
    this.followPointer,
    this.followTouchMove,
    this.footerFormat,
    this.format,
    this.header,
    this.headerFormat,
    this.linkFormat,
    this.nodeFormat,
    this.nullFormat,
    this.pointFormat,
    this.position,
    this.showDelay,
    this.valueDecimals,
    this.valuePrefix,
    this.valueSuffix,
    this.xDateFormat,
  });

  /// (Highstock) How many decimals to show for the `point.change` or the
  final num? changeDecimals;

  /// (Highstock) The HTML of the cluster point's in the tooltip. Works only
  final String? clusterFormat;

  /// (Highcharts, Highstock, Gantt) For series on datetime axes, the date
  final dynamic dateTimeLabelFormats;

  /// (Highstock) Distance from point to tooltip in pixels.
  final num? distance;

  /// (Highstock) Whether the tooltip should follow the mouse as it moves
  final dynamic followPointer;

  /// (Highstock) Whether the tooltip should update as the finger moves on a
  final dynamic followTouchMove;

  /// (Highstock) A string to append to the tooltip format.
  final String? footerFormat;

  /// (Highstock) A format string for the whole shared tooltip. When format
  final String? format;

  /// (Highstock) Options for the tooltip header when tooltip.split is enabled.
  final dynamic header;

  /// (Highstock) The HTML of the tooltip header line. The context is the Point
  final String? headerFormat;

  /// (Highcharts) The HTML of the point's line in the tooltip. Variables are
  final String? linkFormat;

  /// (Highcharts) The format string specifying what to show for _nodes_ in
  final String? nodeFormat;

  /// (Highstock) The HTML of the null point's line in the tooltip. Works
  final String? nullFormat;

  /// (Highstock) The HTML of the point's line in the tooltip. The context is
  final String? pointFormat;

  /// (Highstock) Positioning options for fixed tooltip, taking effect only
  final dynamic position;

  /// (Highstock) The number of milliseconds to wait until the tooltip is shown
  final num? showDelay;

  /// (Highstock) Number of decimals in indicator series.
  final num? valueDecimals;

  /// (Highstock) A string to prepend to each series' y value. Overridable in
  final String? valuePrefix;

  /// (Highstock) A string to append to each series' y value. Overridable in
  final String? valueSuffix;

  /// (Highcharts, Highstock, Gantt) The format for the date in the tooltip
  final dynamic xDateFormat;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (changeDecimals != null) {
      json["changeDecimals"] = changeDecimals;
    }
    if (clusterFormat != null) {
      json["clusterFormat"] = clusterFormat;
    }
    if (dateTimeLabelFormats != null) {
      json["dateTimeLabelFormats"] = hcJsonValue(dateTimeLabelFormats);
    }
    if (distance != null) {
      json["distance"] = distance;
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
      json["header"] = hcJsonValue(header);
    }
    if (headerFormat != null) {
      json["headerFormat"] = headerFormat;
    }
    if (linkFormat != null) {
      json["linkFormat"] = linkFormat;
    }
    if (nodeFormat != null) {
      json["nodeFormat"] = nodeFormat;
    }
    if (nullFormat != null) {
      json["nullFormat"] = nullFormat;
    }
    if (pointFormat != null) {
      json["pointFormat"] = pointFormat;
    }
    if (position != null) {
      json["position"] = hcJsonValue(position);
    }
    if (showDelay != null) {
      json["showDelay"] = showDelay;
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
