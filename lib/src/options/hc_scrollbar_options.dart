part of 'hc_options.dart';

/// (Highstock, Gantt) The scrollbar is a means of panning over the X axis of a
class HCScrollbarOptions implements HCOption {
  const HCScrollbarOptions({
    this.barBackgroundColor,
    this.barBorderColor,
    this.barBorderRadius,
    this.barBorderWidth,
    this.buttonArrowColor,
    this.buttonBackgroundColor,
    this.buttonBorderColor,
    this.buttonBorderRadius,
    this.buttonBorderWidth,
    this.buttonsEnabled,
    this.enabled,
    this.height,
    this.liveRedraw,
    this.margin,
    this.minWidth,
    this.rifleColor,
    this.showFull,
    this.trackBackgroundColor,
    this.trackBorderColor,
    this.trackBorderRadius,
    this.trackBorderWidth,
    this.zIndex,
  });

  /// (Highstock, Gantt) The background color of the scrollbar itself.
  final dynamic barBackgroundColor;

  /// (Highstock, Gantt) The color of the scrollbar's border.
  final dynamic barBorderColor;

  /// (Highstock, Gantt) The border rounding radius of the bar.
  final num? barBorderRadius;

  /// (Highstock, Gantt) The width of the bar's border.
  final num? barBorderWidth;

  /// (Highstock, Gantt) The color of the small arrow inside the scrollbar
  final dynamic buttonArrowColor;

  /// (Highstock, Gantt) The color of scrollbar buttons.
  final dynamic buttonBackgroundColor;

  /// (Highstock, Gantt) The color of the border of the scrollbar buttons.
  final dynamic buttonBorderColor;

  /// (Highstock, Gantt) The corner radius of the scrollbar buttons.
  final num? buttonBorderRadius;

  /// (Highstock, Gantt) The border width of the scrollbar buttons.
  final num? buttonBorderWidth;

  /// (Highstock, Gantt) Enable or disable the buttons at the end of the
  final dynamic buttonsEnabled;

  /// (Highstock, Gantt) Enable or disable the scrollbar.
  final dynamic enabled;

  /// (Highstock, Gantt) The height of the scrollbar. If `buttonsEnabled` is
  final num? height;

  /// (Highstock, Gantt) Whether to redraw the main chart as the scrollbar or
  final dynamic liveRedraw;

  /// (Highstock, Gantt) The margin between the scrollbar and its axis when the
  final num? margin;

  /// (Highstock, Gantt) The minimum width of the scrollbar.
  final num? minWidth;

  /// (Highstock, Gantt) The color of the small rifles in the middle of the
  final dynamic rifleColor;

  /// (Highstock, Gantt) Whether to show or hide the scrollbar when the
  final dynamic showFull;

  /// (Highstock, Gantt) The color of the track background.
  final dynamic trackBackgroundColor;

  /// (Highstock, Gantt) The color of the border of the scrollbar track.
  final dynamic trackBorderColor;

  /// (Highstock, Gantt) The corner radius of the border of the scrollbar
  final num? trackBorderRadius;

  /// (Highstock, Gantt) The width of the border of the scrollbar track.
  final num? trackBorderWidth;

  /// (Highstock, Gantt) The z index of the scrollbar group.
  final num? zIndex;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (barBackgroundColor != null) {
      json["barBackgroundColor"] = hcJsonValue(barBackgroundColor);
    }
    if (barBorderColor != null) {
      json["barBorderColor"] = hcJsonValue(barBorderColor);
    }
    if (barBorderRadius != null) {
      json["barBorderRadius"] = barBorderRadius;
    }
    if (barBorderWidth != null) {
      json["barBorderWidth"] = barBorderWidth;
    }
    if (buttonArrowColor != null) {
      json["buttonArrowColor"] = hcJsonValue(buttonArrowColor);
    }
    if (buttonBackgroundColor != null) {
      json["buttonBackgroundColor"] = hcJsonValue(buttonBackgroundColor);
    }
    if (buttonBorderColor != null) {
      json["buttonBorderColor"] = hcJsonValue(buttonBorderColor);
    }
    if (buttonBorderRadius != null) {
      json["buttonBorderRadius"] = buttonBorderRadius;
    }
    if (buttonBorderWidth != null) {
      json["buttonBorderWidth"] = buttonBorderWidth;
    }
    if (buttonsEnabled != null) {
      json["buttonsEnabled"] = hcJsonValue(buttonsEnabled);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (liveRedraw != null) {
      json["liveRedraw"] = hcJsonValue(liveRedraw);
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (minWidth != null) {
      json["minWidth"] = minWidth;
    }
    if (rifleColor != null) {
      json["rifleColor"] = hcJsonValue(rifleColor);
    }
    if (showFull != null) {
      json["showFull"] = hcJsonValue(showFull);
    }
    if (trackBackgroundColor != null) {
      json["trackBackgroundColor"] = hcJsonValue(trackBackgroundColor);
    }
    if (trackBorderColor != null) {
      json["trackBorderColor"] = hcJsonValue(trackBorderColor);
    }
    if (trackBorderRadius != null) {
      json["trackBorderRadius"] = trackBorderRadius;
    }
    if (trackBorderWidth != null) {
      json["trackBorderWidth"] = trackBorderWidth;
    }
    if (zIndex != null) {
      json["zIndex"] = zIndex;
    }
    return json;
  }
}
