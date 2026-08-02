part of 'hc_options.dart';

class HCExportingMenuItemDefinitionsViewDataOptions implements HCOption {
  const HCExportingMenuItemDefinitionsViewDataOptions({
    this.textKey,
  });

  final String? textKey;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (textKey != null) {
      json["textKey"] = textKey;
    }
    return json;
  }
}
