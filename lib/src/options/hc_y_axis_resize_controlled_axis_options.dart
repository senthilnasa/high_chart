part of 'hc_options.dart';

/// (Highstock) Contains two arrays of axes that are controlled by control line
class HCYAxisResizeControlledAxisOptions implements HCOption {
  const HCYAxisResizeControlledAxisOptions({
    this.next,
    this.prev,
  });

  /// (Highstock) Array of axes that should move out of the way of resizing
  final List<dynamic>? next;

  /// (Highstock) Array of axes that should move with the current axis while
  final List<dynamic>? prev;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (next != null) {
      json["next"] = next!.map((e) => hcJsonValue(e)).toList();
    }
    if (prev != null) {
      json["prev"] = prev!.map((e) => hcJsonValue(e)).toList();
    }
    return json;
  }
}
