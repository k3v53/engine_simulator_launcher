// ignore_for_file: prefer_const_constructors
import 'package:settings_repository/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';

void main() {
  group('SettingsRepository', () {
    test('can be instantiated', () async {
      expect(
        SettingsRepository(prefs: await SharedPreferences.getInstance()),
        isNotNull,
      );
    });
  });
}
