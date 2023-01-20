import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:settings_repository/settings_repository.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.settingsRepository, Process? engineSimulatorProcess})
      : super(
          HomeState.initial(engineSimulatorProcess: engineSimulatorProcess),
        ) {
    settingsRepository.engineSimulatorPath.forEach(
      (newPath) => emit(state.copyWith(engineSimulatorPath: newPath)),
    );
  }

  final SettingsRepository settingsRepository;

  Stream<String?> get engineSimulatorPath =>
      settingsRepository.engineSimulatorPath;
  Future<bool> setEngineSimulatorPath(String? newPath) =>
      settingsRepository.setEngineSimulatorPath(newPath);

  Future<void> startEngineSimulator({String? path}) async {
    // ignore: no_leading_underscores_for_local_identifiers
    final _path = path ?? state.engineSimulatorPath;
    final process = await Process.start(
      '$_path/bin/engine-sim-app.exe',
      [],
      workingDirectory: '$_path/bin',
    );
    emit(state.copyWith(engineSimulatorProcess: process));
    await process.exitCode.then(
      (value) => emit(
        state.copyWith(engineSimulatorProcess: null),
      ),
    );
  }

  Future<void> pickEngineSimulatorPathAndStart() async {
    final result = await FilePicker.platform.getDirectoryPath();
    if (result == null) return;
    await startEngineSimulator(path: result);
    await setEngineSimulatorPath(result);
  }

  void stopEngineSimulator() {
    state.engineSimulatorProcess!.kill();
    return emit(state.copyWith(engineSimulatorProcess: null));
  }

  Future<void> toggleEngineSimulator() async {
    if (state.engineSimulatorProcess == null) {
      return startEngineSimulator();
    } else {
      return stopEngineSimulator();
    }
  }
}
