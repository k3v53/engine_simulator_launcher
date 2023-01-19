// ignore_for_file: prefer_const_constructors
import 'dart:developer' show log;
import 'dart:io';

import 'package:engine_simulator_data/engine_simulator_data.dart';
import 'package:engine_simulator_data/src/main_launcher.dart';
import 'package:test/test.dart';

import '../assets/assets.dart';

void main() {
  group('Main Launcher', () {
    // Copy the test file and use the tmp copy instead of the original
    File(testLauncherFilePath).createSync(recursive: true);
    final launcherFile =
        File('test/assets/main.mr').copySync(testLauncherFilePath);

    final launcher = Mainlauncher(launcherFile);
    test('can be instantiated', () => expect(launcher, isNotNull));
    test(
      'can read contents',
      () async => expect(await launcher.contents, isNotEmpty),
    );
    test(
      'can write contents to the file',
      () async {
        await launcher.setSettings(
          engine: testEngines[0],
          themeLocation: 'test/assets/theme/default.mr',
        );
        expect(await launcher.contents, await launcherFile.readAsString());
        expect(
          (await launcher.contents)
              .contains(testEngines[0].publicEngineNodeName ?? ''),
          isTrue,
        );
      },
    );
  });
}
