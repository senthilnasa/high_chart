part of 'hc_options.dart';

class HCStockToolsGuiDefinitionsAdvancedOptions implements HCOption {
  const HCStockToolsGuiDefinitionsAdvancedOptions({
    this.fibonacci,
    this.fibonacciTimeZones,
    this.items,
    this.parallelChannel,
    this.pitchfork,
    this.timeCycles,
  });

  final HCStockToolsGuiDefinitionsAdvancedFibonacciOptions? fibonacci;

  final HCStockToolsGuiDefinitionsAdvancedFibonacciTimeZonesOptions?
      fibonacciTimeZones;

  /// (Highstock) A collection of strings pointing to config options for the
  final List<String>? items;

  final HCStockToolsGuiDefinitionsAdvancedParallelChannelOptions?
      parallelChannel;

  final HCStockToolsGuiDefinitionsAdvancedPitchforkOptions? pitchfork;

  final HCStockToolsGuiDefinitionsAdvancedTimeCyclesOptions? timeCycles;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (fibonacci != null) {
      json["fibonacci"] = fibonacci!.toJson();
    }
    if (fibonacciTimeZones != null) {
      json["fibonacciTimeZones"] = fibonacciTimeZones!.toJson();
    }
    if (items != null) {
      json["items"] = items;
    }
    if (parallelChannel != null) {
      json["parallelChannel"] = parallelChannel!.toJson();
    }
    if (pitchfork != null) {
      json["pitchfork"] = pitchfork!.toJson();
    }
    if (timeCycles != null) {
      json["timeCycles"] = timeCycles!.toJson();
    }
    return json;
  }
}
