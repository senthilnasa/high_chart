part of 'hc_options.dart';

class HCExportingMenuItemDefinitionsDownloadPNGOptions implements HCOption {
  const HCExportingMenuItemDefinitionsDownloadPNGOptions({
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
