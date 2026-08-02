/// Turns the raw declarations `DtsParser` collected into the same resolved
/// schema shape the old TypeScript-Compiler-API extractor produced: a BFS
/// walk from the `Options` interface, flattening `extends` chains, chasing
/// `type` aliases, collapsing unions, and dropping callback/formatter
/// properties that can't ride in a JSON payload.
///
/// This is a deliberately narrower reimplementation of what a real
/// TypeScript type checker gives you for free (declaration merging and
/// `extends`/alias resolution are handled; full structural typing,
/// generic-parameter substitution, and exact union call-signature
/// semantics are not). See tool/generate_options/README.md for the
/// specific, known points of divergence from the old generator's output.
library;

import 'dts_parser.dart';
import 'dts_types.dart';

class _MergedInterface {
  _MergedInterface(this.doc, this.extendsNames, this.ownProperties);
  final String doc;
  final List<String> extendsNames;
  final List<RawProperty> ownProperties;
}

class SchemaResolver {
  SchemaResolver(DtsProgram program)
      : _interfaces = _mergeDeclarations(program.interfaces),
        _typeAliases = program.typeAliases;

  final Map<String, _MergedInterface> _interfaces;
  final Map<String, RawTypeAlias> _typeAliases;

  final Map<String, List<RawProperty>> _flattenCache = {};
  final Set<String> _flattening = {};
  final Set<String> _aliasChasing = {};

  final Map<String, InterfaceSchema> _resolved = {};
  final List<String> _queue = [];
  final Set<String> _queued = {};

  static Map<String, _MergedInterface> _mergeDeclarations(
    Map<String, List<RawInterface>> raw,
  ) {
    final merged = <String, _MergedInterface>{};
    for (final entry in raw.entries) {
      String doc = '';
      final extendsNames = <String>[];
      final seenExtends = <String>{};
      final ownProperties = <RawProperty>[];
      final seenProps = <String>{};
      for (final decl in entry.value) {
        if (doc.isEmpty && decl.doc.isNotEmpty) doc = decl.doc;
        for (final e in decl.extendsNames) {
          if (seenExtends.add(e)) extendsNames.add(e);
        }
        for (final p in decl.properties) {
          if (seenProps.add(p.name)) ownProperties.add(p);
        }
      }
      merged[entry.key] = _MergedInterface(doc, extendsNames, ownProperties);
    }
    return merged;
  }

  /// Own properties plus every inherited (via `extends`) property, with
  /// subtype members overriding base members of the same name — matching
  /// what a TS type checker's `getProperties()` would already give you
  /// flattened.
  List<RawProperty> _flattenedProperties(String name) {
    final cached = _flattenCache[name];
    if (cached != null) return cached;
    if (!_flattening.add(name)) return const []; // cycle guard

    final merged = _interfaces[name];
    final byName = <String, RawProperty>{};
    if (merged != null) {
      for (final baseName in merged.extendsNames) {
        for (final p in _flattenedProperties(baseName)) {
          byName[p.name] = p;
        }
      }
      for (final p in merged.ownProperties) {
        byName[p.name] = p;
      }
    }
    _flattening.remove(name);
    final list = byName.values.toList();
    _flattenCache[name] = list;
    return list;
  }

  void _enqueue(String name) {
    if (_queued.add(name)) _queue.add(name);
  }

  /// Whether [expr] is (or, through a chain of `type` aliases, resolves
  /// to) a callback/formatter type — these can't be represented in a JSON
  /// payload sent from Dart to the chart, so properties typed with them
  /// are dropped entirely (matching the old generator's
  /// `getCallSignatures().length > 0` filter — but that filter's actual
  /// behavior turns out to depend on *how* `Function` appears:
  ///
  /// - Bare, standalone `Function` (e.g. `complete?: Function;`) is
  ///   **kept** (resolves to `any`) — TypeScript's own checker doesn't
  ///   consider a bare `Function`-typed value callable enough to report a
  ///   call signature for.
  /// - `Function` unioned with a real callback alias (e.g.
  ///   `checkboxClick?: (Function|XCallbackFunction);`) **is** dropped —
  ///   apparently the union's computed call signature succeeds once at
  ///   least one member is a genuine function type.
  /// - A real callback alias unioned with a non-callable, non-Function
  ///   member (e.g. `parseDate?: (false|XCallbackFunction);`) is
  ///   **kept** — the non-callable member breaks the union's call
  ///   signature.
  ///
  /// [_isFunctionLikeUnionMember] captures the first two rules by treating
  /// bare `Function` as function-like only in union-membership position;
  /// [_isRealFunctionType] captures the standalone case by not.
  bool _isFunctionLike(TypeExpr expr) {
    if (expr is UnionTypeExpr) {
      final nonNullish =
          expr.members.where((m) => !_isNullOrUndefined(m)).toList();
      if (nonNullish.isEmpty) return false;
      // A union that's really just one real type plus `null`/`undefined`
      // (e.g. `Function | null`) behaves like that one type standalone
      // (kept, since bare `Function` alone is) — the union-of-multiple
      // rule below only kicks in once there's more than one non-nullish
      // member to actually compute a combined call signature over.
      if (nonNullish.length == 1) return _isRealFunctionType(nonNullish.single);
      return nonNullish.every(_isFunctionLikeUnionMember);
    }
    return _isRealFunctionType(expr);
  }

  bool _isFunctionLikeUnionMember(TypeExpr expr) {
    if (expr is NamedTypeExpr && expr.name == 'Function') return true;
    return _isRealFunctionType(expr);
  }

  /// Whether [expr] is *itself* an actual callable type: a function-type
  /// literal, or a (possibly-chased-through-aliases) reference to one.
  /// Bare `Function` doesn't count on its own — see [_isFunctionLike].
  bool _isRealFunctionType(TypeExpr expr) {
    switch (expr) {
      case FunctionTypeExpr():
        return true;
      case NamedTypeExpr(:final name):
        if (name == 'Function') return false;
        if (_interfaces.containsKey(name)) return false;
        final alias = _typeAliases[name];
        if (alias != null && _aliasChasing.add(name)) {
          final result = _isRealFunctionType(alias.type);
          _aliasChasing.remove(name);
          return result;
        }
        return false;
      default:
        return false;
    }
  }

  bool _isNullOrUndefined(TypeExpr expr) =>
      expr is NamedTypeExpr &&
      (expr.name == 'null' || expr.name == 'undefined');

  ResolvedType _resolveType(TypeExpr expr) {
    switch (expr) {
      case StringLiteralTypeExpr(:final value):
        return ResolvedType.literalUnion([value]);
      case OtherLiteralTypeExpr(:final text):
        if (text == 'true' || text == 'false') return ResolvedType.boolean;
        return ResolvedType.any;
      case ArrayTypeExpr(:final element):
        return ResolvedType.array(_resolveType(element));
      case FunctionTypeExpr():
      case UnknownTypeExpr():
      case KeyofTypeExpr():
        return ResolvedType.any;
      case UnionTypeExpr(:final members):
        return _resolveUnion(members);
      case NamedTypeExpr(:final name, :final typeArgs):
        return _resolveNamed(name, typeArgs);
      case IndexedAccessTypeExpr(:final object, :final index):
        return _resolveIndexedAccess(object, index);
    }
  }

  /// `X[keyof X]` — the one indexed-access idiom Highcharts actually uses
  /// (for `SeriesOptionsType`, meaning "the value type of every property
  /// on `SeriesOptionsRegistry`", i.e. every concrete series options
  /// type). Resolved as the union of every one of `X`'s own properties'
  /// types, which both produces the right answer (a big non-literal union
  /// that collapses to `any`, same as the real checker) and — as a side
  /// effect of resolving a union — walks and enqueues every concrete
  /// interface it names, without ever treating the registry interface
  /// `X` itself as a real, generatable type (it never is one; nothing is
  /// ever actually typed `SeriesOptionsRegistry`, only indexed into it).
  ///
  /// Anything else shaped like an indexed-access type just resolves
  /// [object] for its enqueueing side effect and reports `any` — this
  /// parser doesn't have real structural typing to compute an arbitrary
  /// picked member type.
  ResolvedType _resolveIndexedAccess(TypeExpr object, TypeExpr index) {
    if (object is NamedTypeExpr &&
        index is KeyofTypeExpr &&
        index.operand is NamedTypeExpr &&
        (index.operand as NamedTypeExpr).name == object.name &&
        _interfaces.containsKey(object.name)) {
      final valueTypes =
          _flattenedProperties(object.name).map((p) => p.type).toList();
      if (valueTypes.isEmpty) return ResolvedType.any;
      return _resolveUnion(valueTypes);
    }
    _resolveType(object);
    return ResolvedType.any;
  }

  ResolvedType _resolveUnion(List<TypeExpr> members) {
    final nonNullish = members.where((m) => !_isNullOrUndefined(m)).toList();
    if (nonNullish.isEmpty) return ResolvedType.any;
    if (nonNullish.length == 1) return _resolveType(nonNullish.single);

    final resolvedMembers = nonNullish.map(_resolveType).toList();

    // TypeScript widens a string-literal type unioned with `string` itself
    // (e.g. `'contrast' | ColorString` where `ColorString = string`) to
    // plain `string`, and merges literal-only unions together; replicate
    // both by working off each member's *resolved* kind rather than its
    // raw syntax, since the literal-vs-alias distinction is invisible
    // syntactically (`ColorString` doesn't look like `string` until
    // resolved).
    if (resolvedMembers.every(
        (t) => t.kind == TypeKind.string || t.kind == TypeKind.literalUnion)) {
      if (resolvedMembers.any((t) => t.kind == TypeKind.string)) {
        return ResolvedType.string;
      }
      final literals = <String>{};
      for (final t in resolvedMembers) {
        literals.addAll(t.literals!);
      }
      return ResolvedType.literalUnion(literals.toList());
    }

    // A union that, after resolution, turns out to be one distinct type
    // repeated (two different aliases that both resolve to `number`, say)
    // is that one type, same as how the real checker would already have
    // deduplicated it before `describeType` ever saw a union at all.
    final distinct = <ResolvedType>[];
    for (final t in resolvedMembers) {
      if (!distinct.any((d) => _typeEquals(d, t))) distinct.add(t);
    }
    if (distinct.length == 1) return distinct.single;

    // Otherwise: a genuinely multi-shaped union can't be modeled as one
    // Dart type (Dart has no first-class union types); the property
    // itself becomes `dynamic`, but every interface reachable through a
    // member was already walked and enqueued by the `.map(_resolveType)`
    // above, so it remains available and fully typed — just not the type
    // of *this* slot.
    return ResolvedType.any;
  }

  bool _typeEquals(ResolvedType a, ResolvedType b) {
    if (a.kind != b.kind) return false;
    switch (a.kind) {
      case TypeKind.ref:
        return a.ref == b.ref;
      case TypeKind.array:
      case TypeKind.map:
        return _typeEquals(a.element!, b.element!);
      default:
        return true;
    }
  }

  ResolvedType _resolveNamed(String name, List<TypeExpr> typeArgs) {
    switch (name) {
      case 'string':
        return ResolvedType.string;
      case 'number':
        return ResolvedType.number;
      case 'boolean':
      case 'true':
      case 'false':
        return ResolvedType.boolean;
    }
    if (_interfaces.containsKey(name)) {
      _enqueue(name);
      return ResolvedType.ref(name);
    }
    final alias = _typeAliases[name];
    if (alias != null) {
      if (!_aliasChasing.add(name)) return ResolvedType.any; // cycle guard
      final result = _resolveType(alias.type);
      _aliasChasing.remove(name);
      return result;
    }
    if (name == 'Array' && typeArgs.isNotEmpty) {
      return ResolvedType.array(_resolveType(typeArgs.first));
    }
    // `Record<K, V>` is a TypeScript builtin (from lib.es5.d.ts, not
    // declared in highcharts.d.ts), so it never matches `_interfaces`
    // above the way Highcharts' own `Dictionary<T>` does. It only
    // actually produces a real index signature (our `map` kind) when `K`
    // is the general `string` type; `Record<'a'|'b', V>` instead expands
    // to concrete named properties `{ a: V; b: V }` with no index
    // signature at all, which the real checker can't describe as a
    // single Dart type either — so only the bare-`string`-key form maps,
    // and everything else falls through to `any` (still resolving `V`
    // first, for its enqueueing side effect).
    if (name == 'Record' && typeArgs.length >= 2) {
      final keyArg = typeArgs[0];
      if (keyArg is NamedTypeExpr && keyArg.name == 'string') {
        return ResolvedType.map(_resolveType(typeArgs[1]));
      }
      _resolveType(typeArgs[1]);
      return ResolvedType.any;
    }
    return ResolvedType.any;
  }

  String _cleanDoc(String raw) {
    if (raw.isEmpty) return '';
    var text = raw;
    if (text.startsWith('/**')) text = text.substring(3);
    if (text.endsWith('*/')) text = text.substring(0, text.length - 2);
    final lines = text.split('\n').map((l) {
      var s = l.trim();
      if (s.startsWith('*')) s = s.substring(1).trim();
      return s;
    });
    final firstParagraph = <String>[];
    var sawContent = false;
    for (final l in lines) {
      if (l.isEmpty) {
        if (sawContent) break;
        continue;
      }
      sawContent = true;
      firstParagraph.add(l);
    }
    var joined = firstParagraph.join(' ').trim();
    if (joined.length > 300) joined = joined.substring(0, 300);
    return joined;
  }

  /// Runs the BFS from [root] ("Options") and returns the resolved schema:
  /// one entry per reachable interface, with all `extends` flattened and
  /// every property's type resolved.
  Map<String, InterfaceSchema> resolve({String root = 'Options'}) {
    _enqueue(root);
    var i = 0;
    while (i < _queue.length) {
      final name = _queue[i++];
      if (_resolved.containsKey(name)) continue;
      final merged = _interfaces[name];
      if (merged == null) continue;
      final properties = <PropertySchema>[];
      for (final p in _flattenedProperties(name)) {
        if (_isFunctionLike(p.type)) continue;
        final type = _resolveType(p.type);
        properties.add(PropertySchema(p.name, _cleanDoc(p.doc), type));
      }
      _resolved[name] = InterfaceSchema(_cleanDoc(merged.doc), properties);
    }
    return _resolved;
  }
}
