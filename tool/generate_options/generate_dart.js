// Consumes schema.json (produced by extract.js) and emits a Dart library of
// typed Highcharts option classes: one `HC<Name>` class per extracted
// interface, each with an all-nullable, named-parameter constructor and a
// `toJson()` that only emits fields the caller actually set.
const fs = require('fs');
const path = require('path');

const schemaPath = process.argv[2];
const outDir = process.argv[3];
const schema = JSON.parse(fs.readFileSync(schemaPath, 'utf8'));

const DART_RESERVED = new Set([
  'assert','break','case','catch','class','const','continue','default','do',
  'else','enum','extends','false','final','finally','for','if','in','is',
  'new','null','rethrow','return','super','switch','this','throw','true',
  'try','var','void','while','with','import','export','library','part',
  'show','hide','required','covariant','late','static','abstract','extension',
  'mixin','on','operator','typedef','yield','async','await','deferred',
  'external','factory','get','set','implements','interface',
]);

function dartClassName(tsName) {
  return 'HC' + tsName;
}

// PascalCase/camelCase TS interface name -> snake_case file name, handling
// acronym runs correctly (e.g. `XAxisOptions` -> `x_axis_options`, not
// `xaxis_options`; `ASTNode` -> `ast_node`, not `a_s_t_node`).
function toSnakeCase(name) {
  return name
    .replace(/([a-z0-9])([A-Z])/g, '$1_$2')
    .replace(/([A-Z]+)([A-Z][a-z])/g, '$1_$2')
    .toLowerCase();
}

function dartFieldName(propName) {
  // Sanitize characters that can't appear in a Dart identifier (Highcharts
  // option names are almost all simple camelCase, but a handful — `Q`,
  // `Date` — start with a capital; lowercase the first letter so the
  // generated field satisfies Dart's lowerCamelCase lint. The JSON key
  // sent to the chart uses the original, unmodified name regardless.
  let name = propName.replace(/[^a-zA-Z0-9_]/g, '_');
  if (/^[0-9]/.test(name)) name = '_' + name;
  if (/^[A-Z]/.test(name)) name = name[0].toLowerCase() + name.slice(1);
  if (DART_RESERVED.has(name)) name = name + '_';
  return name;
}

function dartType(type) {
  switch (type.kind) {
    case 'string':
    case 'literalUnion':
      return 'String';
    case 'number':
      return 'num';
    case 'boolean':
      return 'bool';
    case 'ref':
      return schema[type.ref] ? dartClassName(type.ref) : 'dynamic';
    case 'array':
      return 'List<${T}>'.replace('${T}', dartType(type.element));
    case 'map':
      return 'Map<String, ${T}>'.replace('${T}', dartType(type.value));
    default:
      return 'dynamic';
  }
}

// Builds the Dart expression that converts a value of the given [type],
// bound to Dart expression [expr], into a JSON-safe value. [nullable]
// should be true only for the top-level field access (which is genuinely
// `T?`); recursive calls describe non-null closure-bound locals (`e`/`v`
// from `.map()`), for which Dart would flag a `!` as unnecessary. Dart
// doesn't promote public fields after a null check (only private fields
// and local variables), so a direct method call on a checked-but-still-
// nullable field needs an explicit `!`.
function serializeExpr(expr, type, nullable = false) {
  const bang = nullable ? '!' : '';
  switch (type.kind) {
    case 'string':
    case 'literalUnion':
    case 'number':
    case 'boolean':
      return expr;
    case 'ref':
      return schema[type.ref] ? `${expr}${bang}.toJson()` : `hcJsonValue(${expr})`;
    case 'array': {
      const elementExpr = serializeExpr('e', type.element, false);
      if (elementExpr === 'e') return expr; // already JSON-safe, no mapping needed
      return `${expr}${bang}.map((e) => ${elementExpr}).toList()`;
    }
    case 'map': {
      const valueExpr = serializeExpr('v', type.value, false);
      if (valueExpr === 'v') return expr;
      return `${expr}${bang}.map((k, v) => MapEntry(k, ${valueExpr}))`;
    }
    default:
      return `hcJsonValue(${expr})`;
  }
}

function sanitizeDoc(doc) {
  if (!doc) return '';
  return doc.replace(/\r?\n/g, ' ').replace(/\*\//g, '* /').trim();
}

function generateClass(tsName, iface) {
  const className = dartClassName(tsName);
  const props = iface.properties
    // Skip properties that couldn't be resolved to a usable name.
    .filter(p => p.name && /^[A-Za-z_$][A-Za-z0-9_$]*$/.test(p.name))
    // De-duplicate by Dart field name (distinct TS names could collide after
    // sanitizing; keep the first).
    .filter((p, i, arr) => arr.findIndex(x => dartFieldName(x.name) === dartFieldName(p.name)) === i);

  const lines = [];
  const doc = sanitizeDoc(iface.doc);
  if (doc) lines.push(`/// ${doc}`);
  lines.push(`class ${className} implements HCOption {`);
  if (props.length === 0) {
    // `const Foo({});` (an empty named-parameter clause) is a syntax
    // error in Dart; only emit the parameter list when there's at least
    // one field to put in it.
    lines.push(`  const ${className}();`);
  } else {
    lines.push(`  const ${className}({`);
    for (const p of props) {
      lines.push(`    this.${dartFieldName(p.name)},`);
    }
    lines.push(`  });`);
  }
  lines.push('');
  for (const p of props) {
    const fieldDoc = sanitizeDoc(p.doc);
    if (fieldDoc) lines.push(`  /// ${fieldDoc}`);
    const baseType = dartType(p.type);
    // `dynamic` is already nullable; `dynamic?` triggers an
    // unnecessary_question_mark lint.
    const fieldType = baseType === 'dynamic' ? 'dynamic' : `${baseType}?`;
    lines.push(`  final ${fieldType} ${dartFieldName(p.name)};`);
    lines.push('');
  }
  lines.push(`  @override`);
  lines.push(`  Map<String, dynamic> toJson() {`);
  lines.push(`    final Map<String, dynamic> json = <String, dynamic>{};`);
  for (const p of props) {
    const field = dartFieldName(p.name);
    const ser = serializeExpr(field, p.type, true);
    // Always braced: `dart format` wraps long single-statement ifs onto
    // their own line once they exceed the line-length limit, and
    // flutter_lints' curly_braces_in_flow_control_structures then flags
    // an unbraced body that isn't on the same line as the `if`. Bracing
    // unconditionally sidesteps that formatting/lint interaction entirely
    // rather than depending on line length.
    lines.push(`    if (${field} != null) {`);
    lines.push(`      json[${JSON.stringify(p.name)}] = ${ser};`);
    lines.push(`    }`);
  }
  lines.push(`    return json;`);
  lines.push(`  }`);
  lines.push(`}`);
  return lines.join('\n');
}

// One file per class, named after the option it represents — mirrors how
// Highcharts' own highcharts_flutter package lays its generated types out,
// and keeps `git diff` on a re-generate scoped to whatever options actually
// changed instead of touching arbitrary chunk boundaries.
const names = Object.keys(schema).sort();

if (!fs.existsSync(outDir)) fs.mkdirSync(outDir, { recursive: true });
const fileNames = [];
// Reserve the library file's own name and the hand-written base file's
// name: the root `Options` interface would otherwise snake_case to
// `hc_options.dart` and silently clobber the library file that's
// supposed to `part` it in (this actually happened once — the resulting
// `HCOptions` class went missing and every part-file's part-of link broke).
const usedFileNames = new Set(['hc_options.dart', 'hc_option_base.dart']);
for (const name of names) {
  let fileName = `hc_${toSnakeCase(name)}.dart`;
  // Defend against two TS names collapsing to the same snake_case file
  // (none currently do, but a future Highcharts release might introduce
  // one) rather than silently overwriting a file.
  if (usedFileNames.has(fileName)) {
    fileName = `hc_${toSnakeCase(name)}_${usedFileNames.size}.dart`;
  }
  usedFileNames.add(fileName);
  fileNames.push(fileName);
  const body = generateClass(name, schema[name]);
  const content = `part of 'hc_options.dart';\n\n${body}\n`;
  fs.writeFileSync(path.join(outDir, fileName), content);
}

const libraryContent = `/// Typed Highcharts chart options, generated from Highcharts' own
/// TypeScript definitions (see tool/generate_options/README.md for how to
/// regenerate). Every option is optional; only fields you set are included
/// in the JSON sent to the chart.
library;

part 'hc_option_base.dart';
${fileNames.map(f => `part '${f}';`).join('\n')}
`;
fs.writeFileSync(path.join(outDir, 'hc_options.dart'), libraryContent);

console.log(`Generated ${names.length} classes across ${fileNames.length} files.`);
