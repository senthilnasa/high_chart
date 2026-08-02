/// Data model shared between the `.d.ts` parser and the Dart emitter: a
/// structural description of a TypeScript type, decoupled from TS syntax so
/// the emitter doesn't need to know anything about `.d.ts` grammar.
library;

/// The kinds a resolved property type can collapse to. Mirrors the JSON
/// schema the old Node/TypeScript-Compiler-API generator used to produce,
/// so the Dart emitter (a near-verbatim port of generate_dart.js) didn't
/// need to change shape.
enum TypeKind { string, number, boolean, literalUnion, ref, array, map, any }

class ResolvedType {
  const ResolvedType.primitive(this.kind)
      : ref = null,
        element = null,
        literals = null;

  const ResolvedType.ref(String name)
      : kind = TypeKind.ref,
        ref = name,
        element = null,
        literals = null;

  const ResolvedType.array(ResolvedType this.element)
      : kind = TypeKind.array,
        ref = null,
        literals = null;

  const ResolvedType.map(ResolvedType this.element)
      : kind = TypeKind.map,
        ref = null,
        literals = null;

  const ResolvedType.literalUnion(List<String> this.literals)
      : kind = TypeKind.literalUnion,
        ref = null,
        element = null;

  static const any = ResolvedType.primitive(TypeKind.any);
  static const string = ResolvedType.primitive(TypeKind.string);
  static const number = ResolvedType.primitive(TypeKind.number);
  static const boolean = ResolvedType.primitive(TypeKind.boolean);

  final TypeKind kind;
  final String? ref;
  final ResolvedType? element;
  final List<String>? literals;
}

/// One extracted interface: its (already-flattened-through-`extends`)
/// properties, ready for the emitter.
class InterfaceSchema {
  InterfaceSchema(this.doc, this.properties);

  final String doc;
  final List<PropertySchema> properties;
}

class PropertySchema {
  PropertySchema(this.name, this.doc, this.type);

  final String name;
  final String doc;
  final ResolvedType type;
}

/// A raw type-expression parsed from `.d.ts` source, before resolution
/// (alias-chasing, union-collapsing, reachability). Kept close to TS
/// syntax; `TypeResolver` turns this into a [ResolvedType].
sealed class TypeExpr {
  const TypeExpr();
}

/// `Name`, `Name<Arg, ...>`, or a dotted reference like `Highcharts.Name`
/// (only the last segment is kept — see [DtsParser]).
class NamedTypeExpr extends TypeExpr {
  const NamedTypeExpr(this.name, this.typeArgs);
  final String name;
  final List<TypeExpr> typeArgs;
}

class UnionTypeExpr extends TypeExpr {
  const UnionTypeExpr(this.members);
  final List<TypeExpr> members;
}

class ArrayTypeExpr extends TypeExpr {
  const ArrayTypeExpr(this.element);
  final TypeExpr element;
}

class StringLiteralTypeExpr extends TypeExpr {
  const StringLiteralTypeExpr(this.value);
  final String value;
}

/// Anything not string-literal: numbers, booleans, `null`/`undefined`.
class OtherLiteralTypeExpr extends TypeExpr {
  const OtherLiteralTypeExpr(this.text);
  final String text;
}

class FunctionTypeExpr extends TypeExpr {
  const FunctionTypeExpr();
}

/// `keyof Operand`.
class KeyofTypeExpr extends TypeExpr {
  const KeyofTypeExpr(this.operand);
  final TypeExpr operand;
}

/// `Object[Index]`. The resolver only computes a real answer for the
/// `X[keyof X]` "registry lookup" idiom (Highcharts uses it once, for
/// `SeriesOptionsType`, to mean "the value type of every property on
/// `SeriesOptionsRegistry`" — i.e. every concrete series options type);
/// anything else falls back to `any` while still resolving [object] for
/// its enqueueing side effect.
class IndexedAccessTypeExpr extends TypeExpr {
  const IndexedAccessTypeExpr(this.object, this.index);
  final TypeExpr object;
  final TypeExpr index;
}

/// Anything the parser recognized but doesn't model precisely (tuples,
/// inline object-literal types, `keyof`/`typeof`, …) — resolves to `any`,
/// same as the old TypeScript-checker-based generator's default case.
class UnknownTypeExpr extends TypeExpr {
  const UnknownTypeExpr();
}

/// A single `name?: Type;` (or `name: Type;`) member of an interface body.
class RawProperty {
  RawProperty(this.name, this.optional, this.doc, this.type);
  final String name;
  final bool optional;
  final String doc;
  final TypeExpr type;
}

/// An `interface Name extends Base, ... { members }` declaration, as
/// literally written in one `.d.ts` file. Declaration merging (the same
/// name declared in several files/`declare module` blocks) is handled by
/// collecting multiple [RawInterface]s under one name — see
/// `DtsParser.interfaces`.
class RawInterface {
  RawInterface(this.doc, this.extendsNames, this.properties);
  final String doc;
  final List<String> extendsNames;
  final List<RawProperty> properties;
}

/// A top-level `type Name = ...;` alias.
class RawTypeAlias {
  RawTypeAlias(this.type);
  final TypeExpr type;
}
