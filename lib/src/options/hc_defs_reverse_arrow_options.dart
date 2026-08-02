part of 'hc_options.dart';

class HCDefsReverseArrowOptions implements HCOption {
  const HCDefsReverseArrowOptions({
    this.attributes,
    this.tagName,
  });

  final HCDefsReverseArrowAttributesOptions? attributes;

  final String? tagName;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json["attributes"] = attributes!.toJson();
    }
    if (tagName != null) {
      json["tagName"] = tagName;
    }
    return json;
  }
}
