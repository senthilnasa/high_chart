/// A real (if narrow) tokenizer for the subset of TypeScript declaration
/// syntax Highcharts' `.d.ts` files use. Deliberately not regex-based over
/// whole-file text — `DtsParser` needs correctly nested brace/paren/angle
/// tracking (an object-literal type inside a union inside a generic inside
/// a property type is normal here), which only a real token stream gives
/// you reliably.
library;

enum TokenKind { identifier, string, number, comment, punct, eof }

class Token {
  Token(this.kind, this.text, {this.isDocComment = false});
  final TokenKind kind;
  final String text;
  final bool isDocComment;

  bool get isPunct => kind == TokenKind.punct;
  bool isPunctOf(String p) => kind == TokenKind.punct && text == p;
}

List<Token> tokenizeDts(String source) {
  final tokens = <Token>[];
  final len = source.length;
  var i = 0;

  bool isIdentStart(String c) => RegExp(r'[A-Za-z_$]').hasMatch(c);
  bool isIdentPart(String c) => RegExp(r'[A-Za-z0-9_$]').hasMatch(c);
  bool isDigit(String c) => c.codeUnitAt(0) >= 48 && c.codeUnitAt(0) <= 57;

  const singleCharPuncts = {
    '{',
    '}',
    '(',
    ')',
    '[',
    ']',
    '<',
    '>',
    ',',
    ';',
    ':',
    '?',
    '|',
    '&',
    '.',
    '=',
    '+',
    '-',
    '*',
  };

  while (i < len) {
    final c = source[i];

    // Whitespace.
    if (c == ' ' || c == '\t' || c == '\n' || c == '\r') {
      i++;
      continue;
    }

    // Comments.
    if (c == '/' && i + 1 < len && source[i + 1] == '/') {
      final start = i;
      while (i < len && source[i] != '\n') {
        i++;
      }
      tokens.add(Token(TokenKind.comment, source.substring(start, i)));
      continue;
    }
    if (c == '/' && i + 1 < len && source[i + 1] == '*') {
      final start = i;
      i += 2;
      while (i + 1 < len && !(source[i] == '*' && source[i + 1] == '/')) {
        i++;
      }
      i = (i + 2 <= len) ? i + 2 : len;
      final text = source.substring(start, i);
      // `/**` but not `/**!` (Highsoft's copyright banners use `/*!*`,
      // which — read starting from `/*` — begins `/*!`, not `/**`).
      final isDoc = text.startsWith('/**') && !text.startsWith('/**!');
      tokens.add(Token(TokenKind.comment, text, isDocComment: isDoc));
      continue;
    }

    // String literals.
    if (c == '"' || c == "'") {
      final quote = c;
      final start = i;
      i++;
      while (i < len && source[i] != quote) {
        if (source[i] == '\\') i++;
        i++;
      }
      i = (i < len) ? i + 1 : i;
      // Store without the surrounding quotes.
      final raw = source.substring(start + 1, (i > start) ? i - 1 : i);
      tokens.add(Token(TokenKind.string, raw));
      continue;
    }

    // Numbers (including a leading sign, which only ever appears in type
    // position as a numeric-literal type like `-1`).
    if (isDigit(c) || (c == '-' && i + 1 < len && isDigit(source[i + 1]))) {
      final start = i;
      if (c == '-') i++;
      while (i < len &&
          (isDigit(source[i]) ||
              source[i] == '.' ||
              source[i] == 'e' ||
              source[i] == 'E' ||
              source[i] == 'x' ||
              (source[i] == '-' &&
                  i > start &&
                  (source[i - 1] == 'e' || source[i - 1] == 'E')))) {
        i++;
      }
      tokens.add(Token(TokenKind.number, source.substring(start, i)));
      continue;
    }

    // Identifiers / keywords.
    if (isIdentStart(c)) {
      final start = i;
      i++;
      while (i < len && isIdentPart(source[i])) {
        i++;
      }
      tokens.add(Token(TokenKind.identifier, source.substring(start, i)));
      continue;
    }

    // Punctuation (single-char only — `=>`, `>>`, etc. are just two
    // adjacent tokens; the parser matches them by sequence instead of
    // requiring the lexer to special-case multi-char operators, which
    // keeps angle-bracket nesting for generics unambiguous).
    if (singleCharPuncts.contains(c)) {
      tokens.add(Token(TokenKind.punct, c));
      i++;
      continue;
    }

    // Anything else (rest operators, decorators, etc.) — not meaningful
    // to this grammar subset; skip the character.
    i++;
  }

  tokens.add(Token(TokenKind.eof, ''));
  return tokens;
}
