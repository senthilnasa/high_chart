part of 'hc_options.dart';

/// (Highstock) Option override for specific advanced annotation types. This
class HCNavigationBindingsVerticalArrowAnnotationsTypesOptions
    implements HCOption {
  const HCNavigationBindingsVerticalArrowAnnotationsTypesOptions({
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
  final HCNavigationBindingsVerticalArrowAnnotationsTypesCrookedLineOptions?
      crookedLine;

  /// (Highstock) Options for the elliott wave annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesElliottWaveOptions?
      elliottWave;

  /// (Highstock) Options for the fibonacci annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesFibonacciOptions?
      fibonacci;

  /// (Highstock) Options for the fibonacci time zones annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesFibonacciTimeZonesOptions?
      fibonacciTimeZones;

  /// (Highstock) Options for the infinity line annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesInfinityLineOptions?
      infinityLine;

  /// (Highstock) Options for the measure annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesMeasureOptions?
      measure;

  /// (Highstock) Options for the pitchfork annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesPitchforkOptions?
      pitchfork;

  /// (Highstock) Options for the time cycles annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesTimeCyclesOptions?
      timeCycles;

  /// (Highstock) Options for the tunnel annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesTunnelOptions? tunnel;

  /// (Highstock) Options for the vertical line annotation type.
  final HCNavigationBindingsVerticalArrowAnnotationsTypesVerticalLineOptions?
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
