part of 'hc_options.dart';

/// (Highcharts) Styles for the label. The default `color` setting is
class HCPlotTreegraphLevelsDataLabelsStyleOptions implements HCOption {
  const HCPlotTreegraphLevelsDataLabelsStyleOptions({
    this.textOverflow,
  });

  final String? textOverflow;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textOverflow != null) {
      json["textOverflow"] = textOverflow;
    }
    return json;
  }
}
