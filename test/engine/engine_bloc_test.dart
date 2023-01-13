// ignore_for_file: missing_whitespace_between_adjacent_strings

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Engine', () {
    test('initial state is 0', () {
      final test = _set_main_mr_file(
        engine: 'abc()',
        engineLocation: 'engines/epic/epic.mr',
        themeLocation: 'themes/theme.mr',
      );
      print(test);
    });
  });
}

// ignore: non_constant_identifier_names
String _set_main_mr_file({
  required String engine,
  required String engineLocation,
  required String themeLocation,
}) {
  return 'import "engine_sim.mr"\n'
      'import "$themeLocation"\n'
      'import "$engineLocation"\n'
      '\n'
      'use_default_theme()\n'
      'main()\n'
      'set_engine($engine)\n';
}
