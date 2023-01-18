import 'package:engine_simulator_launcher/app/app.dart';
import 'package:engine_simulator_launcher/bootstrap.dart';
import 'package:settings_repository/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final settingsRepository = SettingsRepository(prefs: sharedPreferences);
  await bootstrap(() => App(settingsRepository: settingsRepository));
  
}
