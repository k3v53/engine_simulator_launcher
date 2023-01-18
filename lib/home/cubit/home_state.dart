part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    Process? engineSimulatorProcess,
    String? engineSimulatorPath,
  }) = _Initial;
}
