part of 'hc_options.dart';

/// (Highcharts, Highstock) Options for the Boost module. The Boost module allows
class HCBoostOptions implements HCOption {
  const HCBoostOptions({
    this.allowForce,
    this.chunkSize,
    this.debug,
    this.enabled,
    this.pixelRatio,
    this.seriesThreshold,
    this.useGPUTranslations,
    this.usePreallocated,
  });

  /// (Highcharts, Highstock) The chart will be boosted, if one of the series
  final dynamic allowForce;

  /// (Highcharts, Highstock) The number of points processed per frame when
  final num? chunkSize;

  /// (Highcharts, Highstock) Debugging options for boost. Useful for
  final HCBoostDebugOptions? debug;

  /// (Highcharts, Highstock) Enable or disable boost on a chart.
  final dynamic enabled;

  /// (Highcharts, Highstock) The pixel ratio for the WebGL content. If 0, the
  final num? pixelRatio;

  /// (Highcharts, Highstock) Set the series threshold for when the boost
  final num? seriesThreshold;

  /// (Highcharts, Highstock) Enable or disable GPU translations. GPU
  final dynamic useGPUTranslations;

  /// (Highcharts, Highstock) Enable or disable pre-allocation of vertex
  final dynamic usePreallocated;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (allowForce != null) {
      json["allowForce"] = hcJsonValue(allowForce);
    }
    if (chunkSize != null) {
      json["chunkSize"] = chunkSize;
    }
    if (debug != null) {
      json["debug"] = debug!.toJson();
    }
    if (enabled != null) {
      json["enabled"] = hcJsonValue(enabled);
    }
    if (pixelRatio != null) {
      json["pixelRatio"] = pixelRatio;
    }
    if (seriesThreshold != null) {
      json["seriesThreshold"] = seriesThreshold;
    }
    if (useGPUTranslations != null) {
      json["useGPUTranslations"] = hcJsonValue(useGPUTranslations);
    }
    if (usePreallocated != null) {
      json["usePreallocated"] = hcJsonValue(usePreallocated);
    }
    return json;
  }
}
