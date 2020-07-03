// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience_card_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceCardActorEventTearOff {
  const _$ExperienceCardActorEventTearOff();

  _AddExperienceToLog addExperienceToLog(int experienceId) {
    return _AddExperienceToLog(
      experienceId,
    );
  }
}

// ignore: unused_element
const $ExperienceCardActorEvent = _$ExperienceCardActorEventTearOff();

mixin _$ExperienceCardActorEvent {
  int get experienceId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addExperienceToLog(int experienceId),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addExperienceToLog(int experienceId),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addExperienceToLog(_AddExperienceToLog value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addExperienceToLog(_AddExperienceToLog value),
    @required Result orElse(),
  });

  $ExperienceCardActorEventCopyWith<ExperienceCardActorEvent> get copyWith;
}

abstract class $ExperienceCardActorEventCopyWith<$Res> {
  factory $ExperienceCardActorEventCopyWith(ExperienceCardActorEvent value, $Res Function(ExperienceCardActorEvent) then) = _$ExperienceCardActorEventCopyWithImpl<$Res>;

  $Res call({int experienceId});
}

class _$ExperienceCardActorEventCopyWithImpl<$Res> implements $ExperienceCardActorEventCopyWith<$Res> {
  _$ExperienceCardActorEventCopyWithImpl(this._value, this._then);

  final ExperienceCardActorEvent _value;

  // ignore: unused_field
  final $Res Function(ExperienceCardActorEvent) _then;

  @override
  $Res call({
    Object experienceId = freezed,
  }) {
    return _then(_value.copyWith(
      experienceId: experienceId == freezed ? _value.experienceId : experienceId as int,
    ));
  }
}

abstract class _$AddExperienceToLogCopyWith<$Res> implements $ExperienceCardActorEventCopyWith<$Res> {
  factory _$AddExperienceToLogCopyWith(_AddExperienceToLog value, $Res Function(_AddExperienceToLog) then) = __$AddExperienceToLogCopyWithImpl<$Res>;

  @override
  $Res call({int experienceId});
}

class __$AddExperienceToLogCopyWithImpl<$Res> extends _$ExperienceCardActorEventCopyWithImpl<$Res> implements _$AddExperienceToLogCopyWith<$Res> {
  __$AddExperienceToLogCopyWithImpl(_AddExperienceToLog _value, $Res Function(_AddExperienceToLog) _then) : super(_value, (v) => _then(v as _AddExperienceToLog));

  @override
  _AddExperienceToLog get _value => super._value as _AddExperienceToLog;

  @override
  $Res call({
    Object experienceId = freezed,
  }) {
    return _then(_AddExperienceToLog(
      experienceId == freezed ? _value.experienceId : experienceId as int,
    ));
  }
}

class _$_AddExperienceToLog implements _AddExperienceToLog {
  const _$_AddExperienceToLog(this.experienceId) : assert(experienceId != null);

  @override
  final int experienceId;

  @override
  String toString() {
    return 'ExperienceCardActorEvent.addExperienceToLog(experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddExperienceToLog && (identical(other.experienceId, experienceId) || const DeepCollectionEquality().equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @override
  _$AddExperienceToLogCopyWith<_AddExperienceToLog> get copyWith => __$AddExperienceToLogCopyWithImpl<_AddExperienceToLog>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addExperienceToLog(int experienceId),
  }) {
    assert(addExperienceToLog != null);
    return addExperienceToLog(experienceId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addExperienceToLog(int experienceId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addExperienceToLog != null) {
      return addExperienceToLog(experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addExperienceToLog(_AddExperienceToLog value),
  }) {
    assert(addExperienceToLog != null);
    return addExperienceToLog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addExperienceToLog(_AddExperienceToLog value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addExperienceToLog != null) {
      return addExperienceToLog(this);
    }
    return orElse();
  }
}

abstract class _AddExperienceToLog implements ExperienceCardActorEvent {
  const factory _AddExperienceToLog(int experienceId) = _$_AddExperienceToLog;

  @override
  int get experienceId;

  @override
  _$AddExperienceToLogCopyWith<_AddExperienceToLog> get copyWith;
}

class _$ExperienceCardActorStateTearOff {
  const _$ExperienceCardActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _AdditionSuccess additionSuccess() {
    return const _AdditionSuccess();
  }

  _AdditionFailure additionFailure(Failure<dynamic> failure) {
    return _AdditionFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ExperienceCardActorState = _$ExperienceCardActorStateTearOff();

mixin _$ExperienceCardActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    @required Result orElse(),
  });
}

abstract class $ExperienceCardActorStateCopyWith<$Res> {
  factory $ExperienceCardActorStateCopyWith(ExperienceCardActorState value, $Res Function(ExperienceCardActorState) then) = _$ExperienceCardActorStateCopyWithImpl<$Res>;
}

class _$ExperienceCardActorStateCopyWithImpl<$Res> implements $ExperienceCardActorStateCopyWith<$Res> {
  _$ExperienceCardActorStateCopyWithImpl(this._value, this._then);

  final ExperienceCardActorState _value;

  // ignore: unused_field
  final $Res Function(ExperienceCardActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExperienceCardActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceCardActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ExperienceCardActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceCardActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$AdditionSuccessCopyWith<$Res> {
  factory _$AdditionSuccessCopyWith(_AdditionSuccess value, $Res Function(_AdditionSuccess) then) = __$AdditionSuccessCopyWithImpl<$Res>;
}

class __$AdditionSuccessCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$AdditionSuccessCopyWith<$Res> {
  __$AdditionSuccessCopyWithImpl(_AdditionSuccess _value, $Res Function(_AdditionSuccess) _then) : super(_value, (v) => _then(v as _AdditionSuccess));

  @override
  _AdditionSuccess get _value => super._value as _AdditionSuccess;
}

class _$_AdditionSuccess implements _AdditionSuccess {
  const _$_AdditionSuccess();

  @override
  String toString() {
    return 'ExperienceCardActorState.additionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdditionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return additionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionSuccess != null) {
      return additionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return additionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionSuccess != null) {
      return additionSuccess(this);
    }
    return orElse();
  }
}

abstract class _AdditionSuccess implements ExperienceCardActorState {
  const factory _AdditionSuccess() = _$_AdditionSuccess;
}

abstract class _$AdditionFailureCopyWith<$Res> {
  factory _$AdditionFailureCopyWith(_AdditionFailure value, $Res Function(_AdditionFailure) then) = __$AdditionFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$AdditionFailureCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$AdditionFailureCopyWith<$Res> {
  __$AdditionFailureCopyWithImpl(_AdditionFailure _value, $Res Function(_AdditionFailure) _then) : super(_value, (v) => _then(v as _AdditionFailure));

  @override
  _AdditionFailure get _value => super._value as _AdditionFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_AdditionFailure(
      failure == freezed ? _value.failure : failure as Failure<dynamic>,
    ));
  }

  @override
  $FailureCopyWith<dynamic, $Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_AdditionFailure implements _AdditionFailure {
  const _$_AdditionFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceCardActorState.additionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdditionFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith => __$AdditionFailureCopyWithImpl<_AdditionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return additionFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionFailure != null) {
      return additionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    return additionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (additionFailure != null) {
      return additionFailure(this);
    }
    return orElse();
  }
}

abstract class _AdditionFailure implements ExperienceCardActorState {
  const factory _AdditionFailure(Failure<dynamic> failure) = _$_AdditionFailure;

  Failure<dynamic> get failure;

  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith;
}
