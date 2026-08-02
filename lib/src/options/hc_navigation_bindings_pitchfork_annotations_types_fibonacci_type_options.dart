part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTypeOptions
    implements HCOption {
  const HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTypeOptions({
    this.backgroundColors,
    this.height,
    this.labels,
    this.line,
    this.lineColor,
    this.lineColors,
    this.points,
    this.reversed,
    this.xAxis,
    this.yAxis,
  });

  /// (Highstock) An array of background colors: Defaults to: (see online
  final dynamic backgroundColors;

  /// (Highstock) The height of the fibonacci in terms of yAxis.
  final num? height;

  /// (Highstock) An array with options for the labels.
  final List<
          HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTypeLabelsOptions>?
      labels;

  /// (Highstock) Line options.
  final HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTypeLineOptions?
      line;

  /// (Highstock) The color of line.
  final String? lineColor;

  /// (Highstock) An array of colors for the lines.
  final dynamic lineColors;

  final List<
          HCNavigationBindingsPitchforkAnnotationsTypesFibonacciTypePointsOptions>?
      points;

  /// (Highstock) Whether the annotation levels should be reversed. By default
  final dynamic reversed;

  /// (Highstock) This number defines which xAxis the point is connected to. It
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (backgroundColors != null) {
      json["backgroundColors"] = hcJsonValue(backgroundColors);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (labels != null) {
      json["labels"] = labels!.map((e) => e.toJson()).toList();
    }
    if (line != null) {
      json["line"] = line!.toJson();
    }
    if (lineColor != null) {
      json["lineColor"] = lineColor;
    }
    if (lineColors != null) {
      json["lineColors"] = hcJsonValue(lineColors);
    }
    if (points != null) {
      json["points"] = points!.map((e) => e.toJson()).toList();
    }
    if (reversed != null) {
      json["reversed"] = hcJsonValue(reversed);
    }
    if (xAxis != null) {
      json["xAxis"] = xAxis;
    }
    if (yAxis != null) {
      json["yAxis"] = yAxis;
    }
    return json;
  }
}
