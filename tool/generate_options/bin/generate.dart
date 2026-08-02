/// Regenerates lib/src/options/ from Highcharts' TypeScript definitions.
///
///   dart run bin/generate.dart            # latest
///   dart run bin/generate.dart 12.1.0     # pinned version
///
/// Then, from the package root: flutter analyze && flutter test
library;

import 'dart:io';

import 'package:generate_options/dart_emitter.dart';
import 'package:generate_options/dts_parser.dart';
import 'package:generate_options/dts_resolver.dart';
import 'package:generate_options/fetch_dts.dart';
import 'package:path/path.dart' as p;

Future<void> main(List<String> args) async {
  final versionArg = args.isNotEmpty ? args.first : 'latest';

  final scriptDir = p.dirname(p.dirname(Platform.script.toFilePath()));
  final packageRoot = p.normalize(p.join(scriptDir, '..', '..'));
  final optionsDir = p.join(packageRoot, 'lib', 'src', 'options');
  final baseFile = p.join(scriptDir, 'hc_option_base.dart');

  stdout.writeln('==> Fetching Highcharts TypeScript definitions...');
  final fetched = await fetchHighchartsDts(versionArg);

  stdout.writeln('==> Parsing declarations...');
  final program = DtsProgram()..addFile(fetched.mainSource);
  for (final source in fetched.submoduleSources.values) {
    program.addFile(source);
  }

  stdout.writeln('==> Resolving option schema...');
  final schema = SchemaResolver(program).resolve();
  stdout.writeln('    Reachable interfaces: ${schema.length}');

  stdout.writeln('==> Generating Dart classes...');
  final tmpOut = Directory.systemTemp.createTempSync('hc_options_out_');
  try {
    final classCount = writeDartLibrary(schema, tmpOut.path);
    File(baseFile).copySync(p.join(tmpOut.path, 'hc_option_base.dart'));

    stdout.writeln(
        '==> Syncing into ${p.relative(optionsDir, from: packageRoot)}...');
    final outDir = Directory(optionsDir);
    if (outDir.existsSync()) outDir.deleteSync(recursive: true);
    outDir.createSync(recursive: true);
    for (final entity in tmpOut.listSync()) {
      if (entity is File) {
        entity.copySync(p.join(optionsDir, p.basename(entity.path)));
      }
    }

    stdout.writeln('==> Formatting generated output...');
    // generate_dart.js's Dart equivalent emits raw joined strings, not
    // canonically-formatted Dart — `dart format` disagreeing costs real
    // pub.dev/pana score points (this has happened before), so format the
    // output as part of generating it rather than relying on remembering
    // to do it by hand.
    final formatResult = await Process.run(
      'dart',
      ['format', optionsDir],
      workingDirectory: packageRoot,
    );
    if (formatResult.exitCode != 0) {
      stderr.writeln(formatResult.stdout);
      stderr.writeln(formatResult.stderr);
      throw StateError(
          'dart format failed with exit code ${formatResult.exitCode}');
    }

    stdout.writeln('');
    stdout.writeln(
        'Done — generated $classCount typed options for Highcharts ${fetched.version}.');
    stdout.writeln('Now verify from $packageRoot:');
    stdout.writeln('  flutter analyze && flutter test');
  } finally {
    tmpOut.deleteSync(recursive: true);
  }
}
