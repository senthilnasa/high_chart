part of 'hc_options.dart';

/// (Highstock) Option override for specific advanced annotation types. This
class HCNavigationBindingsInfinityLineAnnotationsTypesOptions
    implements HCOption {
  const HCNavigationBindingsInfinityLineAnnotationsTypesOptions({
    this.crookedLine,
    this.elliottWave,
    this.fibonacci,
    this.fibonacciTimeZones,
    this.infinityLine,
    this.measure,
    this.pitchfork,
    this.timeCycles,
    this.tunnel,
    this.verticalLine,
  });

  /// (Highstock) Options for the crooked line annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesCrookedLineOptions?
      crookedLine;

  /// (Highstock) Options for the elliott wave annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesElliottWaveOptions?
      elliottWave;

  /// (Highstock) Options for the fibonacci annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesFibonacciOptions?
      fibonacci;

  /// (Highstock) Options for the fibonacci time zones annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesFibonacciTimeZonesOptions?
      fibonacciTimeZones;

  /// (Highstock) Options for the infinity line annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesInfinityLineOptions?
      infinityLine;

  /// (Highstock) Options for the measure annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesMeasureOptions? measure;

  /// (Highstock) Options for the pitchfork annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesPitchforkOptions?
      pitchfork;

  /// (Highstock) Options for the time cycles annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesTimeCyclesOptions?
      timeCycles;

  /// (Highstock) Options for the tunnel annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesTunnelOptions? tunnel;

  /// (Highstock) Options for the vertical line annotation type.
  final HCNavigationBindingsInfinityLineAnnotationsTypesVerticalLineOptions?
      verticalLine;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (crookedLine != null) {
      json["crookedLine"] = crookedLine!.toJson();
    }
    if (elliottWave != null) {
      json["elliottWave"] = elliottWave!.toJson();
    }
    if (fibonacci != null) {
      json["fibonacci"] = fibonacci!.toJson();
    }
    if (fibonacciTimeZones != null) {
      json["fibonacciTimeZones"] = fibonacciTimeZones!.toJson();
    }
    if (infinityLine != null) {
      json["infinityLine"] = infinityLine!.toJson();
    }
    if (measure != null) {
      json["measure"] = measure!.toJson();
    }
    if (pitchfork != null) {
      json["pitchfork"] = pitchfork!.toJson();
    }
    if (timeCycles != null) {
      json["timeCycles"] = timeCycles!.toJson();
    }
    if (tunnel != null) {
      json["tunnel"] = tunnel!.toJson();
    }
    if (verticalLine != null) {
      json["verticalLine"] = verticalLine!.toJson();
    }
    return json;
  }
}
