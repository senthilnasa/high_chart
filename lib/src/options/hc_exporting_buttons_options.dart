part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for the export related
class HCExportingButtonsOptions implements HCOption {
  const HCExportingButtonsOptions({
    this.contextButton,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the export button.
  final HCExportingButtonsOptionsObject? contextButton;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (contextButton != null) {
      json["contextButton"] = contextButton!.toJson();
    }
    return json;
  }
}
