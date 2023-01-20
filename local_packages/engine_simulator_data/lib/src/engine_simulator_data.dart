import 'dart:io';

import 'package:engine_simulator_data/engine_simulator_data.dart';

/// Exposes a simplified way to manipulate engine simulator data
class EngineSimulatorData {
  /// Exposes ways to modify the files in the [path] provided
  const EngineSimulatorData({required this.path});

  /// The path of the base folder
  final String path;

  /// The path of the assets folder
  String get assetsPath => '$path/assets';

  /// The path of the engines folder
  String get enginesPath => '$assetsPath/engines';

  ///The path of the themes folder
  String get themesPath => '$assetsPath/themes';

  /// Retrieves the engines of this assets folder
  List<Engine> getEngines() {
    final dir = Directory(enginesPath);
    final files = dir
        .listSync(recursive: true)
        .whereType<File>()
        .where((element) => element.path.split('.')[1] == 'mr');
    final engines = List<Engine>.generate(
      files.length,
      (index) {
        final file = files.elementAt(index);
        return Engine(file);
      },
      growable: false,
    );
    return engines;
  }

  /// The main launcher (main.mr) of this assets folder
  Mainlauncher get mainLauncher => Mainlauncher(File('$assetsPath/main.mr'));
}
