part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Accessibility language options for
class HCLangAccessibilityTableOptions implements HCOption {
  const HCLangAccessibilityTableOptions({
    this.tableSummary,
    this.viewAsDataTableButtonText,
  });

  final String? tableSummary;

  final String? viewAsDataTableButtonText;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (tableSummary != null) {
      json["tableSummary"] = tableSummary;
    }
    if (viewAsDataTableButtonText != null) {
      json["viewAsDataTableButtonText"] = viewAsDataTableButtonText;
    }
    return json;
  }
}
