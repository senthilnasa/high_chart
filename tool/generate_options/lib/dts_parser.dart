/// Parses the token stream from `dts_lexer.dart` into raw interface and
/// type-alias declarations (`dts_types.dart`). Two passes happen here:
///
/// 1. A flat top-level scan that finds every `interface Name [extends ...]
///    { ... }` and `type Name = ...;` declaration wherever it appears —
///    including nested inside `declare module "../highcharts" { ... }`
///    blocks, which is how every per-series-type module (`options/line.d.ts`
///    etc.) augments the shared option interfaces. The scan doesn't need to
///    understand `declare module` at all: it just walks token-by-token
///    looking for `interface`/`type` keywords, so the module wrapper's own
///    braces are skipped like any other uninteresting tokens.
/// 2. Within each interface/type-alias, a small recursive-descent parser
///    for the type-expression grammar (unions, arrays, generics, function
///    types, object-literal/tuple types it doesn't model precisely).
///
/// Declaration merging (the same interface name declared in multiple
/// files) is handled by simply accumulating every declaration found under
/// that name — `DtsProgram.interfaces[name]` is a list, flattened later by
/// the resolver.
library;

import 'dts_lexer.dart';
import 'dts_types.dart';

class DtsProgram {
  final Map<String, List<RawInterface>> interfaces = {};
  final Map<String, RawTypeAlias> typeAliases = {};

  void addFile(String source) {
    final parser = _FileParser(tokenizeDts(source));
    parser.run(this);
  }
}

class _FileParser {
  _FileParser(this._tokens);

  final List<Token> _tokens;
  int _pos = 0;
  String? _pendingDoc;

  Token get _peek => _tokens[_pos];
  Token _peekAt(int offset) =>
      _tokens[(_pos + offset).clamp(0, _tokens.length - 1)];

  Token _advance() => _tokens[_pos++];

  bool _isIdent(Token t, String text) =>
      t.kind == TokenKind.identifier && t.text == text;

  String? _takeDoc() {
    final doc = _pendingDoc;
    _pendingDoc = null;
    return doc;
  }

  void run(DtsProgram program) {
    while (_peek.kind != TokenKind.eof) {
      final t = _peek;

      if (t.kind == TokenKind.comment) {
        if (t.isDocComment) _pendingDoc = t.text;
        _advance();
        continue;
      }

      if (_isIdent(t, 'interface')) {
        _parseInterface(program);
        continue;
      }

      // `type Name = ...;` — only treat `type` as a declaration keyword
      // when immediately followed by an identifier (its name), to avoid
      // misfiring on `type` used incidentally elsewhere (it isn't, in
      // practice, but this keeps the scan honest about what it's doing).
      if (_isIdent(t, 'type') && _peekAt(1).kind == TokenKind.identifier) {
        _parseTypeAlias(program);
        continue;
      }

      // `export` sits between a doc comment and the `interface`/`type`
      // keyword it documents (`/** ... */ export interface Foo {`) — pass
      // over it without clearing the pending doc, unlike every other
      // token here.
      if (_isIdent(t, 'export')) {
        _advance();
        continue;
      }

      _pendingDoc = null;
      _advance();
    }
  }

  void _skipGenericParamsDeclaration() {
    // `<T, U extends Foo, ...>` on an interface/type-alias *declaration*
    // (not a reference) — the emitter has no use for generic parameters
    // themselves (only for the type *arguments* a reference supplies), so
    // just balance-skip them.
    if (!_peek.isPunctOf('<')) return;
    _skipBalancedFrom('<', '>');
  }

  void _skipBalancedFrom(String open, String close) {
    assert(_peek.isPunctOf(open));
    var depth = 0;
    do {
      if (_peek.isPunctOf(open)) {
        depth++;
      } else if (_peek.isPunctOf(close)) {
        depth--;
      } else if (_peek.kind == TokenKind.eof) {
        return;
      }
      _advance();
    } while (depth > 0);
  }

  void _parseInterface(DtsProgram program) {
    final doc = _takeDoc() ?? '';
    _advance(); // 'interface'
    if (_peek.kind != TokenKind.identifier) return;
    final name = _advance().text;
    _skipGenericParamsDeclaration();

    final extendsNames = <String>[];
    if (_isIdent(_peek, 'extends')) {
      _advance();
      extendsNames.add(_parseQualifiedName());
      _skipGenericArgsIfAny();
      while (_peek.isPunctOf(',')) {
        _advance();
        extendsNames.add(_parseQualifiedName());
        _skipGenericArgsIfAny();
      }
    }

    if (!_peek.isPunctOf('{')) return;
    final properties = _parseInterfaceBody();
    program.interfaces
        .putIfAbsent(name, () => [])
        .add(RawInterface(doc, extendsNames, properties));
  }

  void _skipGenericArgsIfAny() {
    if (_peek.isPunctOf('<')) _skipBalancedFrom('<', '>');
  }

  String _parseQualifiedName() {
    var name = _advance().text;
    while (_peek.isPunctOf('.') && _peekAt(1).kind == TokenKind.identifier) {
      _advance();
      name = _advance().text; // keep only the last segment
    }
    return name;
  }

  List<RawProperty> _parseInterfaceBody() {
    _advance(); // '{'
    final properties = <RawProperty>[];
    while (!_peek.isPunctOf('}') && _peek.kind != TokenKind.eof) {
      final t = _peek;

      if (t.kind == TokenKind.comment) {
        if (t.isDocComment) _pendingDoc = t.text;
        _advance();
        continue;
      }

      // Index signature (`[key: string]: T;`) — not representable as a
      // named Dart field; skip the member entirely without emitting a
      // property (the same outcome the TypeScript-checker-based generator
      // had: an index-signature-only interface just generates as empty).
      if (t.isPunctOf('[')) {
        _pendingDoc = null;
        _skipBalancedFrom('[', ']');
        if (_peek.isPunctOf(':')) {
          _advance();
          _parseType();
        }
        if (_peek.isPunctOf(';')) _advance();
        continue;
      }

      // Property or method name (numeric names are rare but real — e.g.
      // `GradientColorStopObject`'s `0: number; 1: ColorString;` tuple-
      // style keys).
      String name;
      if (t.kind == TokenKind.identifier ||
          t.kind == TokenKind.string ||
          t.kind == TokenKind.number) {
        name = _advance().text;
      } else {
        // Something we don't recognize as a member start; skip forward
        // defensively rather than looping forever.
        _pendingDoc = null;
        _advance();
        continue;
      }

      final doc = _takeDoc() ?? '';

      // Generic method (`foo<T>(...): R;`) or plain method (`foo(...): R;`)
      // — skip; call signatures can't be represented in a JSON payload.
      if (_peek.isPunctOf('<') || _peek.isPunctOf('(')) {
        if (_peek.isPunctOf('<')) _skipBalancedFrom('<', '>');
        if (_peek.isPunctOf('(')) _skipBalancedFrom('(', ')');
        if (_peek.isPunctOf(':')) {
          _advance();
          _parseType();
        }
        if (_peek.isPunctOf(';')) _advance();
        continue;
      }

      var optional = false;
      if (_peek.isPunctOf('?')) {
        optional = true;
        _advance();
      }
      if (!_peek.isPunctOf(':')) {
        // Malformed/unexpected member shape; bail out of this member.
        if (_peek.isPunctOf(';')) _advance();
        continue;
      }
      _advance(); // ':'
      final type = _parseType();
      if (_peek.isPunctOf(';')) _advance();
      properties.add(RawProperty(name, optional, doc, type));
    }
    if (_peek.isPunctOf('}')) _advance();
    return properties;
  }

  void _parseTypeAlias(DtsProgram program) {
    _takeDoc();
    _advance(); // 'type'
    final name = _advance().text; // identifier, checked by caller
    _skipGenericParamsDeclaration();
    if (!_peek.isPunctOf('=')) return;
    _advance();
    final type = _parseType();
    if (_peek.isPunctOf(';')) _advance();
    program.typeAliases[name] = RawTypeAlias(type);
  }

  // ---- Type-expression grammar ----
  //
  //   Type       := Postfix (('|' | '&') Postfix)*
  //   Postfix    := Primary ('[' ']')*
  //   Primary    := '(' ... ')'                     parenthesized or function type
  //               | 'new' Primary                   construct signature -> function
  //               | 'typeof' Primary | 'keyof' Primary | 'readonly' Primary
  //               | StringLiteral | NumberLiteral | 'true' | 'false'
  //               | '{' ... '}'                     inline object-literal type -> unknown
  //               | '[' ... ']'                     tuple type -> unknown
  //               | QualifiedName ('<' Type (',' Type)* '>')?

  TypeExpr _parseType() {
    final first = _parsePostfix();
    if (_peek.isPunctOf('|')) {
      final members = [first];
      while (_peek.isPunctOf('|')) {
        _advance();
        members.add(_parsePostfix());
      }
      return UnionTypeExpr(members);
    }
    if (_peek.isPunctOf('&')) {
      // Intersections don't appear in Highcharts' declared option types in
      // practice; collapse to `any` like any other unmodeled construct
      // rather than pretending to merge members.
      while (_peek.isPunctOf('&')) {
        _advance();
        _parsePostfix();
      }
      return const UnknownTypeExpr();
    }
    return first;
  }

  TypeExpr _parsePostfix() {
    var t = _parsePrimary();
    while (_peek.isPunctOf('[')) {
      if (_peekAt(1).isPunctOf(']')) {
        _advance();
        _advance();
        t = ArrayTypeExpr(t);
      } else {
        _advance(); // '['
        final index = _parseType();
        if (_peek.isPunctOf(']')) _advance();
        t = IndexedAccessTypeExpr(t, index);
      }
    }
    return t;
  }

  /// Index (not offset) of the token matching the bracket opened at
  /// [openIndex], tracking all three bracket kinds so nested mixed groups
  /// (an object-literal type inside a paren list, etc.) balance correctly.
  int _matchingCloseIndex(int openIndex) {
    const opens = {'(', '{', '['};
    const closesFor = {'(': ')', '{': '}', '[': ']'};
    final stack = <String>[_tokens[openIndex].text];
    var i = openIndex + 1;
    while (i < _tokens.length) {
      final tok = _tokens[i];
      if (tok.kind == TokenKind.punct) {
        if (opens.contains(tok.text)) {
          stack.add(tok.text);
        } else if (tok.text == closesFor[stack.last]) {
          stack.removeLast();
          if (stack.isEmpty) return i;
        }
      } else if (tok.kind == TokenKind.eof) {
        return i;
      }
      i++;
    }
    return i;
  }

  TypeExpr _parsePrimary() {
    final t = _peek;

    if (t.isPunctOf('(')) {
      final closeIdx = _matchingCloseIndex(_pos);
      final afterClose = _peekAt(closeIdx - _pos + 1);
      if (afterClose.isPunctOf('=') &&
          _peekAt(closeIdx - _pos + 2).isPunctOf('>')) {
        // Function type: `(...) => ReturnType`. Skip params, skip `=>`,
        // parse-and-discard the return type (still need to consume it so
        // the caller's cursor ends up in the right place).
        _skipBalancedFrom('(', ')');
        _advance(); // '='
        _advance(); // '>'
        _parseType();
        return const FunctionTypeExpr();
      }
      // Parenthesized type.
      _advance(); // '('
      final inner = _parseType();
      if (_peek.isPunctOf(')')) _advance();
      return inner;
    }

    if (_isIdent(t, 'new')) {
      _advance();
      _parsePrimary(); // construct signature's `(...)`/return type
      return const FunctionTypeExpr();
    }

    if (_isIdent(t, 'keyof')) {
      _advance();
      return KeyofTypeExpr(_parsePostfix());
    }

    if (_isIdent(t, 'typeof') || _isIdent(t, 'readonly')) {
      _advance();
      _parsePostfix();
      return const UnknownTypeExpr();
    }

    if (t.kind == TokenKind.string) {
      _advance();
      return StringLiteralTypeExpr(t.text);
    }

    if (t.kind == TokenKind.number) {
      _advance();
      return OtherLiteralTypeExpr(t.text);
    }

    if (_isIdent(t, 'true') || _isIdent(t, 'false')) {
      _advance();
      return OtherLiteralTypeExpr(t.text);
    }

    if (t.isPunctOf('{')) {
      _skipBalancedFrom('{', '}');
      return const UnknownTypeExpr();
    }

    if (t.isPunctOf('[')) {
      _skipBalancedFrom('[', ']');
      return const UnknownTypeExpr();
    }

    if (t.kind == TokenKind.identifier) {
      final name = _parseQualifiedName();
      if (_peek.isPunctOf('<')) {
        _advance();
        final args = <TypeExpr>[];
        if (!_peek.isPunctOf('>')) {
          args.add(_parseType());
          while (_peek.isPunctOf(',')) {
            _advance();
            args.add(_parseType());
          }
        }
        if (_peek.isPunctOf('>')) _advance();
        return NamedTypeExpr(name, args);
      }
      return NamedTypeExpr(name, const []);
    }

    // Unrecognized token in type position; consume one token defensively
    // (so callers always make forward progress) and treat as unknown.
    _advance();
    return const UnknownTypeExpr();
  }
}
