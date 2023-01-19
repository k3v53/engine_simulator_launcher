// ignore_for_file: prefer_const_constructors
import 'dart:developer' show log;
import 'dart:io';

import 'package:engine_simulator_data/engine_simulator_data.dart';
import 'package:test/test.dart';


void main() {
  for (final e in testEngines) {
    group('Engine ${e.expectedName} Read-Only', () {
      test('can be instantiated', () => expect(e, isNotNull));
      test(
        'returns file contents',
        () async => expect(await e.contents, isNotEmpty),
      );
      test(
        'returns engine name',
        () async => expect(await e.name, e.expectedName),
      );
      test(
        'returns engine name index',
        () async => expect(
          await e.nameIndex,
          (await e.contents).indexOf(
                (await e.name)!,
              ) -
              7,
        ),
      );
      test('returns file path', () => expect(e.filePath, e.expectedFilePath));
      test(
        'returns public engine node name',
        () async => expect(
          await e.publicEngineNodeName,
          e.expectedPublicEngineNodeName,
        ),
      );
    });
  }
}

// #region Test Engines
const engineDir = 'test/assets/engine';
final testEngines = [
  TestEngine(
    file: File('$engineDir/chev_truck_454.mr'),
    expectedName: 'Chev. 454 V8',
    expectedPublicEngineNodeName: 'chev_truck_454',
  ),
  TestEngine(
    file: File('$engineDir/M52B28.mr'),
    expectedName: 'BMW M52B28',
    expectedPublicEngineNodeName: 'M52B28',
  ),
  TestEngine(
    file: File('$engineDir/07_audi_i5.mr'),
    expectedName: 'Audi 2.3 inline 5',
    expectedPublicEngineNodeName: 'audi_i5_2_2L',
  ),
  TestEngine(
    file: File('$engineDir/05_honda_vtec.mr'),
    expectedName: 'Honda B18C5 [VTEC, I4]',
    expectedPublicEngineNodeName: 'honda_vtec_i4',
  ),
  TestEngine(
    file: File('$engineDir/kohler_ch750.mr'),
    expectedName: 'Kohler CH750',
    expectedPublicEngineNodeName: 'kohler_ch750',
  )
];

class TestEngine extends Engine {
  TestEngine({
    required File file,
    required this.expectedName,
    required this.expectedPublicEngineNodeName,
  }) : super(file);

  final String expectedName;
  final String expectedPublicEngineNodeName;

  // Getters
  String get expectedFilePath => file.path;
}

// #endregion
