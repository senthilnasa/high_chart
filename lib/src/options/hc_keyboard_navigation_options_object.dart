part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Options for keyboard navigation.
class HCKeyboardNavigationOptionsObject implements HCOption {
  const HCKeyboardNavigationOptionsObject({
    this.enabled,
    this.focusBorder,
    this.order,
    this.seriesNavigation,
    this.wrapAround,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Enable keyboard navigation for
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the focus border
  final HCKeyboardNavigationFocusBorderOptionsObject? focusBorder;

  /// (Highcharts, Highstock, Highmaps, Gantt) Order of tab navigation in the
  final List<String>? order;

  /// (Highcharts, Highstock, Highmaps, Gantt) Options for the keyboard
  final HCKeyboardNavigationSeriesNavigationOptionsObject? seriesNavigation;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether or not to wrap around
  final dynamic wrapAround;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (focusBorder != null) {
      json["focusBorder"] = focusBorder!.toJson();
    }
    if (order != null) {
      json["order"] = order;
    }
    if (seriesNavigation != null) {
      json["seriesNavigation"] = seriesNavigation!.toJson();
    }
    if (wrapAround != null) {
      json["wrapAround"] = hcJsonValue(wrapAround);
    }
    return json;
  }
}
