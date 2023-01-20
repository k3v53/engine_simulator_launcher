// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'engine_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EngineEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadEngines,
    required TResult Function(Engine engine) setEngine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadEngines,
    TResult? Function(Engine engine)? setEngine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadEngines,
    TResult Function(Engine engine)? setEngine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadEngines value) loadEngines,
    required TResult Function(_SetEngine value) setEngine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadEngines value)? loadEngines,
    TResult? Function(_SetEngine value)? setEngine,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadEngines value)? loadEngines,
    TResult Function(_SetEngine value)? setEngine,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineEventCopyWith<$Res> {
  factory $EngineEventCopyWith(
          EngineEvent value, $Res Function(EngineEvent) then) =
      _$EngineEventCopyWithImpl<$Res, EngineEvent>;
}

/// @nodoc
class _$EngineEventCopyWithImpl<$Res, $Val extends EngineEvent>
    implements $EngineEventCopyWith<$Res> {
  _$EngineEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$EngineEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'EngineEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadEngines,
    required TResult Function(Engine engine) setEngine,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadEngines,
    TResult? Function(Engine engine)? setEngine,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadEngines,
    TResult Function(Engine engine)? setEngine,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadEngines value) loadEngines,
    required TResult Function(_SetEngine value) setEngine,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadEngines value)? loadEngines,
    TResult? Function(_SetEngine value)? setEngine,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadEngines value)? loadEngines,
    TResult Function(_SetEngine value)? setEngine,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EngineEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LoadEnginesCopyWith<$Res> {
  factory _$$_LoadEnginesCopyWith(
          _$_LoadEngines value, $Res Function(_$_LoadEngines) then) =
      __$$_LoadEnginesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadEnginesCopyWithImpl<$Res>
    extends _$EngineEventCopyWithImpl<$Res, _$_LoadEngines>
    implements _$$_LoadEnginesCopyWith<$Res> {
  __$$_LoadEnginesCopyWithImpl(
      _$_LoadEngines _value, $Res Function(_$_LoadEngines) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadEngines implements _LoadEngines {
  const _$_LoadEngines();

  @override
  String toString() {
    return 'EngineEvent.loadEngines()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadEngines);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadEngines,
    required TResult Function(Engine engine) setEngine,
  }) {
    return loadEngines();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadEngines,
    TResult? Function(Engine engine)? setEngine,
  }) {
    return loadEngines?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadEngines,
    TResult Function(Engine engine)? setEngine,
    required TResult orElse(),
  }) {
    if (loadEngines != null) {
      return loadEngines();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadEngines value) loadEngines,
    required TResult Function(_SetEngine value) setEngine,
  }) {
    return loadEngines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadEngines value)? loadEngines,
    TResult? Function(_SetEngine value)? setEngine,
  }) {
    return loadEngines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadEngines value)? loadEngines,
    TResult Function(_SetEngine value)? setEngine,
    required TResult orElse(),
  }) {
    if (loadEngines != null) {
      return loadEngines(this);
    }
    return orElse();
  }
}

abstract class _LoadEngines implements EngineEvent {
  const factory _LoadEngines() = _$_LoadEngines;
}

/// @nodoc
abstract class _$$_SetEngineCopyWith<$Res> {
  factory _$$_SetEngineCopyWith(
          _$_SetEngine value, $Res Function(_$_SetEngine) then) =
      __$$_SetEngineCopyWithImpl<$Res>;
  @useResult
  $Res call({Engine engine});
}

/// @nodoc
class __$$_SetEngineCopyWithImpl<$Res>
    extends _$EngineEventCopyWithImpl<$Res, _$_SetEngine>
    implements _$$_SetEngineCopyWith<$Res> {
  __$$_SetEngineCopyWithImpl(
      _$_SetEngine _value, $Res Function(_$_SetEngine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engine = null,
  }) {
    return _then(_$_SetEngine(
      null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Engine,
    ));
  }
}

/// @nodoc

class _$_SetEngine implements _SetEngine {
  const _$_SetEngine(this.engine);

  @override
  final Engine engine;

  @override
  String toString() {
    return 'EngineEvent.setEngine(engine: $engine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetEngine &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode => Object.hash(runtimeType, engine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetEngineCopyWith<_$_SetEngine> get copyWith =>
      __$$_SetEngineCopyWithImpl<_$_SetEngine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadEngines,
    required TResult Function(Engine engine) setEngine,
  }) {
    return setEngine(engine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadEngines,
    TResult? Function(Engine engine)? setEngine,
  }) {
    return setEngine?.call(engine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadEngines,
    TResult Function(Engine engine)? setEngine,
    required TResult orElse(),
  }) {
    if (setEngine != null) {
      return setEngine(engine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadEngines value) loadEngines,
    required TResult Function(_SetEngine value) setEngine,
  }) {
    return setEngine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadEngines value)? loadEngines,
    TResult? Function(_SetEngine value)? setEngine,
  }) {
    return setEngine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadEngines value)? loadEngines,
    TResult Function(_SetEngine value)? setEngine,
    required TResult orElse(),
  }) {
    if (setEngine != null) {
      return setEngine(this);
    }
    return orElse();
  }
}

abstract class _SetEngine implements EngineEvent {
  const factory _SetEngine(final Engine engine) = _$_SetEngine;

  Engine get engine;
  @JsonKey(ignore: true)
  _$$_SetEngineCopyWith<_$_SetEngine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EngineState {
  List<Engine> get engines => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Engine> engines) initial,
    required TResult Function(List<Engine> engines) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Engine> engines)? initial,
    TResult? Function(List<Engine> engines)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Engine> engines)? initial,
    TResult Function(List<Engine> engines)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EngineStateCopyWith<EngineState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EngineStateCopyWith<$Res> {
  factory $EngineStateCopyWith(
          EngineState value, $Res Function(EngineState) then) =
      _$EngineStateCopyWithImpl<$Res, EngineState>;
  @useResult
  $Res call({List<Engine> engines});
}

/// @nodoc
class _$EngineStateCopyWithImpl<$Res, $Val extends EngineState>
    implements $EngineStateCopyWith<$Res> {
  _$EngineStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engines = null,
  }) {
    return _then(_value.copyWith(
      engines: null == engines
          ? _value.engines
          : engines // ignore: cast_nullable_to_non_nullable
              as List<Engine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $EngineStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Engine> engines});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EngineStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engines = null,
  }) {
    return _then(_$_Initial(
      engines: null == engines
          ? _value._engines
          : engines // ignore: cast_nullable_to_non_nullable
              as List<Engine>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({final List<Engine> engines = const []})
      : _engines = engines;

  final List<Engine> _engines;
  @override
  @JsonKey()
  List<Engine> get engines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_engines);
  }

  @override
  String toString() {
    return 'EngineState.initial(engines: $engines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other._engines, _engines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_engines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Engine> engines) initial,
    required TResult Function(List<Engine> engines) loaded,
  }) {
    return initial(engines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Engine> engines)? initial,
    TResult? Function(List<Engine> engines)? loaded,
  }) {
    return initial?.call(engines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Engine> engines)? initial,
    TResult Function(List<Engine> engines)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(engines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EngineState {
  const factory _Initial({final List<Engine> engines}) = _$_Initial;

  @override
  List<Engine> get engines;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> implements $EngineStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Engine> engines});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$EngineStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engines = null,
  }) {
    return _then(_$_Loaded(
      engines: null == engines
          ? _value._engines
          : engines // ignore: cast_nullable_to_non_nullable
              as List<Engine>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<Engine> engines}) : _engines = engines;

  final List<Engine> _engines;
  @override
  List<Engine> get engines {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_engines);
  }

  @override
  String toString() {
    return 'EngineState.loaded(engines: $engines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._engines, _engines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_engines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Engine> engines) initial,
    required TResult Function(List<Engine> engines) loaded,
  }) {
    return loaded(engines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Engine> engines)? initial,
    TResult? Function(List<Engine> engines)? loaded,
  }) {
    return loaded?.call(engines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Engine> engines)? initial,
    TResult Function(List<Engine> engines)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(engines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements EngineState {
  const factory _Loaded({required final List<Engine> engines}) = _$_Loaded;

  @override
  List<Engine> get engines;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
