# Typed options generator

Generates the `HC*Options` classes in `lib/src/options/` from Highcharts'
own TypeScript definitions, so the typed API stays a faithful mirror of
Highcharts' real option tree instead of a hand-maintained subset. A
standalone Dart tool — it isn't a dependency of the `high_chart` package
itself, just a dev-time script that writes into it.

## Why generate instead of hand-write

Highcharts' options schema is enormous — as of Highcharts 13, the `Options`
interface alone pulls in ~4,900 reachable interfaces once every series type
(line, pie, boxplot, treemap, gantt, technical indicators, …) is counted.
Hand-writing and keeping that in sync with each Highcharts release isn't
practical; parsing the real `.d.ts` files is.

## Running it

```sh
cd tool/generate_options
dart pub get      # once
dart run bin/generate.dart            # latest
dart run bin/generate.dart 12.1.0     # pinned version
```

That's it — it always regenerates against whatever Highcharts currently
publishes as `latest`, so running it fresh picks up new releases
automatically. Pass a version to pin instead.

Then, from the package root, verify before committing:

```sh
flutter analyze
flutter test
```

`bin/generate.dart` fetches, parses, resolves, and emits in one run, syncs
the result into `lib/src/options/` (replacing whatever was there, so
options Highcharts removed disappear too), and formats the output with
`dart format`.

## How it works

Unlike the original version of this tool (which shelled out to Node and
the real TypeScript Compiler API for semantic type resolution), this is a
self-contained Dart implementation: a real tokenizer and recursive-descent
parser for the subset of TypeScript declaration syntax Highcharts' `.d.ts`
files use, plus a resolver that reimplements the specific pieces of
TypeScript's type-checking behavior this schema actually depends on
(declaration merging, `extends` flattening, alias chasing, union
collapsing). It was built and tuned against the old Node/TypeScript
implementation's output as a correctness oracle — see "Divergences from
the old generator" below for the (small, enumerated) set of places the two
disagree.

1. **`lib/fetch_dts.dart`** downloads `highcharts.d.ts` plus every
   per-series module it references (`options/line.d.ts`, `options/pie.d.ts`,
   …) — the series modules use `declare module "../highcharts" { ... }` to
   *augment* shared interfaces rather than exporting their own, so all of
   them need to be parsed together for declaration merging to produce the
   complete, real option tree. It resolves `latest` (or whatever version
   you pass) to a concrete version number up front via jsdelivr's API, so
   the run is reproducible even though "latest" isn't.
2. **`lib/dts_lexer.dart`** tokenizes each file (identifiers, string/number
   literals, comments — flagging `/**` JSDoc blocks specifically —
   punctuation), and **`lib/dts_parser.dart`** walks that token stream
   looking for `interface Name [extends ...] { ... }` and
   `type Name = ...;` declarations wherever they occur (including nested
   inside `declare module` blocks, which it doesn't need to specifically
   understand — it just finds `interface`/`type` keywords regardless of
   nesting). Each interface body is parsed member-by-member; each member's
   type text is parsed by a small recursive-descent grammar (unions,
   arrays, generics, function types, indexed-access types, tuples/inline
   object types it doesn't model precisely).
3. **`lib/dts_resolver.dart`** does the semantic work: merges same-named
   interface declarations from different files, flattens `extends` chains
   (subtype members override base members of the same name), chases
   `type` aliases, and walks the type graph reachable from the root
   `Options` interface — breadth-first, same as the old generator —
   producing one entry per interface with its properties' resolved types.
   - Callback/formatter properties (anything that's — or unions in — a
     real function type) are dropped; they can't be represented in a JSON
     payload sent from Dart to the chart's JS runtime.
   - Non-literal unions with more than one meaningful member (Highcharts
     has many, e.g. `ColorString | GradientColor`, or `series`'s ~100-way
     series-type union) can't be modeled as a single Dart type, so the
     *property* becomes `dynamic` — but every interface reachable through
     that union is still walked and generated, so e.g. `HCSeriesLineOptions`
     and `HCSeriesPieOptions` still exist and remain fully typed; they're
     just assignable into the `dynamic` slot rather than a narrower one.
   - String-literal unions (e.g. `zoomType: 'x' | 'y' | 'xy' | 'xyz'`)
     become `String`, since Dart has no first-class string-literal-union
     type; the allowed values live in the property's doc comment.
4. **`lib/dart_emitter.dart`** consumes the resolved schema and emits one
   `HC<Name>` class per interface — all-nullable named-constructor fields
   plus a `toJson()` that only emits fields actually set — grouped into
   one file per Highcharts option **module**, rather than one file per
   class: a module is the interface name's leading word (`PlotLineOptions`
   and `PlotPieOptions` both land in `hc_plot_*.dart`; `XAxisOptions` and
   `YAxisOptions` are merged into `hc_axis.dart`, since they're one option
   group split three ways syntactically, not conceptually). Modules with
   fewer than 3 interfaces are folded into a shared `hc_misc.dart` instead
   of each getting their own near-empty file; modules with more than 100
   are split into evenly-sized, numbered files (`hc_plot_1.dart`,
   `hc_plot_2.dart`, …) instead of one huge one — `Plot` (one sub-tree per
   series type) and `Navigation` (which nests the *entire* annotations
   config, itself duplicated once per annotation type) are each ~2,000
   interfaces on their own. All files are `part of` one `library;` declared
   in `hc_options.dart` (so the thousands of mutually-referencing classes
   don't need a hand-maintained import graph). Every class implements
   `HCOption` (`hc_option_base.dart`, hand-written, not generated), which
   lets the `hcJsonValue()` helper serialize a typed option correctly even
   when it's sitting in a `dynamic`-typed slot.
   - The root `Options` interface's module would itself snake_case to
     `hc_options.dart`, colliding with the library file — the generator
     reserves that name (and `hc_option_base.dart`) up front so a
     collision falls back to a suffixed name instead of silently
     clobbering the library file (this happened once; if regenerating
     ever reports `HCOptions` as undefined or a "must have a part-of
     directive" error, this guard is what to check first).

## Divergences from the old generator

Validated by diffing this tool's resolved schema against the old
TypeScript-Compiler-API generator's output across all ~4,900 reachable
interfaces. Only one intentional behavioral difference survived that
process:

- **Plain `boolean`-typed properties are now typed `bool?`.** The old
  generator fell back to `dynamic` for *every* boolean property in the
  whole schema (thousands of them) — a latent bug, not a deliberate
  choice: TypeScript internally represents the `boolean` type as a union
  of the `true`/`false` literal types, which tripped the old generator's
  union-handling before it ever reached its `boolean` check. This
  implementation parses the `boolean` keyword directly off the `.d.ts`
  syntax, so it isn't affected — proper `bool?` fields are a strict
  improvement, so the fix was kept rather than reproduced.

A few narrower, lower-stakes approximations (documented in code, not
re-litigated here since they didn't produce any actual output difference
against Highcharts 13's real schema): indexed-access types (`X[keyof X]`)
are only resolved precisely for the one idiom Highcharts actually uses;
`Record<K, V>` only maps to a Dart `Map` when `K` is literally `string`
(matching how TypeScript itself only produces an index signature for that
case, not for a specific literal-key union); doc comments are trimmed to
their first paragraph via a simpler line-based heuristic instead of
TypeScript's own doc-comment renderer.
