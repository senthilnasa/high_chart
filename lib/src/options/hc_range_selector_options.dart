part of 'hc_options.dart';

/// (Highstock, Gantt) The range selector is a tool for selecting ranges to
class HCRangeSelectorOptions implements HCOption {
  const HCRangeSelectorOptions({
    this.allButtonsEnabled,
    this.buttonPosition,
    this.buttons,
    this.buttonSpacing,
    this.buttonTheme,
    this.dropdown,
    this.enabled,
    this.floating,
    this.height,
    this.inputBoxBorderColor,
    this.inputBoxHeight,
    this.inputBoxWidth,
    this.inputDateFormat,
    this.inputEditDateFormat,
    this.inputEnabled,
    this.inputPosition,
    this.inputSpacing,
    this.inputStyle,
    this.labelStyle,
    this.selected,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) Whether to enable all buttons from the start. By
  final dynamic allButtonsEnabled;

  /// (Highstock, Gantt) Positioning for the button row.
  final HCRangeSelectorButtonPositionOptions? buttonPosition;

  /// (Highstock, Gantt) An array of configuration objects for the buttons.
  final List<HCRangeSelectorButtonsOptions>? buttons;

  /// (Highstock, Gantt) The space in pixels between the buttons in the range
  final num? buttonSpacing;

  /// (Highstock, Gantt) A collection of attributes for the buttons. The object
  final HCSVGAttributes? buttonTheme;

  /// (Highstock, Gantt) Whether to collapse the range selector buttons into a
  final String? dropdown;

  /// (Highstock, Gantt) Enable or disable the range selector. Default to
  final dynamic enabled;

  /// (Highstock, Gantt) When the rangeselector is floating, the plot area does
  final dynamic floating;

  /// (Highstock, Gantt) Deprecated. The height of the range selector.
  final num? height;

  /// (Highstock, Gantt) The border color of the date input boxes.
  final String? inputBoxBorderColor;

  /// (Highstock, Gantt) The pixel height of the date input boxes.
  final num? inputBoxHeight;

  /// (Highstock, Gantt) The pixel width of the date input boxes. When
  final num? inputBoxWidth;

  /// (Highstock, Gantt) The date format in the input boxes when not selected
  final String? inputDateFormat;

  /// (Highstock, Gantt) The date format in the input boxes when they are
  final String? inputEditDateFormat;

  /// (Highstock, Gantt) Enable or disable the date input boxes.
  final dynamic inputEnabled;

  /// (Highstock, Gantt) Positioning for the input boxes. Allowed properties
  final HCRangeSelectorInputPositionOptions? inputPosition;

  /// (Highstock, Gantt) The space in pixels between the labels and the date
  final num? inputSpacing;

  /// (Highstock, Gantt) CSS for the HTML inputs in the range selector.
  final HCCSSObject? inputStyle;

  /// (Highstock, Gantt) CSS styles for the labels - the Zoom, From and To
  final HCCSSObject? labelStyle;

  /// (Highstock, Gantt) The index of the button to appear pre-selected. If the
  final num? selected;

  /// (Highstock, Gantt) The vertical alignment of the rangeselector box.
  final String? verticalAlign;

  /// (Highstock, Gantt) The x offset of the range selector relative to its
  final num? x;

  /// (Highstock, Gantt) The y offset of the range selector relative to its
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allButtonsEnabled != null) {
      json["allButtonsEnabled"] = hcJsonValue(allButtonsEnabled);
    }
    if (buttonPosition != null) {
      json["buttonPosition"] = buttonPosition!.toJson();
    }
    if (buttons != null) {
      json["buttons"] = buttons!.map((e) => e.toJson()).toList();
    }
    if (buttonSpacing != null) {
      json["buttonSpacing"] = buttonSpacing;
    }
    if (buttonTheme != null) {
      json["buttonTheme"] = buttonTheme!.toJson();
    }
    if (dropdown != null) {
      json["dropdown"] = dropdown;
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (floating != null) {
      json["floating"] = hcJsonValue(floating);
    }
    if (height != null) {
      json["height"] = height;
    }
    if (inputBoxBorderColor != null) {
      json["inputBoxBorderColor"] = inputBoxBorderColor;
    }
    if (inputBoxHeight != null) {
      json["inputBoxHeight"] = inputBoxHeight;
    }
    if (inputBoxWidth != null) {
      json["inputBoxWidth"] = inputBoxWidth;
    }
    if (inputDateFormat != null) {
      json["inputDateFormat"] = inputDateFormat;
    }
    if (inputEditDateFormat != null) {
      json["inputEditDateFormat"] = inputEditDateFormat;
    }
    if (inputEnabled != null) {
      json["inputEnabled"] = hcJsonValue(inputEnabled);
    }
    if (inputPosition != null) {
      json["inputPosition"] = inputPosition!.toJson();
    }
    if (inputSpacing != null) {
      json["inputSpacing"] = inputSpacing;
    }
    if (inputStyle != null) {
      json["inputStyle"] = inputStyle!.toJson();
    }
    if (labelStyle != null) {
      json["labelStyle"] = labelStyle!.toJson();
    }
    if (selected != null) {
      json["selected"] = selected;
    }
    if (verticalAlign != null) {
      json["verticalAlign"] = verticalAlign;
    }
    if (x != null) {
      json["x"] = x;
    }
    if (y != null) {
      json["y"] = y;
    }
    return json;
  }
}
