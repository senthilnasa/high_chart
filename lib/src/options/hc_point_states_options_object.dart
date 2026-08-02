part of 'hc_options.dart';

/// (Highcharts, Highstock) States for a single point marker.
class HCPointStatesOptionsObject implements HCOption {
  const HCPointStatesOptionsObject({
    this.hover,
    this.inactive,
    this.normal,
    this.select,
  });

  /// (Highcharts, Highstock) The hover state for a single point marker.
  final HCPointStatesHoverOptionsObject? hover;

  /// (Highcharts) The opposite state of a hover for a single point node.
  final HCPointStatesInactiveOptionsObject? inactive;

  /// (Highcharts, Highstock) The normal state of a single point marker.
  final HCPointStatesNormalOptionsObject? normal;

  /// (Highcharts, Highstock) The appearance of the point marker when selected.
  final HCPointStatesSelectOptionsObject? select;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (hover != null) {
      json["hover"] = hover!.toJson();
    }
    if (inactive != null) {
      json["inactive"] = inactive!.toJson();
    }
    if (normal != null) {
      json["normal"] = normal!.toJson();
    }
    if (select != null) {
      json["select"] = select!.toJson();
    }
    return json;
  }
}
