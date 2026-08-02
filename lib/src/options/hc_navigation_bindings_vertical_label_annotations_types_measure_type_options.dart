part of 'hc_options.dart';

/// (Highstock) Additional options for an annotation with the type.
class HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypeOptions
    implements HCOption {
  const HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypeOptions({
    this.background,
    this.crosshairX,
    this.crosshairY,
    this.label,
    this.line,
    this.points,
    this.selectType,
    this.xAxis,
    this.yAxis,
  });

  final HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypeBackgroundOptions?
      background;

  /// (Highstock) Configure a crosshair that is horizontally placed in middle
  final HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypeCrosshairXOptions?
      crosshairX;

  /// (Highstock) Configure a crosshair that is vertically placed in middle of
  final HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypeCrosshairYOptions?
      crosshairY;

  final HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypeLabelOptions?
      label;

  /// (Highstock) Line options.
  final HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypeLineOptions?
      line;

  final List<
          HCNavigationBindingsVerticalLabelAnnotationsTypesMeasureTypePointsOptions>?
      points;

  /// (Highstock) Decides in what dimensions the user can resize by dragging
  final String? selectType;

  /// (Highstock) This number defines which xAxis the point is connected to. It
  final num? xAxis;

  /// (Highstock) This number defines which yAxis the point is connected to. It
  final num? yAxis;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (background != null) {
      json["background"] = background!.toJson();
    }
    if (crosshairX != null) {
      json["crosshairX"] = crosshairX!.toJson();
    }
    if (crosshairY != null) {
      json["crosshairY"] = crosshairY!.toJson();
    }
    if (label != null) {
      json["label"] = label!.toJson();
    }
    if (line != null) {
      json["line"] = line!.toJson();
    }
    if (points != null) {
      json["points"] = points!.map((e) => e.toJson()).toList();
    }
    if (selectType != null) {
      json["selectType"] = selectType;
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
