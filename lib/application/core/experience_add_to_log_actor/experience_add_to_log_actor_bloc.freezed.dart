// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_add_to_log_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceAddToLogActorEventTearOff {
  const _$ExperienceAddToLogActorEventTearOff();

  _Initialized initialized(
      UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount) {
    return _Initialized(
      experienceId,
      experiencesToDoIds,
      toDoAmount,
    );
  }

  _AddedExperienceToLog addedExperienceToLog(UniqueId experienceId) {
    return _AddedExperienceToLog(
      experienceId,
    );
  }

  _DismissedExperienceFromLog dismissedExperienceFromLog(UniqueId experienceId) {
    return _DismissedExperienceFromLog(
      experienceId,
    );
  }
}

/// @nodoc
const $ExperienceAddToLogActorEvent = _$ExperienceAddToLogActorEventTearOff();

/// @nodoc
mixin _$ExperienceAddToLogActorEvent {
  UniqueId get experienceId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)
        initialized,
    required TResult Function(UniqueId experienceId) addedExperienceToLog,
    required TResult Function(UniqueId experienceId) dismissedExperienceFromLog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)?
        initialized,
    TResult Function(UniqueId experienceId)? addedExperienceToLog,
    TResult Function(UniqueId experienceId)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceAddToLogActorEventCopyWith<ExperienceAddToLogActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory $ExperienceAddToLogActorEventCopyWith(
          ExperienceAddToLogActorEvent value, $Res Function(ExperienceAddToLogActorEvent) then) =
      _$ExperienceAddToLogActorEventCopyWithImpl<$Res>;
  $Res call({UniqueId experienceId});
}

/// @nodoc
class _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  _$ExperienceAddToLogActorEventCopyWithImpl(this._value, this._then);

  final ExperienceAddToLogActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceAddToLogActorEvent) _then;

  @override
  $Res call({
    Object? experienceId = freezed,
  }) {
    return _then(_value.copyWith(
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? experienceId = freezed,
    Object? experiencesToDoIds = freezed,
    Object? toDoAmount = freezed,
  }) {
    return _then(_Initialized(
      experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      experiencesToDoIds == freezed
          ? _value.experiencesToDoIds
          : experiencesToDoIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
      toDoAmount == freezed
          ? _value.toDoAmount
          : toDoAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceId, this.experiencesToDoIds, this.toDoAmount);

  @override
  final UniqueId experienceId;
  @override
  final Set<UniqueId> experiencesToDoIds;
  @override
  final int toDoAmount;

  @override
  String toString() {
    return 'ExperienceAddToLogActorEvent.initialized(experienceId: $experienceId, experiencesToDoIds: $experiencesToDoIds, toDoAmount: $toDoAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality().equals(other.experienceId, experienceId)) &&
            (identical(other.experiencesToDoIds, experiencesToDoIds) ||
                const DeepCollectionEquality()
                    .equals(other.experiencesToDoIds, experiencesToDoIds)) &&
            (identical(other.toDoAmount, toDoAmount) ||
                const DeepCollectionEquality().equals(other.toDoAmount, toDoAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(experiencesToDoIds) ^
      const DeepCollectionEquality().hash(toDoAmount);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)
        initialized,
    required TResult Function(UniqueId experienceId) addedExperienceToLog,
    required TResult Function(UniqueId experienceId) dismissedExperienceFromLog,
  }) {
    return initialized(experienceId, experiencesToDoIds, toDoAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)?
        initialized,
    TResult Function(UniqueId experienceId)? addedExperienceToLog,
    TResult Function(UniqueId experienceId)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experienceId, experiencesToDoIds, toDoAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceAddToLogActorEvent {
  const factory _Initialized(
      UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount) = _$_Initialized;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;

  Set<UniqueId> get experiencesToDoIds => throw _privateConstructorUsedError;

  int get toDoAmount => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddedExperienceToLogCopyWith<$Res>
    implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory _$AddedExperienceToLogCopyWith(
          _AddedExperienceToLog value, $Res Function(_AddedExperienceToLog) then) =
      __$AddedExperienceToLogCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId experienceId});
}

/// @nodoc
class __$AddedExperienceToLogCopyWithImpl<$Res>
    extends _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements _$AddedExperienceToLogCopyWith<$Res> {
  __$AddedExperienceToLogCopyWithImpl(
      _AddedExperienceToLog _value, $Res Function(_AddedExperienceToLog) _then)
      : super(_value, (v) => _then(v as _AddedExperienceToLog));

  @override
  _AddedExperienceToLog get _value => super._value as _AddedExperienceToLog;

  @override
  $Res call({
    Object? experienceId = freezed,
  }) {
    return _then(_AddedExperienceToLog(
      experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_AddedExperienceToLog implements _AddedExperienceToLog {
  const _$_AddedExperienceToLog(this.experienceId);

  @override
  final UniqueId experienceId;

  @override
  String toString() {
    return 'ExperienceAddToLogActorEvent.addedExperienceToLog(experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedExperienceToLog &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality().equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith =>
      __$AddedExperienceToLogCopyWithImpl<_AddedExperienceToLog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)
        initialized,
    required TResult Function(UniqueId experienceId) addedExperienceToLog,
    required TResult Function(UniqueId experienceId) dismissedExperienceFromLog,
  }) {
    return addedExperienceToLog(experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)?
        initialized,
    TResult Function(UniqueId experienceId)? addedExperienceToLog,
    TResult Function(UniqueId experienceId)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) {
    return addedExperienceToLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(this);
    }
    return orElse();
  }
}

abstract class _AddedExperienceToLog implements ExperienceAddToLogActorEvent {
  const factory _AddedExperienceToLog(UniqueId experienceId) = _$_AddedExperienceToLog;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissedExperienceFromLogCopyWith<$Res>
    implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory _$DismissedExperienceFromLogCopyWith(
          _DismissedExperienceFromLog value, $Res Function(_DismissedExperienceFromLog) then) =
      __$DismissedExperienceFromLogCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId experienceId});
}

/// @nodoc
class __$DismissedExperienceFromLogCopyWithImpl<$Res>
    extends _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements _$DismissedExperienceFromLogCopyWith<$Res> {
  __$DismissedExperienceFromLogCopyWithImpl(
      _DismissedExperienceFromLog _value, $Res Function(_DismissedExperienceFromLog) _then)
      : super(_value, (v) => _then(v as _DismissedExperienceFromLog));

  @override
  _DismissedExperienceFromLog get _value => super._value as _DismissedExperienceFromLog;

  @override
  $Res call({
    Object? experienceId = freezed,
  }) {
    return _then(_DismissedExperienceFromLog(
      experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_DismissedExperienceFromLog implements _DismissedExperienceFromLog {
  const _$_DismissedExperienceFromLog(this.experienceId);

  @override
  final UniqueId experienceId;

  @override
  String toString() {
    return 'ExperienceAddToLogActorEvent.dismissedExperienceFromLog(experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DismissedExperienceFromLog &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality().equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog> get copyWith =>
      __$DismissedExperienceFromLogCopyWithImpl<_DismissedExperienceFromLog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)
        initialized,
    required TResult Function(UniqueId experienceId) addedExperienceToLog,
    required TResult Function(UniqueId experienceId) dismissedExperienceFromLog,
  }) {
    return dismissedExperienceFromLog(experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesToDoIds, int toDoAmount)?
        initialized,
    TResult Function(UniqueId experienceId)? addedExperienceToLog,
    TResult Function(UniqueId experienceId)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) {
    return dismissedExperienceFromLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(this);
    }
    return orElse();
  }
}

abstract class _DismissedExperienceFromLog implements ExperienceAddToLogActorEvent {
  const factory _DismissedExperienceFromLog(UniqueId experienceId) = _$_DismissedExperienceFromLog;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceAddToLogActorStateTearOff {
  const _$ExperienceAddToLogActorStateTearOff();

  _ExperienceAddToLogActorState call(
      {required bool inLog,
      required int toDoAmount,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ExperienceAddToLogActorState(
      inLog: inLog,
      toDoAmount: toDoAmount,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ExperienceAddToLogActorState = _$ExperienceAddToLogActorStateTearOff();

/// @nodoc
mixin _$ExperienceAddToLogActorState {
  bool get inLog => throw _privateConstructorUsedError;

  int get toDoAmount => throw _privateConstructorUsedError;

  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceAddToLogActorStateCopyWith<ExperienceAddToLogActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceAddToLogActorStateCopyWith<$Res> {
  factory $ExperienceAddToLogActorStateCopyWith(
          ExperienceAddToLogActorState value, $Res Function(ExperienceAddToLogActorState) then) =
      _$ExperienceAddToLogActorStateCopyWithImpl<$Res>;

  $Res call({bool inLog, int toDoAmount, Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    implements $ExperienceAddToLogActorStateCopyWith<$Res> {
  _$ExperienceAddToLogActorStateCopyWithImpl(this._value, this._then);

  final ExperienceAddToLogActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceAddToLogActorState) _then;

  @override
  $Res call({
    Object? inLog = freezed,
    Object? toDoAmount = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      inLog: inLog == freezed
          ? _value.inLog
          : inLog // ignore: cast_nullable_to_non_nullable
              as bool,
      toDoAmount: toDoAmount == freezed
          ? _value.toDoAmount
          : toDoAmount // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ExperienceAddToLogActorStateCopyWith<$Res>
    implements $ExperienceAddToLogActorStateCopyWith<$Res> {
  factory _$ExperienceAddToLogActorStateCopyWith(
          _ExperienceAddToLogActorState value, $Res Function(_ExperienceAddToLogActorState) then) =
      __$ExperienceAddToLogActorStateCopyWithImpl<$Res>;

  @override
  $Res call({bool inLog, int toDoAmount, Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    implements _$ExperienceAddToLogActorStateCopyWith<$Res> {
  __$ExperienceAddToLogActorStateCopyWithImpl(
      _ExperienceAddToLogActorState _value, $Res Function(_ExperienceAddToLogActorState) _then)
      : super(_value, (v) => _then(v as _ExperienceAddToLogActorState));

  @override
  _ExperienceAddToLogActorState get _value => super._value as _ExperienceAddToLogActorState;

  @override
  $Res call({
    Object? inLog = freezed,
    Object? toDoAmount = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_ExperienceAddToLogActorState(
      inLog: inLog == freezed
          ? _value.inLog
          : inLog // ignore: cast_nullable_to_non_nullable
              as bool,
      toDoAmount: toDoAmount == freezed
          ? _value.toDoAmount
          : toDoAmount // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ExperienceAddToLogActorState implements _ExperienceAddToLogActorState {
  const _$_ExperienceAddToLogActorState(
      {required this.inLog, required this.toDoAmount, required this.failureOrSuccessOption});

  @override
  final bool inLog;
  @override
  final int toDoAmount;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExperienceAddToLogActorState(inLog: $inLog, toDoAmount: $toDoAmount, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceAddToLogActorState &&
            (identical(other.inLog, inLog) ||
                const DeepCollectionEquality().equals(other.inLog, inLog)) &&
            (identical(other.toDoAmount, toDoAmount) ||
                const DeepCollectionEquality().equals(other.toDoAmount, toDoAmount)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(inLog) ^
      const DeepCollectionEquality().hash(toDoAmount) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ExperienceAddToLogActorStateCopyWith<_ExperienceAddToLogActorState> get copyWith =>
      __$ExperienceAddToLogActorStateCopyWithImpl<_ExperienceAddToLogActorState>(this, _$identity);
}

abstract class _ExperienceAddToLogActorState implements ExperienceAddToLogActorState {
  const factory _ExperienceAddToLogActorState(
          {required bool inLog,
          required int toDoAmount,
          required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_ExperienceAddToLogActorState;

  @override
  bool get inLog => throw _privateConstructorUsedError;

  @override
  int get toDoAmount => throw _privateConstructorUsedError;

  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$ExperienceAddToLogActorStateCopyWith<_ExperienceAddToLogActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
