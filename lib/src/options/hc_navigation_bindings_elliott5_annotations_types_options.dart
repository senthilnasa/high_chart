part of 'hc_options.dart';

/// (Highstock) Option override for specific advanced annotation types. This
class HCNavigationBindingsElliott5AnnotationsTypesOptions implements HCOption {
  const HCNavigationBindingsElliott5AnnotationsTypesOptions({
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
  final HCNavigationBindingsElliott5AnnotationsTypesCrookedLineOptions?
      crookedLine;

  /// (Highstock) Options for the elliott wave annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesElliottWaveOptions?
      elliottWave;

  /// (Highstock) Options for the fibonacci annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesFibonacciOptions? fibonacci;

  /// (Highstock) Options for the fibonacci time zones annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesFibonacciTimeZonesOptions?
      fibonacciTimeZones;

  /// (Highstock) Options for the infinity line annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesInfinityLineOptions?
      infinityLine;

  /// (Highstock) Options for the measure annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesMeasureOptions? measure;

  /// (Highstock) Options for the pitchfork annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesPitchforkOptions? pitchfork;

  /// (Highstock) Options for the time cycles annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesTimeCyclesOptions?
      timeCycles;

  /// (Highstock) Options for the tunnel annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesTunnelOptions? tunnel;

  /// (Highstock) Options for the vertical line annotation type.
  final HCNavigationBindingsElliott5AnnotationsTypesVerticalLineOptions?
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
