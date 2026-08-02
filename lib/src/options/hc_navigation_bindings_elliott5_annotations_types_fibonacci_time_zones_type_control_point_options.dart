part of 'hc_options.dart';

class HCNavigationBindingsElliott5AnnotationsTypesFibonacciTimeZonesTypeControlPointOptions
    implements HCOption {
  const HCNavigationBindingsElliott5AnnotationsTypesFibonacciTimeZonesTypeControlPointOptions({
    this.events,
  });

  final dynamic events;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (events != null) {
      json["events"] = hcJsonValue(events);
    }
    return json;
  }
}
