part of 'hc_options.dart';

/// (Highstock) General event handlers for the series items. These event hooks
class HCSeriesEventsOptionsObject implements HCOption {
  const HCSeriesEventsOptionsObject({
    this.setRootNode,
  });

  /// (Highcharts) Fires on a request for change of root node for the tree,
  final dynamic setRootNode;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (setRootNode != null) {
      json["setRootNode"] = hcJsonValue(setRootNode);
    }
    return json;
  }
}
