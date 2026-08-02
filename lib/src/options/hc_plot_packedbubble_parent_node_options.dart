part of 'hc_options.dart';

/// (Highcharts) Series options for parent nodes.
class HCPlotPackedbubbleParentNodeOptions implements HCOption {
  const HCPlotPackedbubbleParentNodeOptions({
    this.allowPointSelect,
  });

  /// (Highcharts) Allow this series' parent nodes to be selected by clicking
  final dynamic allowPointSelect;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allowPointSelect != null) {
      json["allowPointSelect"] = hcJsonValue(allowPointSelect);
    }
    return json;
  }
}
