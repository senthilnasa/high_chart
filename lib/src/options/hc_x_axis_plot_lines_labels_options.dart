part of 'hc_options.dart';

class HCXAxisPlotLinesLabelsOptions implements HCOption {
  const HCXAxisPlotLinesLabelsOptions({
    this.clip,
  });

  /// (Highcharts, Highstock, Gantt) Whether to hide labels that are outside
  final dynamic clip;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (clip != null) {
      json["clip"] = hcJsonValue(clip);
    }
    return json;
  }
}
