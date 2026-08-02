part of 'hc_options.dart';

/// (Highcharts, Highstock, Highmaps, Gantt) Events for the credits label.
class HCCreditsEventsOptions implements HCOption {
  const HCCreditsEventsOptions({
    this.click,
  });

  /// (Highcharts, Highstock, Highmaps, Gantt) Callback function to handle click events on the credits label. The callback can call `event.preventDefault()` to prevent the default navigation behavior. Alternatively, you can add a general event handler using `Highcharts.addEvent(Chart, 'creditsClick', call
  final dynamic click;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (click != null) {
      json['click'] = hcJsonValue(click);
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Highcharts by default puts a credits label in the lower right corner of the chart. This can be changed using these options.
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

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to show the credits text.
  final bool? enabled;

  /// (Highcharts, Highstock, Highmaps, Gantt) Events for the credits label.
  final dynamic events;

  /// (Highcharts, Highstock, Highmaps, Gantt) The URL for the credits label.
  final String? href;

  /// (Highmaps) Credits for map source to be concatenated with conventional credit text. By default this is a format string that collects copyright information from the map if available.
  final String? mapText;

  /// (Highmaps) Detailed credits for map source to be displayed on hover of credits text. By default this is a format string that collects copyright information from the map if available.
  final String? mapTextFull;

  /// (Highcharts, Highstock, Highmaps, Gantt) Position configuration for the credits label.
  final dynamic position;

  /// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the credits label.
  final dynamic style;

  /// (Highcharts, Highstock, Highmaps, Gantt) The text for the credits label.
  final String? text;

  /// (Highcharts, Highstock, Highmaps, Gantt) Whether to render the credits as HTML
  final bool? useHTML;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (events != null) {
      json['events'] = hcJsonValue(events);
    }
    if (href != null) {
      json['href'] = href;
    }
    if (mapText != null) {
      json['mapText'] = mapText;
    }
    if (mapTextFull != null) {
      json['mapTextFull'] = mapTextFull;
    }
    if (position != null) {
      json['position'] = hcJsonValue(position);
    }
    if (style != null) {
      json['style'] = hcJsonValue(style);
    }
    if (text != null) {
      json['text'] = text;
    }
    if (useHTML != null) {
      json['useHTML'] = useHTML;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) Position configuration for the credits label.
class HCCreditsPositionOptions implements HCOption {
  const HCCreditsPositionOptions({
    this.align,
    this.verticalAlign,
    this.x,
    this.y,
  });

  final String? align;

  final String? verticalAlign;

  final num? x;

  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
    }
    if (verticalAlign != null) {
      json['verticalAlign'] = verticalAlign;
    }
    if (x != null) {
      json['x'] = x;
    }
    if (y != null) {
      json['y'] = y;
    }
    return json;
  }
}

/// (Highcharts, Highstock, Highmaps, Gantt) CSS styles for the credits label.
class HCCreditsStyleOptions implements HCOption {
  const HCCreditsStyleOptions({
    this.color,
    this.cursor,
    this.fontSize,
  });

  final dynamic color;

  final String? cursor;

  final dynamic fontSize;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (color != null) {
      json['color'] = hcJsonValue(color);
    }
    if (cursor != null) {
      json['cursor'] = cursor;
    }
    if (fontSize != null) {
      json['fontSize'] = hcJsonValue(fontSize);
    }
    return json;
  }
}
