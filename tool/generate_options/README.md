# Typed options generator

Generates the `HC*Options` classes in `lib/src/options/` from Highcharts'
own TypeScript definitions, so the typed API stays a faithful mirror of
Highcharts' real option tree instead of a hand-maintained subset.

## Why generate instead of hand-write

Highcharts' options schema is enormous — as of Highcharts 13, the `Options`
interface alone pulls in ~4,900 reachable interfaces once every series type
(line, pie, boxplot, treemap, gantt, technical indicators, …) is counted.
Hand-writing and keeping that in sync with each Highcharts release isn't
practical; parsing the real `.d.ts` files with the TypeScript compiler is.

## Running it

```sh
tool/generate_options/generate.sh
```

That's it — it always regenerates against whatever Highcharts currently
publishes as `latest`, so running it fresh picks up new releases
automatically. Pass a version to pin instead: `./generate.sh 12.1.0`.

Then, from the package root, verify before committing:

```sh
flutter analyze
flutter test
```

`generate.sh` chains the three steps below, syncs the result into
`lib/src/options/` (replacing whatever was there, so options Highcharts
removed disappear too), and cleans up its own intermediate files
(`.dts_cache/`, `.schema.json`, `node_modules/` — all gitignored).

## How it works

1. **`fetch_dts.sh`** downloads `highcharts.d.ts` plus every per-series
   module it references (`options/line.d.ts`, `options/pie.d.ts`, …) —
   the series modules use `declare module "../highcharts" { ... }` to
   *augment* shared interfaces rather than exporting their own, so all of
   them need to be parsed together for TypeScript's declaration merging to
   produce the complete, real option tree. It resolves `latest` (or
   whatever version you pass) to a concrete version number up front via
   jsdelivr's API, so the run is reproducible even though "latest" isn't.
2. **`extract.js`** loads all of those files into a real TypeScript
   `Program` (via the compiler API, not regex/text parsing) and walks the
   type graph reachable from the root `Options` interface, emitting a
   JSON schema: one entry per interface with its properties, each
   property's resolved type, and doc comments.
   - Function-typed properties (formatters/callbacks) are skipped — they
     can't be represented in a JSON payload sent from Dart to the chart's
     JS runtime.
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
3. **`generate_dart.js`** consumes that JSON and emits one `HC<Name>`
   class per interface — all-nullable named-constructor fields plus a
   `toJson()` that only emits fields actually set — one file per class,
   named `hc_<snake_case_name>.dart` (e.g. `HCSeriesLineOptions` →
   `hc_series_line_options.dart`), all `part of` one `library;` declared in
   `hc_options.dart` (so the thousands of mutually-referencing classes
   don't need a hand-maintained import graph). Every class implements
   `HCOption` (`hc_option_base.dart`, hand-written, not generated), which
   lets the `hcJsonValue()` helper serialize a typed option correctly even
   when it's sitting in a `dynamic`-typed slot.
   - The root `Options` interface would itself snake_case to
     `hc_options.dart`, colliding with the library file — the generator
     reserves that name (and `hc_option_base.dart`) up front so a
     collision falls back to a suffixed name instead of silently
     clobbering the library file (this happened once; if regenerating
     ever reports `HCOptions` as undefined or a "must have a part-of
     directive" error, this guard is what to check first).

## Typescript version note

`npm install typescript` may resolve to TypeScript 7 (the native/Go
rewrite), whose Node API doesn't expose `ts.createProgram` or the rest of
the classic compiler API `extract.js` uses. `package.json` pins
`typescript@5.6.3` specifically to avoid that; if regenerating starts
throwing `ts.createProgram is not a function`, check
`node_modules/typescript/package.json` picked up the pinned version.

## Bash version note

`fetch_dts.sh` downloads series modules in parallel batches using plain
`wait` rather than `wait -n` (bash 4.3+), since macOS's default
`/bin/bash` is still 3.2. If you have a newer bash and want rolling
(rather than batched) concurrency, it's a one-line change.
