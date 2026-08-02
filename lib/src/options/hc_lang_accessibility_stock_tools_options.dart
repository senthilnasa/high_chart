part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Stock tools language options for
class HCLangAccessibilityStockToolsOptions implements HCOption {
  const HCLangAccessibilityStockToolsOptions({
    this.arrowLabel,
    this.groupLabel,
  });

  final String? arrowLabel;

  final String? groupLabel;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (arrowLabel != null) {
      json["arrowLabel"] = arrowLabel;
    }
    if (groupLabel != null) {
      json["groupLabel"] = groupLabel;
    }
    return json;
  }
}
