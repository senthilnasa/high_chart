part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) General theme for buttons. This
class HCGlobalButtonThemeOptions implements HCOption {
  const HCGlobalButtonThemeOptions({
    this.fill,
    this.padding,
    this.r,
    this.states,
    this.stroke,
    this.style,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) The fill color for buttons
  final String? fill;

  /// (Highcharts, Highstock, Highmaps, Gantt) The padding of buttons
  final num? padding;

  /// (Highcharts, Highstock, Highmaps, Gantt) The border radius for buttons
  final num? r;

  /// (Highcharts, Highstock, Highmaps, Gantt) State overrides for the buttons
  final HCGlobalButtonThemeStatesOptions? states;

  /// (Highcharts, Highstock, Highmaps, Gantt) The stroke color for buttons
  final String? stroke;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styling for the buttons'
  final HCGlobalButtonThemeStyleOptions? style;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fill != null) {
      json["fill"] = fill;
    }
    if (padding != null) {
      json["padding"] = padding;
    }
    if (r != null) {
      json["r"] = r;
    }
    if (states != null) {
      json["states"] = states!.toJson();
    }
    if (stroke != null) {
      json["stroke"] = stroke;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    return json;
  }
}
