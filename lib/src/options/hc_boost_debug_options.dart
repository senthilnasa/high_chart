part of 'hc_options.dart';

/// (Highcharts, Highstock) Debugging options for boost. Useful for benchmarking,
class HCBoostDebugOptions implements HCOption {
  const HCBoostDebugOptions({
    this.showSkipSummary,
    this.timeBufferCopy,
    this.timeKDTree,
    this.timeRendering,
    this.timeSeriesProcessing,
    this.timeSetup,
  });

  /// (Highcharts, Highstock) Show the number of points skipped through
  final dynamic showSkipSummary;

  /// (Highcharts, Highstock) Time the WebGL to SVG buffer copy
  final dynamic timeBufferCopy;

  /// (Highcharts, Highstock) Time the building of the k-d tree.
  final dynamic timeKDTree;

  /// (Highcharts, Highstock) Time the series rendering.
  final dynamic timeRendering;

  /// (Highcharts, Highstock) Time the series processing.
  final dynamic timeSeriesProcessing;

  /// (Highcharts, Highstock) Time the WebGL setup.
  final dynamic timeSetup;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (showSkipSummary != null) {
      json["showSkipSummary"] = hcJsonValue(showSkipSummary);
    }
    if (timeBufferCopy != null) {
      json["timeBufferCopy"] = hcJsonValue(timeBufferCopy);
    }
    if (timeKDTree != null) {
      json["timeKDTree"] = hcJsonValue(timeKDTree);
    }
    if (timeRendering != null) {
      json["timeRendering"] = hcJsonValue(timeRendering);
    }
    if (timeSeriesProcessing != null) {
      json["timeSeriesProcessing"] = hcJsonValue(timeSeriesProcessing);
    }
    if (timeSetup != null) {
      json["timeSetup"] = hcJsonValue(timeSetup);
    }
    return json;
  }
}
