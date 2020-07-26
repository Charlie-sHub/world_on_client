// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_card_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceCardActorEventTearOff {
  const _$ExperienceCardActorEventTearOff();

// ignore: unused_element
  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }

// ignore: unused_element
  _AddedExperienceToLog addedExperienceToLog(Experience experience) {
    return _AddedExperienceToLog(
      experience,
    );
  }

// ignore: unused_element
  _DismissedExperienceFromLog dismissedExperienceFromLog(Experience experience) {
    return _DismissedExperienceFromLog(
      experience,
    );
  }
}

// ignore: unused_element
const $ExperienceCardActorEvent = _$ExperienceCardActorEventTearOff();

mixin _$ExperienceCardActorEvent {
  Experience get experience;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
    @required Result addedExperienceToLog(Experience experience),
    @required Result dismissedExperienceFromLog(Experience experience),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    Result addedExperienceToLog(Experience experience),
    Result dismissedExperienceFromLog(Experience experience),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result addedExperienceToLog(_AddedExperienceToLog value),
    @required Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result addedExperienceToLog(_AddedExperienceToLog value),
    Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required Result orElse(),
  });

  $ExperienceCardActorEventCopyWith<ExperienceCardActorEvent> get copyWith;
}

abstract class $ExperienceCardActorEventCopyWith<$Res> {
  factory $ExperienceCardActorEventCopyWith(ExperienceCardActorEvent value, $Res Function(ExperienceCardActorEvent) then) = _$ExperienceCardActorEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class _$ExperienceCardActorEventCopyWithImpl<$Res> implements $ExperienceCardActorEventCopyWith<$Res> {
  _$ExperienceCardActorEventCopyWithImpl(this._value, this._then);

  final ExperienceCardActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceCardActorEvent) _then;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed ? _value.experience : experience as Experience,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    if (_value.experience == null) {
      return null;
    }
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

abstract class _$InitializedCopyWith<$Res> implements $ExperienceCardActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$InitializedCopyWithImpl<$Res> extends _$ExperienceCardActorEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_Initialized(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardActorEvent.initialized(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
    @required Result addedExperienceToLog(Experience experience),
    @required Result dismissedExperienceFromLog(Experience experience),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    Result addedExperienceToLog(Experience experience),
    Result dismissedExperienceFromLog(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result addedExperienceToLog(_AddedExperienceToLog value),
    @required Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result addedExperienceToLog(_AddedExperienceToLog value),
    Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceCardActorEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  @override
  Experience get experience;
  @override
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$AddedExperienceToLogCopyWith<$Res> implements $ExperienceCardActorEventCopyWith<$Res> {
  factory _$AddedExperienceToLogCopyWith(_AddedExperienceToLog value, $Res Function(_AddedExperienceToLog) then) = __$AddedExperienceToLogCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$AddedExperienceToLogCopyWithImpl<$Res> extends _$ExperienceCardActorEventCopyWithImpl<$Res> implements _$AddedExperienceToLogCopyWith<$Res> {
  __$AddedExperienceToLogCopyWithImpl(_AddedExperienceToLog _value, $Res Function(_AddedExperienceToLog) _then) : super(_value, (v) => _then(v as _AddedExperienceToLog));

  @override
  _AddedExperienceToLog get _value => super._value as _AddedExperienceToLog;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_AddedExperienceToLog(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

class _$_AddedExperienceToLog implements _AddedExperienceToLog {
  const _$_AddedExperienceToLog(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardActorEvent.addedExperienceToLog(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedExperienceToLog && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith => __$AddedExperienceToLogCopyWithImpl<_AddedExperienceToLog>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
    @required Result addedExperienceToLog(Experience experience),
    @required Result dismissedExperienceFromLog(Experience experience),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return addedExperienceToLog(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    Result addedExperienceToLog(Experience experience),
    Result dismissedExperienceFromLog(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result addedExperienceToLog(_AddedExperienceToLog value),
    @required Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return addedExperienceToLog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result addedExperienceToLog(_AddedExperienceToLog value),
    Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(this);
    }
    return orElse();
  }
}

abstract class _AddedExperienceToLog implements ExperienceCardActorEvent {
  const factory _AddedExperienceToLog(Experience experience) = _$_AddedExperienceToLog;

  @override
  Experience get experience;
  @override
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith;
}

abstract class _$DismissedExperienceFromLogCopyWith<$Res> implements $ExperienceCardActorEventCopyWith<$Res> {
  factory _$DismissedExperienceFromLogCopyWith(_DismissedExperienceFromLog value, $Res Function(_DismissedExperienceFromLog) then) = __$DismissedExperienceFromLogCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$DismissedExperienceFromLogCopyWithImpl<$Res> extends _$ExperienceCardActorEventCopyWithImpl<$Res> implements _$DismissedExperienceFromLogCopyWith<$Res> {
  __$DismissedExperienceFromLogCopyWithImpl(_DismissedExperienceFromLog _value, $Res Function(_DismissedExperienceFromLog) _then) : super(_value, (v) => _then(v as _DismissedExperienceFromLog));

  @override
  _DismissedExperienceFromLog get _value => super._value as _DismissedExperienceFromLog;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_DismissedExperienceFromLog(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

class _$_DismissedExperienceFromLog implements _DismissedExperienceFromLog {
  const _$_DismissedExperienceFromLog(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardActorEvent.dismissedExperienceFromLog(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissedExperienceFromLog && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog> get copyWith => __$DismissedExperienceFromLogCopyWithImpl<_DismissedExperienceFromLog>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
    @required Result addedExperienceToLog(Experience experience),
    @required Result dismissedExperienceFromLog(Experience experience),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return dismissedExperienceFromLog(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    Result addedExperienceToLog(Experience experience),
    Result dismissedExperienceFromLog(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result addedExperienceToLog(_AddedExperienceToLog value),
    @required Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return dismissedExperienceFromLog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result addedExperienceToLog(_AddedExperienceToLog value),
    Result dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(this);
    }
    return orElse();
  }
}

abstract class _DismissedExperienceFromLog implements ExperienceCardActorEvent {
  const factory _DismissedExperienceFromLog(Experience experience) = _$_DismissedExperienceFromLog;

  @override
  Experience get experience;
  @override
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog> get copyWith;
}

class _$ExperienceCardActorStateTearOff {
  const _$ExperienceCardActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _InLog inLog() {
    return const _InLog();
  }

// ignore: unused_element
  _NotInLog notInLog() {
    return const _NotInLog();
  }

// ignore: unused_element
  _AdditionSuccess additionSuccess() {
    return const _AdditionSuccess();
  }

// ignore: unused_element
  _AdditionFailure additionFailure(Failure<dynamic> failure) {
    return _AdditionFailure(
      failure,
    );
  }

// ignore: unused_element
  _DismissalSuccess dismissalSuccess() {
    return const _DismissalSuccess();
  }

// ignore: unused_element
  _DismissalFailure dismissalFailure(Failure<dynamic> failure) {
    return _DismissalFailure(
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
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
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
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
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
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
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
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
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
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
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

abstract class _$InLogCopyWith<$Res> {
  factory _$InLogCopyWith(_InLog value, $Res Function(_InLog) then) = __$InLogCopyWithImpl<$Res>;
}

class __$InLogCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$InLogCopyWith<$Res> {
  __$InLogCopyWithImpl(_InLog _value, $Res Function(_InLog) _then) : super(_value, (v) => _then(v as _InLog));

  @override
  _InLog get _value => super._value as _InLog;
}

class _$_InLog implements _InLog {
  const _$_InLog();

  @override
  String toString() {
    return 'ExperienceCardActorState.inLog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InLog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inLog();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inLog != null) {
      return inLog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inLog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inLog != null) {
      return inLog(this);
    }
    return orElse();
  }
}

abstract class _InLog implements ExperienceCardActorState {
  const factory _InLog() = _$_InLog;
}

abstract class _$NotInLogCopyWith<$Res> {
  factory _$NotInLogCopyWith(_NotInLog value, $Res Function(_NotInLog) then) = __$NotInLogCopyWithImpl<$Res>;
}

class __$NotInLogCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$NotInLogCopyWith<$Res> {
  __$NotInLogCopyWithImpl(_NotInLog _value, $Res Function(_NotInLog) _then) : super(_value, (v) => _then(v as _NotInLog));

  @override
  _NotInLog get _value => super._value as _NotInLog;
}

class _$_NotInLog implements _NotInLog {
  const _$_NotInLog();

  @override
  String toString() {
    return 'ExperienceCardActorState.notInLog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotInLog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return notInLog();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notInLog != null) {
      return notInLog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return notInLog(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notInLog != null) {
      return notInLog(this);
    }
    return orElse();
  }
}

abstract class _NotInLog implements ExperienceCardActorState {
  const factory _NotInLog() = _$_NotInLog;
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
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
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
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
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
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
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
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
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

abstract class _$DismissalSuccessCopyWith<$Res> {
  factory _$DismissalSuccessCopyWith(_DismissalSuccess value, $Res Function(_DismissalSuccess) then) = __$DismissalSuccessCopyWithImpl<$Res>;
}

class __$DismissalSuccessCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$DismissalSuccessCopyWith<$Res> {
  __$DismissalSuccessCopyWithImpl(_DismissalSuccess _value, $Res Function(_DismissalSuccess) _then) : super(_value, (v) => _then(v as _DismissalSuccess));

  @override
  _DismissalSuccess get _value => super._value as _DismissalSuccess;
}

class _$_DismissalSuccess implements _DismissalSuccess {
  const _$_DismissalSuccess();

  @override
  String toString() {
    return 'ExperienceCardActorState.dismissalSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissalSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalSuccess != null) {
      return dismissalSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalSuccess != null) {
      return dismissalSuccess(this);
    }
    return orElse();
  }
}

abstract class _DismissalSuccess implements ExperienceCardActorState {
  const factory _DismissalSuccess() = _$_DismissalSuccess;
}

abstract class _$DismissalFailureCopyWith<$Res> {
  factory _$DismissalFailureCopyWith(_DismissalFailure value, $Res Function(_DismissalFailure) then) = __$DismissalFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$DismissalFailureCopyWithImpl<$Res> extends _$ExperienceCardActorStateCopyWithImpl<$Res> implements _$DismissalFailureCopyWith<$Res> {
  __$DismissalFailureCopyWithImpl(_DismissalFailure _value, $Res Function(_DismissalFailure) _then) : super(_value, (v) => _then(v as _DismissalFailure));

  @override
  _DismissalFailure get _value => super._value as _DismissalFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DismissalFailure(
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

class _$_DismissalFailure implements _DismissalFailure {
  const _$_DismissalFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceCardActorState.dismissalFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissalFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith => __$DismissalFailureCopyWithImpl<_DismissalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result inLog(),
    @required Result notInLog(),
    @required Result additionSuccess(),
    @required Result additionFailure(Failure<dynamic> failure),
    @required Result dismissalSuccess(),
    @required Result dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result inLog(),
    Result notInLog(),
    Result additionSuccess(),
    Result additionFailure(Failure<dynamic> failure),
    Result dismissalSuccess(),
    Result dismissalFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result inLog(_InLog value),
    @required Result notInLog(_NotInLog value),
    @required Result additionSuccess(_AdditionSuccess value),
    @required Result additionFailure(_AdditionFailure value),
    @required Result dismissalSuccess(_DismissalSuccess value),
    @required Result dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result inLog(_InLog value),
    Result notInLog(_NotInLog value),
    Result additionSuccess(_AdditionSuccess value),
    Result additionFailure(_AdditionFailure value),
    Result dismissalSuccess(_DismissalSuccess value),
    Result dismissalFailure(_DismissalFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(this);
    }
    return orElse();
  }
}

abstract class _DismissalFailure implements ExperienceCardActorState {
  const factory _DismissalFailure(Failure<dynamic> failure) = _$_DismissalFailure;

  Failure<dynamic> get failure;
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith;
}
