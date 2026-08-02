part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Series labels are placed as close to the
class HCSeriesLabelOptionsObject implements HCOption {
  const HCSeriesLabelOptionsObject({
    this.boxesToAvoid,
    this.connectorAllowed,
    this.connectorNeighbourDistance,
    this.enabled,
    this.format,
    this.maxFontSize,
    this.minFontSize,
    this.onArea,
    this.style,
    this.useHTML,
  });

  /// (Highcharts, Highstock, Gantt) An array of boxes to avoid when laying out
  final List<HCLabelIntersectBoxObject>? boxesToAvoid;

  /// (Highcharts, Highstock, Gantt) Allow labels to be placed distant to the
  final dynamic connectorAllowed;

  /// (Highcharts, Highstock, Gantt) If the label is closer than this to a
  final num? connectorNeighbourDistance;

  /// (Highcharts, Highstock, Gantt) Enable the series label per series.
  final dynamic enabled;

  /// (Highcharts, Highstock, Gantt) A format string for the label, with
  final String? format;

  /// (Highcharts, Highstock, Gantt) For area-like series, allow the font size
  final num? maxFontSize;

  /// (Highcharts, Highstock, Gantt) For area-like series, allow the font size
  final num? minFontSize;

  /// (Highcharts, Highstock, Gantt) Draw the label on the area of an area
  final dynamic onArea;

  /// (Highcharts, Highstock, Gantt) Styles for the series label. The color
  final dynamic style;

  /// (Highcharts, Highstock, Gantt) Whether to use HTML to render the series
  final dynamic useHTML;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (boxesToAvoid != null) {
      json["boxesToAvoid"] = boxesToAvoid!.map((e) => e.toJson()).toList();
    }
    if (connectorAllowed != null) {
      json["connectorAllowed"] = hcJsonValue(connectorAllowed);
    }
    if (connectorNeighbourDistance != null) {
      json["connectorNeighbourDistance"] = connectorNeighbourDistance;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (format != null) {
      json["format"] = format;
    }
    if (maxFontSize != null) {
      json["maxFontSize"] = maxFontSize;
    }
    if (minFontSize != null) {
      json["minFontSize"] = minFontSize;
    }
    if (onArea != null) {
      json["onArea"] = hcJsonValue(onArea);
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    return json;
  }
}
