part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Highcharts by default puts a credits
class HCCreditsOptions implements HCOption {
  const HCCreditsOptions({
    this.enabled,
    this.events,
    this.href,
    this.mapText,
    this.mapTextFull,
    this.position,
    this.style,
    this.text,
    this.useHTML,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the credits
  final dynamic enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Events for the credits label.
  final dynamic events;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for the credits label.
  final String? href;

  /// (Highmaps) Credits for map source to be concatenated with conventional
  final String? mapText;

  /// (Highmaps) Detailed credits for map source to be displayed on hover of
  final String? mapTextFull;

  /// (Highcharts, Highstock, Highmaps, Gantt) Position configuration for the
  final dynamic position;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the credits
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the credits label.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to render the credits as
  final dynamic useHTML;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (events != null) {
      json["events"] = hcJsonValue(events);
    }
    if (href != null) {
      json["href"] = href;
    }
    if (mapText != null) {
      json["mapText"] = mapText;
    }
    if (mapTextFull != null) {
      json["mapTextFull"] = mapTextFull;
    }
    if (position != null) {
      json["position"] = hcJsonValue(position);
    }
    if (style != null) {
      json["style"] = hcJsonValue(style);
    }
    if (text != null) {
      json["text"] = text;
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
    }
    return json;
  }
}
