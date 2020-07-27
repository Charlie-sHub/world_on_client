// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_finish_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceFinishActorEventTearOff {
  const _$ExperienceFinishActorEventTearOff();

// ignore: unused_element
  _FinishedExperience finishedExperience(Experience experience) {
    return _FinishedExperience(
      experience,
    );
  }
}

// ignore: unused_element
const $ExperienceFinishActorEvent = _$ExperienceFinishActorEventTearOff();

mixin _$ExperienceFinishActorEvent {
  Experience get experience;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result finishedExperience(Experience experience),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result finishedExperience(Experience experience),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result finishedExperience(_FinishedExperience value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result finishedExperience(_FinishedExperience value),
    @required Result orElse(),
  });

  $ExperienceFinishActorEventCopyWith<ExperienceFinishActorEvent> get copyWith;
}

abstract class $ExperienceFinishActorEventCopyWith<$Res> {
  factory $ExperienceFinishActorEventCopyWith(ExperienceFinishActorEvent value, $Res Function(ExperienceFinishActorEvent) then) = _$ExperienceFinishActorEventCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class _$ExperienceFinishActorEventCopyWithImpl<$Res> implements $ExperienceFinishActorEventCopyWith<$Res> {
  _$ExperienceFinishActorEventCopyWithImpl(this._value, this._then);

  final ExperienceFinishActorEvent _value;

  // ignore: unused_field
  final $Res Function(ExperienceFinishActorEvent) _then;

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

abstract class _$FinishedExperienceCopyWith<$Res> implements $ExperienceFinishActorEventCopyWith<$Res> {
  factory _$FinishedExperienceCopyWith(_FinishedExperience value, $Res Function(_FinishedExperience) then) = __$FinishedExperienceCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$FinishedExperienceCopyWithImpl<$Res> extends _$ExperienceFinishActorEventCopyWithImpl<$Res> implements _$FinishedExperienceCopyWith<$Res> {
  __$FinishedExperienceCopyWithImpl(_FinishedExperience _value, $Res Function(_FinishedExperience) _then) : super(_value, (v) => _then(v as _FinishedExperience));

  @override
  _FinishedExperience get _value => super._value as _FinishedExperience;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_FinishedExperience(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

class _$_FinishedExperience implements _FinishedExperience {
  const _$_FinishedExperience(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceFinishActorEvent.finishedExperience(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FinishedExperience && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$FinishedExperienceCopyWith<_FinishedExperience> get copyWith => __$FinishedExperienceCopyWithImpl<_FinishedExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result finishedExperience(Experience experience),
  }) {
    assert(finishedExperience != null);
    return finishedExperience(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result finishedExperience(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishedExperience != null) {
      return finishedExperience(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result finishedExperience(_FinishedExperience value),
  }) {
    assert(finishedExperience != null);
    return finishedExperience(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result finishedExperience(_FinishedExperience value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishedExperience != null) {
      return finishedExperience(this);
    }
    return orElse();
  }
}

abstract class _FinishedExperience implements ExperienceFinishActorEvent {
  const factory _FinishedExperience(Experience experience) = _$_FinishedExperience;

  @override
  Experience get experience;

  @override
  _$FinishedExperienceCopyWith<_FinishedExperience> get copyWith;
}

class _$ExperienceFinishActorStateTearOff {
  const _$ExperienceFinishActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _FinishSuccess finishSuccess() {
    return const _FinishSuccess();
  }

// ignore: unused_element
  _FinishFailure finishFailure(Failure<dynamic> failure) {
    return _FinishFailure(
      failure,
    );
  }

// ignore: unused_element
  _RewardSuccess rewardSuccess() {
    return const _RewardSuccess();
  }

// ignore: unused_element
  _RewardFailure rewardFailure(Failure<dynamic> failure) {
    return _RewardFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ExperienceFinishActorState = _$ExperienceFinishActorStateTearOff();

mixin _$ExperienceFinishActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result finishSuccess(),
    @required Result finishFailure(Failure<dynamic> failure),
    @required Result rewardSuccess(),
    @required Result rewardFailure(Failure<dynamic> failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result finishSuccess(),
    Result finishFailure(Failure<dynamic> failure),
    Result rewardSuccess(),
    Result rewardFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result finishSuccess(_FinishSuccess value),
    @required Result finishFailure(_FinishFailure value),
    @required Result rewardSuccess(_RewardSuccess value),
    @required Result rewardFailure(_RewardFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result finishSuccess(_FinishSuccess value),
    Result finishFailure(_FinishFailure value),
    Result rewardSuccess(_RewardSuccess value),
    Result rewardFailure(_RewardFailure value),
    @required Result orElse(),
  });
}

abstract class $ExperienceFinishActorStateCopyWith<$Res> {
  factory $ExperienceFinishActorStateCopyWith(ExperienceFinishActorState value, $Res Function(ExperienceFinishActorState) then) = _$ExperienceFinishActorStateCopyWithImpl<$Res>;
}

class _$ExperienceFinishActorStateCopyWithImpl<$Res> implements $ExperienceFinishActorStateCopyWith<$Res> {
  _$ExperienceFinishActorStateCopyWithImpl(this._value, this._then);

  final ExperienceFinishActorState _value;

  // ignore: unused_field
  final $Res Function(ExperienceFinishActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExperienceFinishActorState.initial()';
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
    @required Result finishSuccess(),
    @required Result finishFailure(Failure<dynamic> failure),
    @required Result rewardSuccess(),
    @required Result rewardFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result finishSuccess(),
    Result finishFailure(Failure<dynamic> failure),
    Result rewardSuccess(),
    Result rewardFailure(Failure<dynamic> failure),
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
    @required Result finishSuccess(_FinishSuccess value),
    @required Result finishFailure(_FinishFailure value),
    @required Result rewardSuccess(_RewardSuccess value),
    @required Result rewardFailure(_RewardFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result finishSuccess(_FinishSuccess value),
    Result finishFailure(_FinishFailure value),
    Result rewardSuccess(_RewardSuccess value),
    Result rewardFailure(_RewardFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceFinishActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ExperienceFinishActorState.actionInProgress()';
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
    @required Result finishSuccess(),
    @required Result finishFailure(Failure<dynamic> failure),
    @required Result rewardSuccess(),
    @required Result rewardFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result finishSuccess(),
    Result finishFailure(Failure<dynamic> failure),
    Result rewardSuccess(),
    Result rewardFailure(Failure<dynamic> failure),
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
    @required Result finishSuccess(_FinishSuccess value),
    @required Result finishFailure(_FinishFailure value),
    @required Result rewardSuccess(_RewardSuccess value),
    @required Result rewardFailure(_RewardFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result finishSuccess(_FinishSuccess value),
    Result finishFailure(_FinishFailure value),
    Result rewardSuccess(_RewardSuccess value),
    Result rewardFailure(_RewardFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceFinishActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$FinishSuccessCopyWith<$Res> {
  factory _$FinishSuccessCopyWith(_FinishSuccess value, $Res Function(_FinishSuccess) then) = __$FinishSuccessCopyWithImpl<$Res>;
}

class __$FinishSuccessCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res> implements _$FinishSuccessCopyWith<$Res> {
  __$FinishSuccessCopyWithImpl(_FinishSuccess _value, $Res Function(_FinishSuccess) _then) : super(_value, (v) => _then(v as _FinishSuccess));

  @override
  _FinishSuccess get _value => super._value as _FinishSuccess;
}

class _$_FinishSuccess implements _FinishSuccess {
  const _$_FinishSuccess();

  @override
  String toString() {
    return 'ExperienceFinishActorState.finishSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FinishSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result finishSuccess(),
    @required Result finishFailure(Failure<dynamic> failure),
    @required Result rewardSuccess(),
    @required Result rewardFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return finishSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result finishSuccess(),
    Result finishFailure(Failure<dynamic> failure),
    Result rewardSuccess(),
    Result rewardFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishSuccess != null) {
      return finishSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result finishSuccess(_FinishSuccess value),
    @required Result finishFailure(_FinishFailure value),
    @required Result rewardSuccess(_RewardSuccess value),
    @required Result rewardFailure(_RewardFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return finishSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result finishSuccess(_FinishSuccess value),
    Result finishFailure(_FinishFailure value),
    Result rewardSuccess(_RewardSuccess value),
    Result rewardFailure(_RewardFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishSuccess != null) {
      return finishSuccess(this);
    }
    return orElse();
  }
}

abstract class _FinishSuccess implements ExperienceFinishActorState {
  const factory _FinishSuccess() = _$_FinishSuccess;
}

abstract class _$FinishFailureCopyWith<$Res> {
  factory _$FinishFailureCopyWith(_FinishFailure value, $Res Function(_FinishFailure) then) = __$FinishFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$FinishFailureCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res> implements _$FinishFailureCopyWith<$Res> {
  __$FinishFailureCopyWithImpl(_FinishFailure _value, $Res Function(_FinishFailure) _then) : super(_value, (v) => _then(v as _FinishFailure));

  @override
  _FinishFailure get _value => super._value as _FinishFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_FinishFailure(
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

class _$_FinishFailure implements _FinishFailure {
  const _$_FinishFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceFinishActorState.finishFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FinishFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FinishFailureCopyWith<_FinishFailure> get copyWith => __$FinishFailureCopyWithImpl<_FinishFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result finishSuccess(),
    @required Result finishFailure(Failure<dynamic> failure),
    @required Result rewardSuccess(),
    @required Result rewardFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return finishFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result finishSuccess(),
    Result finishFailure(Failure<dynamic> failure),
    Result rewardSuccess(),
    Result rewardFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishFailure != null) {
      return finishFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result finishSuccess(_FinishSuccess value),
    @required Result finishFailure(_FinishFailure value),
    @required Result rewardSuccess(_RewardSuccess value),
    @required Result rewardFailure(_RewardFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return finishFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result finishSuccess(_FinishSuccess value),
    Result finishFailure(_FinishFailure value),
    Result rewardSuccess(_RewardSuccess value),
    Result rewardFailure(_RewardFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishFailure != null) {
      return finishFailure(this);
    }
    return orElse();
  }
}

abstract class _FinishFailure implements ExperienceFinishActorState {
  const factory _FinishFailure(Failure<dynamic> failure) = _$_FinishFailure;

  Failure<dynamic> get failure;

  _$FinishFailureCopyWith<_FinishFailure> get copyWith;
}

abstract class _$RewardSuccessCopyWith<$Res> {
  factory _$RewardSuccessCopyWith(_RewardSuccess value, $Res Function(_RewardSuccess) then) = __$RewardSuccessCopyWithImpl<$Res>;
}

class __$RewardSuccessCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res> implements _$RewardSuccessCopyWith<$Res> {
  __$RewardSuccessCopyWithImpl(_RewardSuccess _value, $Res Function(_RewardSuccess) _then) : super(_value, (v) => _then(v as _RewardSuccess));

  @override
  _RewardSuccess get _value => super._value as _RewardSuccess;
}

class _$_RewardSuccess implements _RewardSuccess {
  const _$_RewardSuccess();

  @override
  String toString() {
    return 'ExperienceFinishActorState.rewardSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RewardSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result finishSuccess(),
    @required Result finishFailure(Failure<dynamic> failure),
    @required Result rewardSuccess(),
    @required Result rewardFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return rewardSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result finishSuccess(),
    Result finishFailure(Failure<dynamic> failure),
    Result rewardSuccess(),
    Result rewardFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardSuccess != null) {
      return rewardSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result finishSuccess(_FinishSuccess value),
    @required Result finishFailure(_FinishFailure value),
    @required Result rewardSuccess(_RewardSuccess value),
    @required Result rewardFailure(_RewardFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return rewardSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result finishSuccess(_FinishSuccess value),
    Result finishFailure(_FinishFailure value),
    Result rewardSuccess(_RewardSuccess value),
    Result rewardFailure(_RewardFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardSuccess != null) {
      return rewardSuccess(this);
    }
    return orElse();
  }
}

abstract class _RewardSuccess implements ExperienceFinishActorState {
  const factory _RewardSuccess() = _$_RewardSuccess;
}

abstract class _$RewardFailureCopyWith<$Res> {
  factory _$RewardFailureCopyWith(_RewardFailure value, $Res Function(_RewardFailure) then) = __$RewardFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$RewardFailureCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res> implements _$RewardFailureCopyWith<$Res> {
  __$RewardFailureCopyWithImpl(_RewardFailure _value, $Res Function(_RewardFailure) _then) : super(_value, (v) => _then(v as _RewardFailure));

  @override
  _RewardFailure get _value => super._value as _RewardFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_RewardFailure(
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

class _$_RewardFailure implements _RewardFailure {
  const _$_RewardFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceFinishActorState.rewardFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RewardFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$RewardFailureCopyWith<_RewardFailure> get copyWith => __$RewardFailureCopyWithImpl<_RewardFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result finishSuccess(),
    @required Result finishFailure(Failure<dynamic> failure),
    @required Result rewardSuccess(),
    @required Result rewardFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return rewardFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result finishSuccess(),
    Result finishFailure(Failure<dynamic> failure),
    Result rewardSuccess(),
    Result rewardFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardFailure != null) {
      return rewardFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result finishSuccess(_FinishSuccess value),
    @required Result finishFailure(_FinishFailure value),
    @required Result rewardSuccess(_RewardSuccess value),
    @required Result rewardFailure(_RewardFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(finishSuccess != null);
    assert(finishFailure != null);
    assert(rewardSuccess != null);
    assert(rewardFailure != null);
    return rewardFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result finishSuccess(_FinishSuccess value),
    Result finishFailure(_FinishFailure value),
    Result rewardSuccess(_RewardSuccess value),
    Result rewardFailure(_RewardFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardFailure != null) {
      return rewardFailure(this);
    }
    return orElse();
  }
}

abstract class _RewardFailure implements ExperienceFinishActorState {
  const factory _RewardFailure(Failure<dynamic> failure) = _$_RewardFailure;

  Failure<dynamic> get failure;

  _$RewardFailureCopyWith<_RewardFailure> get copyWith;
}
