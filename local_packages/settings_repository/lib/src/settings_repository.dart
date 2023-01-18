import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template settings_repository}
/// A repository that handles the Engine Simulator Launcher settings.
/// {@endtemplate}
class SettingsRepository {
  /// {@macro settings_repository}
  SettingsRepository({required this.prefs}) {
    _engineSimulatorPathController.add(
      prefs.getString('engine_simulator_path'),
    );
  }

  /// The SharedPreferences of this repository
  final SharedPreferences prefs;
  final _engineSimulatorPathController = BehaviorSubject<String?>();

  /// Stream of the path of Engine Simulator folder
  Stream<String?> get engineSimulatorPath {
    return _engineSimulatorPathController.asBroadcastStream();
  }

  /// Sets the new path of the engine simulator folder
  Future<bool> setEngineSimulatorPath(String? newPath) {
    _engineSimulatorPathController.add(newPath);
    return newPath != null && newPath.isNotEmpty
        ? prefs.setString('engine_simulator_path', newPath)
        : prefs.remove('engine_simulator_path');
  }
}
