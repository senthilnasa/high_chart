part of 'hc_options.dart';

/// (Highcharts, Highstock, Gantt) Style options for the guide box. The guide box
class HCPlotOptionsSeriesDragDropGuideBoxOptions implements HCOption {
  const HCPlotOptionsSeriesDragDropGuideBoxOptions({
    this.default_,
  });

  /// (Highcharts, Highstock, Gantt) Style options for the guide box default
  final HCDragDropGuideBoxOptionsObject? default_;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (default_ != null) {
      json["default"] = default_!.toJson();
    }
    return json;
  }
}
