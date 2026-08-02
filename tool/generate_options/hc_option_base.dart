part of 'hc_options.dart';

/// Implemented by every generated typed option class. Lets [hcJsonValue]
/// serialize a typed option wherever Highcharts' own type is a union too
/// broad to model in Dart (e.g. `series`, a union of ~100 series-specific
/// option types) without losing type safety on the classes that *are*
/// generated for those union members.
abstract class HCOption {
  Map<String, dynamic> toJson();
}

/// Converts [value] to something safe to pass to `jsonEncode`: recursively
/// unwraps [HCOption]s, lists, and maps, and passes anything else (raw
/// `Map`/`List`/primitives — the "old" untyped payload style) through as-is.
dynamic hcJsonValue(dynamic value) {
  if (value == null) return null;
  if (value is HCOption) return value.toJson();
  if (value is List) return value.map(hcJsonValue).toList();
  if (value is Map) {
    return value.map((key, val) => MapEntry(key, hcJsonValue(val)));
  }
  return value;
}
