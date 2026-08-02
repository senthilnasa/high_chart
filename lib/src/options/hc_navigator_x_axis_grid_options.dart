part of 'hc_options.dart';

/// (Gantt) Set grid options for the axis labels. Requires Highcharts Gantt.
class HCNavigatorXAxisGridOptions implements HCOption {
  const HCNavigatorXAxisGridOptions({
    this.borderColor,
    this.borderWidth,
    this.cellHeight,
    this.columns,
    this.enabled,
  });

  /// (Gantt) Set border color for the label grid lines.
  final String? borderColor;

  /// (Gantt) Set border width of the label grid lines.
  final num? borderWidth;

  /// (Gantt) Set cell height for grid axis labels. By default this is
  final num? cellHeight;

  /// (Gantt) Set specific options for each column (or row for horizontal axes)
  final List<HCXAxisOptions>? columns;

  /// (Gantt) Enable grid on the axis labels. Defaults to true for Gantt
  final dynamic enabled;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (borderColor != null) {
      json["borderColor"] = borderColor;
    }
    if (borderWidth != null) {
      json["borderWidth"] = borderWidth;
    }
    if (cellHeight != null) {
      json["cellHeight"] = cellHeight;
    }
    if (columns != null) {
      json["columns"] = columns!.map((e) => e.toJson()).toList();
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    return json;
  }
}
