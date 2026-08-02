part of 'hc_options.dart';

class HCExportingMenuItemDefinitionsSeparatorOptions implements HCOption {
  const HCExportingMenuItemDefinitionsSeparatorOptions({
    this.separator,
  });

  final dynamic separator;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (separator != null) {
      json["separator"] = hcJsonValue(separator);
    }
    return json;
  }
}
