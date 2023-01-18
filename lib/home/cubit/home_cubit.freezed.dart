// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  Process? get engineSimulatorProcess => throw _privateConstructorUsedError;
  String? get engineSimulatorPath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Process? engineSimulatorProcess, String? engineSimulatorPath)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Process? engineSimulatorProcess, String? engineSimulatorPath)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Process? engineSimulatorProcess, String? engineSimulatorPath)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({Process? engineSimulatorProcess, String? engineSimulatorPath});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engineSimulatorProcess = freezed,
    Object? engineSimulatorPath = freezed,
  }) {
    return _then(_value.copyWith(
      engineSimulatorProcess: freezed == engineSimulatorProcess
          ? _value.engineSimulatorProcess
          : engineSimulatorProcess // ignore: cast_nullable_to_non_nullable
              as Process?,
      engineSimulatorPath: freezed == engineSimulatorPath
          ? _value.engineSimulatorPath
          : engineSimulatorPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Process? engineSimulatorProcess, String? engineSimulatorPath});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? engineSimulatorProcess = freezed,
    Object? engineSimulatorPath = freezed,
  }) {
    return _then(_$_Initial(
      engineSimulatorProcess: freezed == engineSimulatorProcess
          ? _value.engineSimulatorProcess
          : engineSimulatorProcess // ignore: cast_nullable_to_non_nullable
              as Process?,
      engineSimulatorPath: freezed == engineSimulatorPath
          ? _value.engineSimulatorPath
          : engineSimulatorPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.engineSimulatorProcess, this.engineSimulatorPath});

  @override
  final Process? engineSimulatorProcess;
  @override
  final String? engineSimulatorPath;

  @override
  String toString() {
    return 'HomeState.initial(engineSimulatorProcess: $engineSimulatorProcess, engineSimulatorPath: $engineSimulatorPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.engineSimulatorProcess, engineSimulatorProcess) ||
                other.engineSimulatorProcess == engineSimulatorProcess) &&
            (identical(other.engineSimulatorPath, engineSimulatorPath) ||
                other.engineSimulatorPath == engineSimulatorPath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, engineSimulatorProcess, engineSimulatorPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Process? engineSimulatorProcess, String? engineSimulatorPath)
        initial,
  }) {
    return initial(engineSimulatorProcess, engineSimulatorPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Process? engineSimulatorProcess, String? engineSimulatorPath)?
        initial,
  }) {
    return initial?.call(engineSimulatorProcess, engineSimulatorPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Process? engineSimulatorProcess, String? engineSimulatorPath)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(engineSimulatorProcess, engineSimulatorPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final Process? engineSimulatorProcess,
      final String? engineSimulatorPath}) = _$_Initial;

  @override
  Process? get engineSimulatorProcess;
  @override
  String? get engineSimulatorPath;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
