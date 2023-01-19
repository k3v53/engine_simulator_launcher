import 'package:engine_simulator_launcher/app/app.dart';
import 'package:engine_simulator_launcher/home/view/home_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:settings_repository/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(
        App(
          settingsRepository:
              SettingsRepository(prefs: await SharedPreferences.getInstance()),
        ),
      );
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
