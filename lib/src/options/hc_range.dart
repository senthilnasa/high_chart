part of 'hc_options.dart';

/// (Highstock, Gantt) Positioning for the button row.
class HCRangeSelectorButtonPositionOptions implements HCOption {
  const HCRangeSelectorButtonPositionOptions({
    this.align,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) The alignment of the input box. Allowed properties are `left`, `center`, `right`.
  final String? align;

  /// (Highstock, Gantt) X offset of the button row.
  final num? x;

  /// (Highstock, Gantt) Y offset of the button row.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
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

class HCRangeSelectorButtonsEventsOptions implements HCOption {
  const HCRangeSelectorButtonsEventsOptions();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}

/// (Highstock, Gantt) An array of configuration objects for the buttons.
class HCRangeSelectorButtonsOptions implements HCOption {
  const HCRangeSelectorButtonsOptions({
    this.count,
    this.dataGrouping,
    this.events,
    this.offsetMax,
    this.offsetMin,
    this.preserveDataGrouping,
    this.text,
    this.title,
    this.type,
  });

  /// (Highstock, Gantt) How many units of the defined type the button should span. If `type` is "month" and `count` is 3, the button spans three months.
  final num? count;

  /// (Highstock) A custom data grouping object for each button.
  final HCDataGroupingOptionsObject? dataGrouping;

  final HCRangeSelectorButtonsEventsOptions? events;

  /// (Highstock, Gantt) Additional range (in milliseconds) added to the end of the calculated time span.
  final num? offsetMax;

  /// (Highstock, Gantt) Additional range (in milliseconds) added to the start of the calculated time span.
  final num? offsetMin;

  /// (Highstock, Gantt) When buttons apply dataGrouping on a series, by default zooming in/out will deselect buttons and unset dataGrouping. Enable this option to keep buttons selected when extremes change.
  final bool? preserveDataGrouping;

  /// (Highstock, Gantt) The text for the button itself.
  final String? text;

  /// (Highstock, Gantt) Explanation for the button, shown as a tooltip on hover, and used by assistive technology.
  final String? title;

  /// (Highstock, Gantt) Defined the time span for the button. Can be one of `millisecond`, `second`, `minute`, `hour`, `day`, `week`, `month`, `year`, `ytd`, and `all`.
  final String? type;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (count != null) {
      json['count'] = count;
    }
    if (dataGrouping != null) {
      json['dataGrouping'] = dataGrouping!.toJson();
    }
    if (events != null) {
      json['events'] = events!.toJson();
    }
    if (offsetMax != null) {
      json['offsetMax'] = offsetMax;
    }
    if (offsetMin != null) {
      json['offsetMin'] = offsetMin;
    }
    if (preserveDataGrouping != null) {
      json['preserveDataGrouping'] = preserveDataGrouping;
    }
    if (text != null) {
      json['text'] = text;
    }
    if (title != null) {
      json['title'] = title;
    }
    if (type != null) {
      json['type'] = type;
    }
    return json;
  }
}

/// (Highstock, Gantt) Positioning for the input boxes. Allowed properties are `align`, `x` and `y`.
class HCRangeSelectorInputPositionOptions implements HCOption {
  const HCRangeSelectorInputPositionOptions({
    this.align,
    this.x,
    this.y,
  });

  /// (Highstock, Gantt) The alignment of the input box. Allowed properties are `left`, `center`, `right`.
  final String? align;

  /// (Highstock, Gantt) X offset of the input row.
  final num? x;

  /// (Highstock, Gantt) Y offset of the input row.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json['align'] = align;
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

/// (Highstock, Gantt) The range selector is a tool for selecting ranges to display within the chart. It provides buttons to select preconfigured ranges in the chart, like 1 day, 1 week, 1 month etc. It also provides input boxes where min and max dates can be manually input.
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

  /// (Highstock, Gantt) Whether to enable all buttons from the start. By default buttons are only enabled if the corresponding time range exists on the X axis, but enabling all buttons allows for dynamically loading different time ranges.
  final bool? allButtonsEnabled;

  /// (Highstock, Gantt) Positioning for the button row.
  final HCRangeSelectorButtonPositionOptions? buttonPosition;

  /// (Highstock, Gantt) An array of configuration objects for the buttons.
  final List<HCRangeSelectorButtonsOptions>? buttons;

  /// (Highstock, Gantt) The space in pixels between the buttons in the range selector.
  final num? buttonSpacing;

  /// (Highstock, Gantt) A collection of attributes for the buttons. The object takes SVG attributes like `fill`, `stroke`, `stroke-width`, as well as `style`, a collection of CSS properties for the text.
  final HCSVGAttributes? buttonTheme;

  /// (Highstock, Gantt) Whether to collapse the range selector buttons into a dropdown when there is not enough room to show everything in a single row, instead of dividing the range selector into multiple rows. Can be one of the following:
  final String? dropdown;

  /// (Highstock, Gantt) Enable or disable the range selector. Default to `true` for stock charts, using the `stockChart` factory.
  final bool? enabled;

  /// (Highstock, Gantt) When the rangeselector is floating, the plot area does not reserve space for it. This opens for positioning anywhere on the chart.
  final bool? floating;

  /// (Highstock, Gantt) Deprecated. The height of the range selector. Currently it is calculated dynamically.
  final num? height;

  /// (Highstock, Gantt) The border color of the date input boxes.
  final String? inputBoxBorderColor;

  /// (Highstock, Gantt) The pixel height of the date input boxes.
  final num? inputBoxHeight;

  /// (Highstock, Gantt) The pixel width of the date input boxes. When `undefined`, the width is fitted to the rendered content.
  final num? inputBoxWidth;

  /// (Highstock, Gantt) The date format in the input boxes when not selected for editing. Defaults to `%e %b %Y`.
  final String? inputDateFormat;

  /// (Highstock, Gantt) The date format in the input boxes when they are selected for editing. This must be a format that is recognized by JavaScript Date.parse.
  final String? inputEditDateFormat;

  /// (Highstock, Gantt) Enable or disable the date input boxes.
  final bool? inputEnabled;

  /// (Highstock, Gantt) Positioning for the input boxes. Allowed properties are `align`, `x` and `y`.
  final HCRangeSelectorInputPositionOptions? inputPosition;

  /// (Highstock, Gantt) The space in pixels between the labels and the date input boxes in the range selector.
  final num? inputSpacing;

  /// (Highstock, Gantt) CSS for the HTML inputs in the range selector.
  final HCCSSObject? inputStyle;

  /// (Highstock, Gantt) CSS styles for the labels - the Zoom, From and To texts.
  final HCCSSObject? labelStyle;

  /// (Highstock, Gantt) The index of the button to appear pre-selected. If the selected range exceeds the total data range and the 'all' option is available, the 'all' option, showing the full range, is automatically selected.
  final num? selected;

  /// (Highstock, Gantt) The vertical alignment of the rangeselector box. Allowed properties are `top`, `middle`, `bottom`.
  final String? verticalAlign;

  /// (Highstock, Gantt) The x offset of the range selector relative to its horizontal alignment within `chart.spacingLeft` and `chart.spacingRight`.
  final num? x;

  /// (Highstock, Gantt) The y offset of the range selector relative to its horizontal alignment within `chart.spacingLeft` and `chart.spacingRight`.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allButtonsEnabled != null) {
      json['allButtonsEnabled'] = allButtonsEnabled;
    }
    if (buttonPosition != null) {
      json['buttonPosition'] = buttonPosition!.toJson();
    }
    if (buttons != null) {
      json['buttons'] = buttons!.map((e) => e.toJson()).toList();
    }
    if (buttonSpacing != null) {
      json['buttonSpacing'] = buttonSpacing;
    }
    if (buttonTheme != null) {
      json['buttonTheme'] = buttonTheme!.toJson();
    }
    if (dropdown != null) {
      json['dropdown'] = dropdown;
    }
    if (enabled != null) {
      json['enabled'] = enabled;
    }
    if (floating != null) {
      json['floating'] = floating;
    }
    if (height != null) {
      json['height'] = height;
    }
    if (inputBoxBorderColor != null) {
      json['inputBoxBorderColor'] = inputBoxBorderColor;
    }
    if (inputBoxHeight != null) {
      json['inputBoxHeight'] = inputBoxHeight;
    }
    if (inputBoxWidth != null) {
      json['inputBoxWidth'] = inputBoxWidth;
    }
    if (inputDateFormat != null) {
      json['inputDateFormat'] = inputDateFormat;
    }
    if (inputEditDateFormat != null) {
      json['inputEditDateFormat'] = inputEditDateFormat;
    }
    if (inputEnabled != null) {
      json['inputEnabled'] = inputEnabled;
    }
    if (inputPosition != null) {
      json['inputPosition'] = inputPosition!.toJson();
    }
    if (inputSpacing != null) {
      json['inputSpacing'] = inputSpacing;
    }
    if (inputStyle != null) {
      json['inputStyle'] = inputStyle!.toJson();
    }
    if (labelStyle != null) {
      json['labelStyle'] = labelStyle!.toJson();
    }
    if (selected != null) {
      json['selected'] = selected;
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
