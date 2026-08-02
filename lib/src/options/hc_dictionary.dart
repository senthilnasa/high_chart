part of 'hc_options.dart';

/// Generic dictionary in TypeScript notation. Use the native `AnyRecord`
class HCDictionary implements HCOption {
  const HCDictionary();

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    return json;
  }
}
