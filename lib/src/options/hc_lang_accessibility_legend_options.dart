part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Language options for accessibility
class HCLangAccessibilityLegendOptions implements HCOption {
  const HCLangAccessibilityLegendOptions({
    this.legendItem,
    this.legendLabel,
    this.legendLabelNoTitle,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for individual
  final String? legendItem;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the legend,
  final String? legendLabel;

  /// (Highcharts, Highstock, Highmaps, Gantt) Accessible label for the legend,
  final String? legendLabelNoTitle;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (legendItem != null) {
      json["legendItem"] = legendItem;
    }
    if (legendLabel != null) {
      json["legendLabel"] = legendLabel;
    }
    if (legendLabelNoTitle != null) {
      json["legendLabelNoTitle"] = legendLabelNoTitle;
    }
    return json;
  }
}
