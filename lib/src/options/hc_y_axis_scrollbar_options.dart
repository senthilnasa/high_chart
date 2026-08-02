part of 'hc_options.dart';

/// (Highstock) An optional scrollbar to display on the Y axis in response to
class HCYAxisScrollbarOptions implements HCOption {
  const HCYAxisScrollbarOptions({
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
    this.liveRedraw,
    this.margin,
    this.minWidth,
    this.opposite,
    this.rifleColor,
    this.showFull,
    this.size,
    this.trackBackgroundColor,
    this.trackBorderColor,
    this.trackBorderRadius,
    this.trackBorderWidth,
    this.zIndex,
  });

  /// (Highstock) The background color of the scrollbar itself.
  final dynamic barBackgroundColor;

  /// (Highstock) The color of the scrollbar's border.
  final dynamic barBorderColor;

  /// (Highstock) The border rounding radius of the bar.
  final num? barBorderRadius;

  /// (Highstock) The width of the bar's border.
  final num? barBorderWidth;

  /// (Highstock) The color of the small arrow inside the scrollbar buttons.
  final dynamic buttonArrowColor;

  /// (Highstock) The color of scrollbar buttons.
  final dynamic buttonBackgroundColor;

  /// (Highstock) The color of the border of the scrollbar buttons.
  final dynamic buttonBorderColor;

  /// (Highstock) The corner radius of the scrollbar buttons.
  final num? buttonBorderRadius;

  /// (Highstock) The border width of the scrollbar buttons.
  final num? buttonBorderWidth;

  /// (Highstock) Enable or disable the buttons at the end of the scrollbar.
  final dynamic buttonsEnabled;

  /// (Highstock) Enable the scrollbar on the Y axis.
  final dynamic enabled;

  /// (Highstock) Whether to redraw the main chart as the scrollbar or the
  final dynamic liveRedraw;

  /// (Highstock) Pixel margin between the scrollbar and the axis elements.
  final num? margin;

  /// (Highstock) The minimum width of the scrollbar.
  final num? minWidth;

  /// (Highstock) Defines the position of the scrollbar. By default, it is
  final dynamic opposite;

  /// (Highstock) The color of the small rifles in the middle of the scrollbar.
  final dynamic rifleColor;

  /// (Highstock) Whether to show the scrollbar when it is fully zoomed out at
  final dynamic showFull;

  /// (Highstock) The width of a vertical scrollbar or height of a horizontal
  final num? size;

  /// (Highstock) The color of the track background.
  final dynamic trackBackgroundColor;

  /// (Highstock) The color of the border of the scrollbar track.
  final dynamic trackBorderColor;

  /// (Highstock) The corner radius of the border of the scrollbar track.
  final num? trackBorderRadius;

  /// (Highstock) The width of the border of the scrollbar track.
  final num? trackBorderWidth;

  /// (Highstock) Z index of the scrollbar elements.
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
    if (liveRedraw != null) {
      json["liveRedraw"] = hcJsonValue(liveRedraw);
    }
    if (margin != null) {
      json["margin"] = margin;
    }
    if (minWidth != null) {
      json["minWidth"] = minWidth;
    }
    if (opposite != null) {
      json["opposite"] = hcJsonValue(opposite);
    }
    if (rifleColor != null) {
      json["rifleColor"] = hcJsonValue(rifleColor);
    }
    if (showFull != null) {
      json["showFull"] = hcJsonValue(showFull);
    }
    if (size != null) {
      json["size"] = size;
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
