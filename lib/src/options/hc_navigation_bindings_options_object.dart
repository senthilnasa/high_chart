part of 'hc_options.dart';

/// A config object for navigation bindings in annotations.
class HCNavigationBindingsOptionsObject implements HCOption {
  const HCNavigationBindingsOptionsObject({
    this.className,
    this.end,
    this.init,
    this.start,
    this.steps,
  });

  /// ClassName of the element for a binding.
  final String? className;

  /// Last event to be fired after last step event.
  final dynamic end;

  /// Initial event, fired on a button click.
  final dynamic init;

  /// Event fired on first click on a chart.
  final dynamic start;

  /// Last event to be fired after last step event. Array of step events to be
  final List<dynamic>? steps;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (className != null) {
      json["className"] = className;
    }
    if (end != null) {
      json["end"] = hcJsonValue(end);
    }
    if (init != null) {
      json["init"] = hcJsonValue(init);
    }
    if (start != null) {
      json["start"] = hcJsonValue(start);
    }
    if (steps != null) {
      json["steps"] = steps!.map((e) => hcJsonValue(e)).toList();
    }
    return json;
  }
}
