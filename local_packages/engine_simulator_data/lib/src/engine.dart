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
  Future<String> get contents => file.readAsString();

  /// Return the name of this engine
  Future<String?> get name async {
    final contents = await file.readAsString();
    final match = _nameReg.firstMatch(contents);
    return match?.group(1);
  }

  /// Return the index of where the name is on the contents of this engine file
  Future<int?> get nameIndex async {
    final contents = await file.readAsString();
    return _nameReg.firstMatch(contents)?.start;
  }

  /// The file path of this engine file
  String get filePath => file.path;

  /// The public engine node name of this engine file
  Future<String?> get publicEngineNodeName async {
    final contents = await file.readAsString();
    final sliceBeforeEngineName = contents.substring(0, await nameIndex);
    final publicNodeIndex = sliceBeforeEngineName.lastIndexOf('public node');
    final sliceBeforePublicNode =
        sliceBeforeEngineName.substring(publicNodeIndex);
    final match = _publicEngineNodeNameReg.firstMatch(sliceBeforePublicNode);
    return match?.group(1);
  }
}
