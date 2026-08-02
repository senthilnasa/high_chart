part of 'hc_options.dart';

class HCPlotScatterClusterStatesHoverOptions implements HCOption {
  const HCPlotScatterClusterStatesHoverOptions({
    this.fillColor,
  });

  /// (Highcharts, Highmaps) The fill color of the cluster marker in hover
  final dynamic fillColor;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fillColor != null) {
      json["fillColor"] = hcJsonValue(fillColor);
    }
    return json;
  }
}
