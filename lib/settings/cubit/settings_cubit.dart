import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:settings_repository/settings_repository.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit({required this.settingsRepository})
      : super(
          const SettingsState.initial(),
        ) {
    settingsRepository.engineSimulatorPath.forEach(
      (newPath) => emit(
        state.copyWith(engineSimulatorPath: newPath),
      ),
    );
  }

  final SettingsRepository settingsRepository;
  String? get engineSimulatorPath => state.engineSimulatorPath;
  set engineSimulatorPath(String? newPath) {
    settingsRepository.setEngineSimulatorPath(newPath);
    emit(state.copyWith(engineSimulatorPath: newPath));
  }

  Future<void> pickEngineSimulatorPath() async {
    final result = await FilePicker.platform.getDirectoryPath();
    if (result == null) return;

    engineSimulatorPath = result;
  }
}
