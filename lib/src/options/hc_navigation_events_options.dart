part of 'hc_options.dart';

/// (Highcharts, Highstock) Events to communicate between Stock Tools and custom
class HCNavigationEventsOptions implements HCOption {
  const HCNavigationEventsOptions({
    this.closePopup,
    this.deselectButton,
    this.selectButton,
    this.showPopup,
  });

  /// (Highcharts, Highstock) A `closePopup` event. Fired when Popup should be
  final dynamic closePopup;

  /// (Highcharts, Highstock) Event fired when button state should change, for
  final dynamic deselectButton;

  /// (Highcharts, Highstock) Event fired on a button click.
  final dynamic selectButton;

  /// (Highcharts, Highstock) A `showPopup` event. Fired when selecting for
  final dynamic showPopup;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (closePopup != null) {
      json["closePopup"] = hcJsonValue(closePopup);
    }
    if (deselectButton != null) {
      json["deselectButton"] = hcJsonValue(deselectButton);
    }
    if (selectButton != null) {
      json["selectButton"] = hcJsonValue(selectButton);
    }
    if (showPopup != null) {
      json["showPopup"] = hcJsonValue(showPopup);
    }
    return json;
  }
}
