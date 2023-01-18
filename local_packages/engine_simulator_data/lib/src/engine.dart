import 'dart:io';

/// Exposes a simple way to manipulate an engine.mr file
class Engine {
  /// Exposes a simple way to manipulate an engine.mr file
  Engine(this.file);

  /// The file of this engine
  File file;

  /// The contents of this engine file
  String get contents => file.readAsStringSync();

  /// Return the name of this engine
  String? get name {
    final lines = file.readAsStringSync();
    final reg = RegExp('name: "(.*)"');
    final match = reg.firstMatch(lines);
    if (match != null) return match.group(1);

    return null;
  }

  /// The file path of this engine file
  String get filePath => file.path;
}
