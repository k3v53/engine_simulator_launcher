// ignore_for_file: prefer_const_constructors
import 'package:engine_simulator_data/engine_simulator_data.dart';
import 'package:test/test.dart';

const assetsPath = 'test/assets/engine_simulator_data';
void main() {
  group('EngineSimulatorData', () {
    final engineSimulatorData = TestEngineSimulatorData(assetsPath);
    test('can be instantiated', () {
      expect(engineSimulatorData, isNotNull);
    });
    final engines = engineSimulatorData.getEngines();
    test('can return engines', () {
      expect(engines, isNotEmpty);
    });
    for (final engine in engines) {
      test('engine ${engine.filePath} are valid for basic reads', () async {
        expect(await engine.name, isNotEmpty);
        expect(await engine.publicEngineNodeName, isNotEmpty);
      });
    }
  });
}

class TestEngineSimulatorData extends EngineSimulatorData {
  TestEngineSimulatorData(String path) : super(path: path);
}
