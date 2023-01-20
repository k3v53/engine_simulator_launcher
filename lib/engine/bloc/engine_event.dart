part of 'engine_bloc.dart';

@freezed
class EngineEvent with _$EngineEvent {
  const factory EngineEvent.started() = _Started;
  const factory EngineEvent.loadEngines() = _LoadEngines;
  const factory EngineEvent.setEngine(Engine engine) = _SetEngine;
}
