part of 'hc_options.dart';

class HCDefsArrowOptions implements HCOption {
  const HCDefsArrowOptions({
    this.attributes,
    this.children,
    this.tagName,
  });

  final HCDefsArrowAttributesOptions? attributes;

  final List<HCDefsOptions>? children;

  final String? tagName;

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (attributes != null) {
      json["attributes"] = attributes!.toJson();
    }
    if (children != null) {
      json["children"] = children!.map((e) => e.toJson()).toList();
    }
    if (tagName != null) {
      json["tagName"] = tagName;
    }
    return json;
  }
}
