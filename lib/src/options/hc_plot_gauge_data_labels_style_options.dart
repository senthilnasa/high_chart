part of 'hc_options.dart';

/// (Highcharts) Styles for the label. The default `color` setting is
class HCPlotGaugeDataLabelsStyleOptions implements HCOption {
  const HCPlotGaugeDataLabelsStyleOptions({
    this.fontSize,
  });

  final num? fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fontSize != null) {
      json["fontSize"] = fontSize;
    }
    return json;
  }
}
