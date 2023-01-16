// ignore_for_file: prefer_const_constructors
import 'dart:developer' show log;
import 'dart:io';

import 'package:engine_simulator_data/engine_simulator_data.dart';
import 'package:test/test.dart';

void main() {
  group('Engine', () {
    final file = File('test/assets/engine/chev_truck_454.mr');
    final engine = Engine(file);

    test('can be instantiated', () {
      expect(engine, isNotNull);
    });
    test('returns file contents', () {
      final contents = engine.contents;
      expect(contents, isNotEmpty);
    });
    test('returns engine name', () {
      final name = engine.name;
      expect(name, 'Chev. 454 V8');
    });
    test('returns file path', () {
      expect(engine.filePath, file.path);
    });
  });
}
