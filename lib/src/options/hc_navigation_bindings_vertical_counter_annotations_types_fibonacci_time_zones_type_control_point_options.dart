part of 'hc_options.dart';

class HCNavigationBindingsVerticalCounterAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions
    implements HCOption {
  const HCNavigationBindingsVerticalCounterAnnotationsTypesFibonacciTimeZonesTypeControlPointOptions({
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
