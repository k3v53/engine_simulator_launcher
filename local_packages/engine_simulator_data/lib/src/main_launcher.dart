import 'dart:io';

import 'package:engine_simulator_data/engine_simulator_data.dart';

/// Exposes a simple way to manipulate an main.mr file
class Mainlauncher {
  /// Exposes a simple way to manipulate an main.mr file
  Mainlauncher(this.file);

  /// The file object of this main.mr file
  final File file;

  /// The content of this main.mr file
  Future<String> get contents => file.readAsString();

  /// Generates a string with the desired settings to set into the main.mr file
  String buildMainMRFile({
    required Engine engine,
    required String? themeLocation,
  }) {
    return [
      'import "engine_sim.mr"',
      if (themeLocation != null) 'import "$themeLocation"',
      'import "${engine.filePath}"',
      '',
      if (themeLocation == null) 'use_default_theme()',
      'main()',
      'set_engine(${engine.publicEngineNodeName})'
    ].join('\n');
  }

  /// Writes the provided contents to this file
  Future<File> setFileContents(String contents) => file.writeAsString(contents);

  /// Generates and writes these settings into this main.mr file
  Future<File> setSettings({
    required Engine engine,
    required String? themeLocation,
  }) =>
      setFileContents(
        buildMainMRFile(
          engine: engine,
          themeLocation: themeLocation,
        ),
      );
}
