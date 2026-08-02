part of 'hc_options.dart';

/// (Highcharts, Highmaps) Drill up button is deprecated since Highcharts v9.3.2.
class HCDrilldownDrillUpButtonOptions implements HCOption {
  const HCDrilldownDrillUpButtonOptions({
    this.position,
    this.relativeTo,
    this.theme,
  });

  /// (Highcharts, Highmaps) Positioning options for the button within the
  final dynamic position;

  /// (Highcharts, Highmaps) What box to align the button to. Can be either
  final String? relativeTo;

  /// (Highcharts, Highmaps) A collection of attributes for the button. The
  final dynamic theme;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (position != null) {
      json["position"] = hcJsonValue(position);
    }
    if (relativeTo != null) {
      json["relativeTo"] = relativeTo;
    }
    if (theme != null) {
      json["theme"] = hcJsonValue(theme);
    }
    return json;
  }
}
