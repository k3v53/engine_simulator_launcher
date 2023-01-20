part of 'engine_bloc.dart';

@freezed
class EngineState with _$EngineState {
  const factory EngineState.initial({@Default([]) List<Engine> engines}) =
      _Initial;
  const factory EngineState.loaded({required List<Engine> engines}) = _Loaded;
}
