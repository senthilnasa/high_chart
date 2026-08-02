/// Downloads the Highcharts TypeScript definitions (the main
/// `highcharts.d.ts` plus every per-series-module augmentation it
/// references) that `DtsParser` parses. Defaults to whatever Highcharts
/// version jsdelivr currently resolves "latest" to, so a plain run always
/// regenerates against the newest release; pass a version to pin instead.
library;

import 'dart:convert';
import 'dart:io';

/// The main file pulls in one `.d.ts` per series/indicator via bare
/// `import "./options/<name>";` statements; each augments shared
/// interfaces (`declare module "../highcharts"`) rather than exporting its
/// own types, so they all need to be fetched and parsed together.
final _submoduleImportPattern = RegExp(r'"\./options/([a-z0-9_-]+)"');

class FetchedDts {
  FetchedDts(this.version, this.mainSource, this.submoduleSources);

  final String version;
  final String mainSource;

  /// `options/<name>.d.ts` path (relative, matching the import) -> source.
  final Map<String, String> submoduleSources;
}

/// Fetches `highcharts.d.ts` and its submodules for [versionOrLatest]
/// (e.g. `"latest"` or `"12.1.0"`), resolving "latest" to a concrete
/// version via jsdelivr's API first so the run stays reproducible even
/// though "latest" itself isn't.
Future<FetchedDts> fetchHighchartsDts(String versionOrLatest) async {
  final client = HttpClient();
  try {
    stdout.writeln('Resolving highcharts@$versionOrLatest...');
    final resolvedVersion = await _resolveVersion(client, versionOrLatest);
    final baseUrl = 'https://cdn.jsdelivr.net/npm/highcharts@$resolvedVersion';

    stdout.writeln('Fetching highcharts@$resolvedVersion highcharts.d.ts...');
    final mainSource = await _fetchText(client, '$baseUrl/highcharts.d.ts');

    final submoduleNames = _submoduleImportPattern
        .allMatches(mainSource)
        .map((m) => m.group(1)!)
        .toSet()
        .toList()
      ..sort();

    stdout.writeln(
        'Fetching ${submoduleNames.length} series/indicator modules...');
    final submoduleSources = <String, String>{};
    // Batched concurrency, mirroring the old shell script's approach —
    // fetch a handful at a time rather than either fully serial or fully
    // parallel requests.
    const batchSize = 12;
    for (var i = 0; i < submoduleNames.length; i += batchSize) {
      final batch = submoduleNames.skip(i).take(batchSize);
      final results = await Future.wait(batch.map((name) async {
        final path = 'options/$name.d.ts';
        final source = await _fetchText(client, '$baseUrl/$path');
        return MapEntry(path, source);
      }));
      submoduleSources.addEntries(results);
    }

    stdout.writeln(
        'Done: ${submoduleSources.length + 1} files for highcharts@$resolvedVersion.');
    return FetchedDts(resolvedVersion, mainSource, submoduleSources);
  } finally {
    client.close();
  }
}

Future<String> _resolveVersion(
    HttpClient client, String versionOrLatest) async {
  final uri = Uri.parse(
    'https://data.jsdelivr.com/v1/packages/npm/highcharts/resolved'
    '?specifier=${Uri.encodeQueryComponent(versionOrLatest)}',
  );
  final body = await _fetchText(client, uri.toString());
  final json = jsonDecode(body) as Map<String, dynamic>;
  final version = json['version'] as String?;
  if (version == null) {
    throw StateError('Could not resolve highcharts@$versionOrLatest: $body');
  }
  return version;
}

Future<String> _fetchText(HttpClient client, String url) async {
  final request = await client.getUrl(Uri.parse(url));
  final response = await request.close();
  if (response.statusCode != 200) {
    throw StateError('GET $url failed: HTTP ${response.statusCode}');
  }
  return response.transform(utf8.decoder).join();
}
