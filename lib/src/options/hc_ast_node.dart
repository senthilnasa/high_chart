part of 'hc_options.dart';

/// Serialized form of an SVG/HTML definition, including children.
class HCASTNode implements HCOption {
  const HCASTNode({
    this.attributes,
    this.children,
    this.tagName,
    this.textContent,
  });

  final HCSVGAttributes? attributes;

  final List<HCASTNode>? children;

  final String? tagName;

  final String? textContent;

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
    if (textContent != null) {
      json["textContent"] = textContent;
    }
    return json;
  }
}
