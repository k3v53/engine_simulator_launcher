import 'dart:io';

final _nameReg = RegExp('name: "(.*)"');
final _publicEngineNodeNameReg =
    RegExp(r'public node (\w+) {[\s\S]*engine engine\(');

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
    final contents = file.readAsStringSync();
    final match = _nameReg.firstMatch(contents);
    return match?.group(1);
  }

  /// The file path of this engine file
  String get filePath => file.path;

  /// The public engine node name of this engine file
  String? get publicEngineNodeName {
    final contents = file.readAsStringSync();
    final match = _publicEngineNodeNameReg.firstMatch(contents);
    return match?.group(1);
  }
}
