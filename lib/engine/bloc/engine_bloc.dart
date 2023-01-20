import 'package:bloc/bloc.dart';
import 'package:engine_simulator_data/engine_simulator_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'engine_bloc.freezed.dart';
part 'engine_event.dart';
part 'engine_state.dart';

class EngineBloc extends Bloc<EngineEvent, EngineState> {
  EngineBloc({required this.engineSimulatorData}) : super(const _Initial()) {
    on<EngineEvent>(
      (event, emit) => event.map(
        started: (e) => null,
        loadEngines: (e) =>
            emit(_Loaded(engines: engineSimulatorData.getEngines())),
        setEngine: (e) =>
            engineSimulatorData.mainLauncher.setSettings(engine: e.engine),
      ),
    );
    // on<LoadEngines>(
    //   (event, emit) {
    //     emit(_Loaded(engines: engineSimulatorData.getEngines()));
    //   },
    // );
    add(const EngineEvent.loadEngines());
  }
  EngineSimulatorData engineSimulatorData;
}
