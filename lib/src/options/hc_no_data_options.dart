part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Options for displaying a message like "No data
class HCNoDataOptions implements HCOption {
  const HCNoDataOptions({
    this.attr,
    this.position,
    this.style,
    this.useHTML,
  });

  /// (Highcharts, Highstock, Gantt) An object of additional SVG attributes for
  final HCSVGAttributes? attr;

  /// (Highcharts, Highstock, Gantt) The position of the no-data label,
  final dynamic position;

  /// (Highcharts, Highstock, Gantt) CSS styles for the no-data label.
  final HCCSSObject? style;

  /// (Highcharts, Highstock, Gantt) Whether to insert the label as HTML, or as
  final dynamic useHTML;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attr != null) {
      json["attr"] = attr!.toJson();
    }
    if (position != null) {
      json["position"] = hcJsonValue(position);
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    return json;
  }
}
