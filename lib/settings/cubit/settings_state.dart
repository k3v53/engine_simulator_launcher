part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({String? engineSimulatorPath}) = _Initial;
}
