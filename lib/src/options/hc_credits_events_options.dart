part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Events for the credits label.
class HCCreditsEventsOptions implements HCOption {
  const HCCreditsEventsOptions({
    this.click,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Callback function to handle
  final dynamic click;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (click != null) {
      json["click"] = hcJsonValue(click);
    }
    return json;
  }
}
