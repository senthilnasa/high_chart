part of 'hc_options.dart';

/// (Gantt) Text labels for the plot lines
class HCNavigatorXAxisCurrentDateIndicatorLabelOptions implements HCOption {
  const HCNavigatorXAxisCurrentDateIndicatorLabelOptions({
    this.align,
    this.format,
    this.rotation,
    this.style,
    this.text,
    this.textAlign,
    this.useHTML,
    this.verticalAlign,
    this.x,
    this.y,
  });

  /// (Gantt) Horizontal alignment of the label. Can be one of "left", "center"
  final String? align;

  /// (Gantt) Format of the label. This options is passed as the first argument
  final dynamic format;

  /// (Gantt) Rotation of the text label in degrees. Defaults to 0 for
  final num? rotation;

  /// (Gantt) CSS styles for the text label.
  final HCCSSObject? style;

  /// (Gantt) The text itself. A subset of HTML is supported.
  final String? text;

  /// (Gantt) The text alignment for the label. While `align` determines where
  final String? textAlign;

  /// (Gantt) Whether to use HTML to render the labels.
  final dynamic useHTML;

  /// (Gantt) Vertical alignment of the label relative to the plot line. Can be
  final String? verticalAlign;

  /// (Gantt) Horizontal position relative the alignment. Default varies by
  final num? x;

  /// (Gantt) Vertical position of the text baseline relative to the alignment.
  final num? y;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (align != null) {
      json["align"] = align;
    }
    if (format != null) {
      json["format"] = hcJsonValue(format);
    }
    if (rotation != null) {
      json["rotation"] = rotation;
    }
    if (style != null) {
      json["style"] = style!.toJson();
    }
    if (text != null) {
      json["text"] = text;
    }
    if (textAlign != null) {
      json["textAlign"] = textAlign;
    }
    if (useHTML != null) {
      json["useHTML"] = hcJsonValue(useHTML);
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
