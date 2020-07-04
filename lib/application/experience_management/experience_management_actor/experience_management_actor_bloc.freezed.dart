// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience_management_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceManagementActorEventTearOff {
  const _$ExperienceManagementActorEventTearOff();

  _Delete delete(Experience experience) {
    return _Delete(
      experience,
    );
  }
}

// ignore: unused_element
const $ExperienceManagementActorEvent = _$ExperienceManagementActorEventTearOff();

mixin _$ExperienceManagementActorEvent {
  Experience get experience;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Experience experience),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Experience experience),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    @required Result orElse(),
  });

  $ExperienceManagementActorEventCopyWith<ExperienceManagementActorEvent> get copyWith;
}

abstract class $ExperienceManagementActorEventCopyWith<$Res> {
  factory $ExperienceManagementActorEventCopyWith(ExperienceManagementActorEvent value,
    $Res Function(ExperienceManagementActorEvent) then) =
  _$ExperienceManagementActorEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class _$ExperienceManagementActorEventCopyWithImpl<$Res>
  implements $ExperienceManagementActorEventCopyWith<$Res> {
  _$ExperienceManagementActorEventCopyWithImpl(this._value, this._then);

  final ExperienceManagementActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceManagementActorEvent) _then;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience:
      experience == freezed ? _value.experience : experience as Experience,
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

abstract class _$DeleteCopyWith<$Res>
  implements $ExperienceManagementActorEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
  __$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$DeleteCopyWithImpl<$Res> extends _$ExperienceManagementActorEventCopyWithImpl<$Res>
  implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
    : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_Delete(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

class _$_Delete implements _Delete {
  const _$_Delete(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceManagementActorEvent.delete(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Delete &&
        (identical(other.experience, experience) ||
          const DeepCollectionEquality()
            .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
    __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Experience experience),
  }) {
    assert(delete != null);
    return delete(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
  }) {
    assert(delete != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements ExperienceManagementActorEvent {
  const factory _Delete(Experience experience) = _$_Delete;

  @override
  Experience get experience;
  @override
  _$DeleteCopyWith<_Delete> get copyWith;
}

class _$ExperienceManagementActorStateTearOff {
  const _$ExperienceManagementActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeletionSuccess deletionSuccess() {
    return const _DeletionSuccess();
  }

  _DeletionFailure deletionFailure(Failure<dynamic> failure) {
    return _DeletionFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ExperienceManagementActorState =
_$ExperienceManagementActorStateTearOff();

mixin _$ExperienceManagementActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionSuccess(),
    @required Result deletionFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionSuccess(_DeletionSuccess value),
    @required Result deletionFailure(_DeletionFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    @required Result orElse(),
  });
}

abstract class $ExperienceManagementActorStateCopyWith<$Res> {
  factory $ExperienceManagementActorStateCopyWith(ExperienceManagementActorState value,
    $Res Function(ExperienceManagementActorState) then) =
  _$ExperienceManagementActorStateCopyWithImpl<$Res>;
}

class _$ExperienceManagementActorStateCopyWithImpl<$Res>
  implements $ExperienceManagementActorStateCopyWith<$Res> {
  _$ExperienceManagementActorStateCopyWithImpl(this._value, this._then);

  final ExperienceManagementActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceManagementActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
  implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
    : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExperienceManagementActorState.initial()';
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
    @required Result deletionSuccess(),
    @required Result deletionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
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
    @required Result deletionSuccess(_DeletionSuccess value),
    @required Result deletionFailure(_DeletionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceManagementActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) =
  __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
  implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then)
    : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ExperienceManagementActorState.actionInProgress()';
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
    @required Result deletionSuccess(),
    @required Result deletionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
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
    @required Result deletionSuccess(_DeletionSuccess value),
    @required Result deletionFailure(_DeletionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceManagementActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(_DeletionSuccess value, $Res Function(_DeletionSuccess) then) =
  __$DeletionSuccessCopyWithImpl<$Res>;
}

class __$DeletionSuccessCopyWithImpl<$Res> extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
  implements _$DeletionSuccessCopyWith<$Res> {
  __$DeletionSuccessCopyWithImpl(_DeletionSuccess _value, $Res Function(_DeletionSuccess) _then)
    : super(_value, (v) => _then(v as _DeletionSuccess));

  @override
  _DeletionSuccess get _value => super._value as _DeletionSuccess;
}

class _$_DeletionSuccess implements _DeletionSuccess {
  const _$_DeletionSuccess();

  @override
  String toString() {
    return 'ExperienceManagementActorState.deletionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionSuccess(),
    @required Result deletionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionSuccess(_DeletionSuccess value),
    @required Result deletionFailure(_DeletionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletionSuccess implements ExperienceManagementActorState {
  const factory _DeletionSuccess() = _$_DeletionSuccess;
}

abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(_DeletionFailure value, $Res Function(_DeletionFailure) then) =
  __$DeletionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$DeletionFailureCopyWithImpl<$Res> extends _$ExperienceManagementActorStateCopyWithImpl<$Res>
  implements _$DeletionFailureCopyWith<$Res> {
  __$DeletionFailureCopyWithImpl(_DeletionFailure _value, $Res Function(_DeletionFailure) _then)
    : super(_value, (v) => _then(v as _DeletionFailure));

  @override
  _DeletionFailure get _value => super._value as _DeletionFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DeletionFailure(
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

class _$_DeletionFailure implements _DeletionFailure {
  const _$_DeletionFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceManagementActorState.deletionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _DeletionFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith =>
    __$DeletionFailureCopyWithImpl<_DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionSuccess(),
    @required Result deletionFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionSuccess(_DeletionSuccess value),
    @required Result deletionFailure(_DeletionFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletionFailure implements ExperienceManagementActorState {
  const factory _DeletionFailure(Failure<dynamic> failure) = _$_DeletionFailure;

  Failure<dynamic> get failure;
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith;
}
