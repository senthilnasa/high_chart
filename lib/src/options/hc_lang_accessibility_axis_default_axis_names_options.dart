part of 'hc_options.dart';

class HCLangAccessibilityAxisDefaultAxisNamesOptions implements HCOption {
  const HCLangAccessibilityAxisDefaultAxisNamesOptions({
    this.categories,
    this.time,
    this.values,
  });

  final String? categories;

  final String? time;

  final String? values;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (categories != null) {
      json["categories"] = categories;
    }
    if (time != null) {
      json["time"] = time;
    }
    if (values != null) {
      json["values"] = values;
    }
    return json;
  }
}
