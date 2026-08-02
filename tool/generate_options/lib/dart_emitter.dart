/// Consumes a resolved schema (`dts_resolver.dart`) and emits a Dart
/// library of typed Highcharts option classes: one `HC<Name>` class per
/// interface, each with an all-nullable, named-parameter constructor and a
/// `toJson()` that only emits fields the caller actually set. A close port
/// of the old `generate_dart.js`, unchanged in output shape.
library;

import 'dart:io';

import 'package:path/path.dart' as p;

import 'dts_types.dart';

const _dartReserved = {
  'assert',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'default',
  'do',
  'else',
  'enum',
  'extends',
  'false',
  'final',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'rethrow',
  'return',
  'super',
  'switch',
  'this',
  'throw',
  'true',
  'try',
  'var',
  'void',
  'while',
  'with',
  'import',
  'export',
  'library',
  'part',
  'show',
  'hide',
  'required',
  'covariant',
  'late',
  'static',
  'abstract',
  'extension',
  'mixin',
  'on',
  'operator',
  'typedef',
  'yield',
  'async',
  'await',
  'deferred',
  'external',
  'factory',
  'get',
  'set',
  'implements',
  'interface',
};

String dartClassName(String tsName) => 'HC$tsName';

/// PascalCase/camelCase TS interface name -> snake_case file name, handling
/// acronym runs correctly (e.g. `XAxisOptions` -> `x_axis_options`, not
/// `xaxis_options`; `ASTNode` -> `ast_node`, not `a_s_t_node`).
String toSnakeCase(String name) {
  final step1 = name.replaceAllMapped(
    RegExp(r'([a-z0-9])([A-Z])'),
    (m) => '${m[1]}_${m[2]}',
  );
  final step2 = step1.replaceAllMapped(
    RegExp(r'([A-Z]+)([A-Z][a-z])'),
    (m) => '${m[1]}_${m[2]}',
  );
  return step2.toLowerCase();
}

String dartFieldName(String propName) {
  var name = propName.replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_');
  if (RegExp(r'^[0-9]').hasMatch(name)) name = '_$name';
  if (RegExp(r'^[A-Z]').hasMatch(name)) {
    name = name[0].toLowerCase() + name.substring(1);
  }
  if (_dartReserved.contains(name)) name = '${name}_';
  return name;
}

String _dartType(ResolvedType type, Map<String, InterfaceSchema> schema) {
  switch (type.kind) {
    case TypeKind.string:
      return 'String';
    case TypeKind.literalUnion:
      return 'String';
    case TypeKind.number:
      return 'num';
    case TypeKind.boolean:
      return 'bool';
    case TypeKind.ref:
      return schema.containsKey(type.ref)
          ? dartClassName(type.ref!)
          : 'dynamic';
    case TypeKind.array:
      return 'List<${_dartType(type.element!, schema)}>';
    case TypeKind.map:
      return 'Map<String, ${_dartType(type.element!, schema)}>';
    case TypeKind.any:
      return 'dynamic';
  }
}

/// Builds the Dart expression that converts a value of the given [type],
/// bound to Dart expression [expr], into a JSON-safe value. [nullable]
/// should be true only for the top-level field access (which is genuinely
/// `T?`); recursive calls describe non-null closure-bound locals (`e`/`v`
/// from `.map()`), for which Dart would flag a `!` as unnecessary. Dart
/// doesn't promote public fields after a null check (only private fields
/// and local variables), so a direct method call on a checked-but-still-
/// nullable field needs an explicit `!`.
String _serializeExpr(
  String expr,
  ResolvedType type,
  Map<String, InterfaceSchema> schema, {
  bool nullable = false,
}) {
  final bang = nullable ? '!' : '';
  switch (type.kind) {
    case TypeKind.string:
    case TypeKind.literalUnion:
    case TypeKind.number:
    case TypeKind.boolean:
      return expr;
    case TypeKind.ref:
      return schema.containsKey(type.ref)
          ? '$expr$bang.toJson()'
          : 'hcJsonValue($expr)';
    case TypeKind.array:
      final elementExpr = _serializeExpr('e', type.element!, schema);
      if (elementExpr == 'e') return expr; // already JSON-safe
      return '$expr$bang.map((e) => $elementExpr).toList()';
    case TypeKind.map:
      final valueExpr = _serializeExpr('v', type.element!, schema);
      if (valueExpr == 'v') return expr;
      return '$expr$bang.map((k, v) => MapEntry(k, $valueExpr))';
    case TypeKind.any:
      return 'hcJsonValue($expr)';
  }
}

String _sanitizeDoc(String doc) {
  if (doc.isEmpty) return '';
  return doc.replaceAll(RegExp(r'\r?\n'), ' ').replaceAll('*/', '* /').trim();
}

String _generateClass(
  String tsName,
  InterfaceSchema iface,
  Map<String, InterfaceSchema> schema,
) {
  final className = dartClassName(tsName);
  // Skip properties that couldn't be resolved to a usable name; de-duplicate
  // by Dart field name (distinct TS names could collide after sanitizing;
  // keep the first).
  final seenFieldNames = <String>{};
  final props = <PropertySchema>[];
  for (final p in iface.properties) {
    if (p.name.isEmpty ||
        !RegExp(r'^[A-Za-z_$][A-Za-z0-9_$]*$').hasMatch(p.name)) {
      continue;
    }
    if (seenFieldNames.add(dartFieldName(p.name))) props.add(p);
  }

  final lines = <String>[];
  final doc = _sanitizeDoc(iface.doc);
  if (doc.isNotEmpty) lines.add('/// $doc');
  lines.add('class $className implements HCOption {');
  if (props.isEmpty) {
    // `const Foo({});` (an empty named-parameter clause) is a syntax error
    // in Dart; only emit the parameter list when there's at least one
    // field to put in it.
    lines.add('  const $className();');
  } else {
    lines.add('  const $className({');
    for (final p in props) {
      lines.add('    this.${dartFieldName(p.name)},');
    }
    lines.add('  });');
  }
  lines.add('');
  for (final p in props) {
    final fieldDoc = _sanitizeDoc(p.doc);
    if (fieldDoc.isNotEmpty) lines.add('  /// $fieldDoc');
    final baseType = _dartType(p.type, schema);
    // `dynamic` is already nullable; `dynamic?` triggers an
    // unnecessary_question_mark lint.
    final fieldType = baseType == 'dynamic' ? 'dynamic' : '$baseType?';
    lines.add('  final $fieldType ${dartFieldName(p.name)};');
    lines.add('');
  }
  lines.add('  @override');
  lines.add('  Map<String, dynamic> toJson() {');
  lines.add('    final Map<String, dynamic> json = <String, dynamic>{};');
  for (final p in props) {
    final field = dartFieldName(p.name);
    final ser = _serializeExpr(field, p.type, schema, nullable: true);
    // Always braced: `dart format` wraps long single-statement ifs onto
    // their own line once they exceed the line-length limit, and
    // flutter_lints' curly_braces_in_flow_control_structures then flags an
    // unbraced body that isn't on the same line as the `if`. Bracing
    // unconditionally sidesteps that formatting/lint interaction entirely
    // rather than depending on line length.
    lines.add('    if ($field != null) {');
    lines.add("      json[${_dartStringLiteral(p.name)}] = $ser;");
    lines.add('    }');
  }
  lines.add('    return json;');
  lines.add('  }');
  lines.add('}');
  return lines.join('\n');
}

String _dartStringLiteral(String value) {
  final escaped = value
      .replaceAll(r'\', r'\\')
      .replaceAll("'", r"\'")
      .replaceAll('\n', r'\n');
  return "'$escaped'";
}

/// A bucket smaller than this doesn't earn its own file — folded into the
/// shared `misc` file instead, so the ~40 option groups Highcharts only
/// has a handful of interfaces for don't each cost a whole file.
const _minModuleSize = 3;

/// A bucket larger than this is split into evenly-sized, numbered files
/// (`hc_plot_1.dart`, `hc_plot_2.dart`, …) instead of one huge one. A few
/// option groups — `Plot` (one sub-tree per series type) and `Navigation`
/// (which nests the *entire* annotations config, itself duplicated once
/// per annotation type) — are each ~2,000 interfaces on their own, large
/// enough that "one file per module" alone wouldn't stay compact.
const _maxModuleSize = 100;

/// The "module" a class belongs to: the interface name's first
/// PascalCase word (`XAxisOptions` -> `X`, `PlotLineOptions` -> `Plot`),
/// merging the three per-axis prefixes together since they're one option
/// group split three ways syntactically, not conceptually.
String _moduleKey(String tsName) {
  final match =
      RegExp(r'^([A-Z][a-z0-9]*|[A-Z]+(?=[A-Z]|$))').firstMatch(tsName);
  final word = match?.group(1) ?? tsName;
  const merge = {'X': 'Axis', 'Y': 'Axis', 'Z': 'Axis'};
  return merge[word] ?? word;
}

/// Writes one file per Highcharts option "module" (see [_moduleKey]) —
/// each containing every class in that module, sorted by name — plus the
/// `hc_options.dart` library file that `part`s all of them in. Returns the
/// number of classes generated.
int writeDartLibrary(Map<String, InterfaceSchema> schema, String outDir) {
  final dir = Directory(outDir);
  if (!dir.existsSync()) dir.createSync(recursive: true);

  final byModule = <String, List<String>>{};
  for (final name in schema.keys) {
    byModule.putIfAbsent(_moduleKey(name), () => []).add(name);
  }
  final misc = <String>[];
  final modules = <String, List<String>>{};
  for (final entry in byModule.entries) {
    if (entry.value.length < _minModuleSize) {
      misc.addAll(entry.value);
    } else {
      modules[entry.key] = entry.value;
    }
  }
  if (misc.isNotEmpty) modules['Misc'] = misc;

  // Reserve the library file's own name and the hand-written base file's
  // name: a module named e.g. "Options" would otherwise snake_case to
  // `hc_options.dart` and silently clobber the library file that's
  // supposed to `part` it in (this actually happened once, back when
  // files were one-per-class and the colliding name was the root
  // `Options` interface itself — the resulting `HCOptions` class went
  // missing and every part-file's part-of link broke).
  final usedFileNames = <String>{'hc_options.dart', 'hc_option_base.dart'};
  final fileNames = <String>[];
  var classCount = 0;

  for (final moduleName in modules.keys.toList()..sort()) {
    final names = modules[moduleName]!..sort();
    final chunkCount = (names.length / _maxModuleSize).ceil();
    for (var chunk = 0; chunk < chunkCount; chunk++) {
      final chunkNames =
          names.skip(chunk * _maxModuleSize).take(_maxModuleSize);
      var fileName = 'hc_${toSnakeCase(moduleName)}.dart';
      if (chunkCount > 1) {
        fileName = 'hc_${toSnakeCase(moduleName)}_${chunk + 1}.dart';
      }
      if (usedFileNames.contains(fileName)) {
        fileName = 'hc_${toSnakeCase(moduleName)}_${usedFileNames.length}.dart';
      }
      usedFileNames.add(fileName);
      fileNames.add(fileName);

      final bodies = chunkNames.map((name) {
        classCount++;
        return _generateClass(name, schema[name]!, schema);
      }).join('\n\n');
      final content = "part of 'hc_options.dart';\n\n$bodies\n";
      File(p.join(outDir, fileName)).writeAsStringSync(content);
    }
  }
  fileNames.sort();

  final libraryContent = '''
/// Typed Highcharts chart options, generated from Highcharts' own
/// TypeScript definitions (see tool/generate_options/README.md for how to
/// regenerate). Every option is optional; only fields you set are included
/// in the JSON sent to the chart.
library;

part 'hc_option_base.dart';
${fileNames.map((f) => "part '$f';").join('\n')}
''';
  File(p.join(outDir, 'hc_options.dart')).writeAsStringSync(libraryContent);

  return classCount;
}
