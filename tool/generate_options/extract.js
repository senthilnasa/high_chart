// Extracts a structured JSON schema for the Highcharts `Options` type tree
// from the official highcharts.d.ts + its per-series-module augmentations,
// using the real TypeScript Compiler API (so declaration merging across
// files is handled correctly instead of hand-rolled parsing).
const ts = require('typescript');
const fs = require('fs');
const path = require('path');

const rootDir = process.argv[2];
const outFile = process.argv[3];

function listDtsFiles(dir) {
  let results = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) results = results.concat(listDtsFiles(full));
    else if (entry.name.endsWith('.d.ts')) results.push(full);
  }
  return results;
}

const files = listDtsFiles(rootDir);
const program = ts.createProgram(files, {
  allowJs: false, skipLibCheck: true, noEmit: true,
  target: ts.ScriptTarget.ES2020, module: ts.ModuleKind.ESNext,
});
const checker = program.getTypeChecker();
const mainSourceFile = program.getSourceFile(path.join(rootDir, 'highcharts.d.ts'));
const moduleSymbol = checker.getSymbolAtLocation(mainSourceFile);
const exportsList = checker.getExportsOfModule(moduleSymbol);
const byName = new Map(exportsList.map(e => [e.name, e]));

const interfaces = {}; // name -> { doc, properties: [{name, dartName, optional, doc, type}] }
const visited = new Set();
const queue = ['Options'];

function isInterfaceRef(type) {
  const symbol = type.getSymbol ? type.getSymbol() : undefined;
  return symbol && symbol.name && byName.has(symbol.name) &&
    symbol.declarations && symbol.declarations.some(d => ts.isInterfaceDeclaration(d));
}

// Converts a resolved ts.Type into our structured type descriptor.
function describeType(type) {
  if (!type) return { kind: 'any' };

  // Union: pure string-literal unions become a constrained string; anything
  // else collapses to dynamic (Dart has no first-class union types, and
  // faithfully modeling Highcharts' "ColorString | GradientColor" style
  // unions isn't worth the generated-code complexity for a first pass).
  if (type.isUnion && type.isUnion()) {
    const members = type.types;
    const allStringLiterals = members.every(t => t.isStringLiteral && t.isStringLiteral());
    if (allStringLiterals) {
      return { kind: 'literalUnion', literals: members.map(t => t.value) };
    }
    // undefined/null members (from optional properties) don't count against
    // resolving a single meaningful non-nullish member.
    const nonNullish = members.filter(t => !(t.flags & (ts.TypeFlags.Undefined | ts.TypeFlags.Null)));
    if (nonNullish.length === 1) {
      return describeType(nonNullish[0]);
    }
    // Multi-member, non-literal unions (e.g. `series: SeriesOptionsType[]`,
    // itself a union of ~100 series-specific option interfaces) can't be
    // faithfully typed in Dart. The property still ends up `dynamic`, but
    // any interface members are still walked and queued for generation, so
    // e.g. `HCLineSeriesOptions`/`HCPieSeriesOptions` exist and remain
    // usable wherever the slot they'd fill collapsed to `dynamic`.
    for (const member of nonNullish) {
      if (isInterfaceRef(member)) describeType(member);
    }
    return { kind: 'any' };
  }

  if (isInterfaceRef(type)) {
    const symbol = type.getSymbol();
    const name = symbol.name;
    if (!visited.has(name)) {
      visited.add(name);
      queue.push(name);
    }
    return { kind: 'ref', ref: name };
  }

  // Array<T> / T[]
  if (checker.isArrayType && checker.isArrayType(type)) {
    const typeArgs = checker.getTypeArguments(type);
    return { kind: 'array', element: describeType(typeArgs[0]) };
  }

  if (type.flags & ts.TypeFlags.String) return { kind: 'string' };
  if (type.flags & ts.TypeFlags.Number) return { kind: 'number' };
  if (type.flags & ts.TypeFlags.Boolean) return { kind: 'boolean' };
  if (type.flags & ts.TypeFlags.StringLiteral) return { kind: 'literalUnion', literals: [type.value] };
  if (type.flags & ts.TypeFlags.BooleanLiteral) return { kind: 'boolean' };

  // Record<string, T> / index-signature-only object types.
  const stringIndexType = type.getStringIndexType && type.getStringIndexType();
  if (stringIndexType && type.getProperties().length === 0) {
    return { kind: 'map', value: describeType(stringIndexType) };
  }

  return { kind: 'any' };
}

function jsDocOf(symbolOrNode) {
  try {
    const comment = ts.displayPartsToString(symbolOrNode.getDocumentationComment(checker));
    return comment ? comment.split('\n')[0].trim().slice(0, 300) : '';
  } catch (e) {
    return '';
  }
}

while (queue.length) {
  const name = queue.shift();
  if (interfaces[name]) continue;
  const sym = byName.get(name);
  if (!sym) continue;
  const type = checker.getDeclaredTypeOfSymbol(sym);
  const props = type.getProperties();
  const properties = [];
  for (const prop of props) {
    const decl = prop.valueDeclaration || (prop.declarations && prop.declarations[0]);
    if (!decl) continue;
    let propType;
    try {
      propType = checker.getTypeOfSymbolAtLocation(prop, decl);
    } catch (e) { continue; }
    // Skip function-typed (callback) properties: not representable in a
    // JSON payload sent from Dart to the chart's JS runtime.
    if (propType.getCallSignatures && propType.getCallSignatures().length > 0) {
      continue;
    }
    const optional = !!(prop.flags & ts.SymbolFlags.Optional);
    properties.push({
      name: prop.name,
      optional,
      doc: jsDocOf(prop),
      type: describeType(propType),
    });
  }
  interfaces[name] = {
    doc: jsDocOf(sym),
    properties,
  };
}

fs.writeFileSync(outFile, JSON.stringify(interfaces, null, 1));
console.log(`Extracted ${Object.keys(interfaces).length} interfaces to ${outFile}`);
