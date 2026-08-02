part of 'hc_options.dart';

/// (Highstock) A custom data grouping object for each button.
class HCDataGroupingOptionsObject implements HCOption {
  const HCDataGroupingOptionsObject({
    this.anchor,
    this.approximation,
    this.dateTimeLabelFormats,
    this.enabled,
    this.firstAnchor,
    this.forced,
    this.groupAll,
    this.groupPixelWidth,
    this.lastAnchor,
    this.smoothed,
    this.units,
  });

  /// (Highstock) Specifies how the points should be located on the X axis
  final String? anchor;

  /// (Highstock) The method of approximation inside a group. When for example
  final dynamic approximation;

  /// (Highstock) Datetime formats for the header of the tooltip in a stock
  final dynamic dateTimeLabelFormats;

  /// (Highstock) Enable or disable data grouping.
  final dynamic enabled;

  /// (Highstock) Specifies how the first grouped point is positioned on the
  final String? firstAnchor;

  /// (Highstock) When data grouping is forced, it runs no matter how small the
  final dynamic forced;

  /// (Highstock) By default only points within the visible range are grouped.
  final dynamic groupAll;

  /// (Highstock) The approximate pixel width of each group. If for example a
  final num? groupPixelWidth;

  /// (Highstock) Specifies how the last grouped point is positioned on the
  final String? lastAnchor;

  /// (Highstock) Deprecated. Use anchor, or firstAnchor and lastAnchor
  final dynamic smoothed;

  /// (Highstock) An array determining what time intervals the data is allowed
  final List<dynamic>? units;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (anchor != null) {
      json["anchor"] = anchor;
    }
    if (approximation != null) {
      json["approximation"] = hcJsonValue(approximation);
    }
    if (dateTimeLabelFormats != null) {
      json["dateTimeLabelFormats"] = hcJsonValue(dateTimeLabelFormats);
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (firstAnchor != null) {
      json["firstAnchor"] = firstAnchor;
    }
    if (forced != null) {
      json["forced"] = hcJsonValue(forced);
    }
    if (groupAll != null) {
      json["groupAll"] = hcJsonValue(groupAll);
    }
    if (groupPixelWidth != null) {
      json["groupPixelWidth"] = groupPixelWidth;
    }
    if (lastAnchor != null) {
      json["lastAnchor"] = lastAnchor;
    }
    if (smoothed != null) {
      json["smoothed"] = hcJsonValue(smoothed);
    }
    if (units != null) {
      json["units"] = units!.map((e) => hcJsonValue(e)).toList();
    }
    return json;
  }
}
