// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'achievement_management_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AchievementManagementActorEventTearOff {
  const _$AchievementManagementActorEventTearOff();

  _Deleted deleted(
      {@required User userRequesting, @required Achievement achievement}) {
    return _Deleted(
      userRequesting: userRequesting,
      achievement: achievement,
    );
  }
}

// ignore: unused_element
const $AchievementManagementActorEvent =
    _$AchievementManagementActorEventTearOff();

mixin _$AchievementManagementActorEvent {
  User get userRequesting;
  Achievement get achievement;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(User userRequesting, Achievement achievement),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(User userRequesting, Achievement achievement),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  });

  $AchievementManagementActorEventCopyWith<AchievementManagementActorEvent>
      get copyWith;
}

abstract class $AchievementManagementActorEventCopyWith<$Res> {
  factory $AchievementManagementActorEventCopyWith(
          AchievementManagementActorEvent value,
          $Res Function(AchievementManagementActorEvent) then) =
      _$AchievementManagementActorEventCopyWithImpl<$Res>;
  $Res call({User userRequesting, Achievement achievement});

  $UserCopyWith<$Res> get userRequesting;
  $AchievementCopyWith<$Res> get achievement;
}

class _$AchievementManagementActorEventCopyWithImpl<$Res>
    implements $AchievementManagementActorEventCopyWith<$Res> {
  _$AchievementManagementActorEventCopyWithImpl(this._value, this._then);

  final AchievementManagementActorEvent _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementActorEvent) _then;

  @override
  $Res call({
    Object userRequesting = freezed,
    Object achievement = freezed,
  }) {
    return _then(_value.copyWith(
      userRequesting: userRequesting == freezed
          ? _value.userRequesting
          : userRequesting as User,
      achievement: achievement == freezed
          ? _value.achievement
          : achievement as Achievement,
    ));
  }

  @override
  $UserCopyWith<$Res> get userRequesting {
    if (_value.userRequesting == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.userRequesting, (value) {
      return _then(_value.copyWith(userRequesting: value));
    });
  }

  @override
  $AchievementCopyWith<$Res> get achievement {
    if (_value.achievement == null) {
      return null;
    }
    return $AchievementCopyWith<$Res>(_value.achievement, (value) {
      return _then(_value.copyWith(achievement: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res>
    implements $AchievementManagementActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({User userRequesting, Achievement achievement});

  @override
  $UserCopyWith<$Res> get userRequesting;
  @override
  $AchievementCopyWith<$Res> get achievement;
}

class __$DeletedCopyWithImpl<$Res>
    extends _$AchievementManagementActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object userRequesting = freezed,
    Object achievement = freezed,
  }) {
    return _then(_Deleted(
      userRequesting: userRequesting == freezed
          ? _value.userRequesting
          : userRequesting as User,
      achievement: achievement == freezed
          ? _value.achievement
          : achievement as Achievement,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted({@required this.userRequesting, @required this.achievement})
      : assert(userRequesting != null),
        assert(achievement != null);

  @override
  final User userRequesting;
  @override
  final Achievement achievement;

  @override
  String toString() {
    return 'AchievementManagementActorEvent.deleted(userRequesting: $userRequesting, achievement: $achievement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.userRequesting, userRequesting) ||
                const DeepCollectionEquality()
                    .equals(other.userRequesting, userRequesting)) &&
            (identical(other.achievement, achievement) ||
                const DeepCollectionEquality()
                    .equals(other.achievement, achievement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userRequesting) ^
      const DeepCollectionEquality().hash(achievement);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(User userRequesting, Achievement achievement),
  }) {
    assert(deleted != null);
    return deleted(userRequesting, achievement);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(User userRequesting, Achievement achievement),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(userRequesting, achievement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements AchievementManagementActorEvent {
  const factory _Deleted(
      {@required User userRequesting,
      @required Achievement achievement}) = _$_Deleted;

  @override
  User get userRequesting;
  @override
  Achievement get achievement;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$AchievementManagementActorStateTearOff {
  const _$AchievementManagementActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeletionFailure deletionFailure(Failure<dynamic> failure) {
    return _DeletionFailure(
      failure,
    );
  }

  _DeletionSuccess deletionSuccess() {
    return const _DeletionSuccess();
  }
}

// ignore: unused_element
const $AchievementManagementActorState =
    _$AchievementManagementActorStateTearOff();

mixin _$AchievementManagementActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  });
}

abstract class $AchievementManagementActorStateCopyWith<$Res> {
  factory $AchievementManagementActorStateCopyWith(
          AchievementManagementActorState value,
          $Res Function(AchievementManagementActorState) then) =
      _$AchievementManagementActorStateCopyWithImpl<$Res>;
}

class _$AchievementManagementActorStateCopyWithImpl<$Res>
    implements $AchievementManagementActorStateCopyWith<$Res> {
  _$AchievementManagementActorStateCopyWithImpl(this._value, this._then);

  final AchievementManagementActorState _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$AchievementManagementActorStateCopyWithImpl<$Res>
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
    return 'AchievementManagementActorState.initial()';
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
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
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
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AchievementManagementActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$AchievementManagementActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'AchievementManagementActorState.actionInProgress()';
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
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
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
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements AchievementManagementActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(
          _DeletionFailure value, $Res Function(_DeletionFailure) then) =
      __$DeletionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$DeletionFailureCopyWithImpl<$Res>
    extends _$AchievementManagementActorStateCopyWithImpl<$Res>
    implements _$DeletionFailureCopyWith<$Res> {
  __$DeletionFailureCopyWithImpl(
      _DeletionFailure _value, $Res Function(_DeletionFailure) _then)
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
    return 'AchievementManagementActorState.deletionFailure(failure: $failure)';
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
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
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
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletionFailure implements AchievementManagementActorState {
  const factory _DeletionFailure(Failure<dynamic> failure) = _$_DeletionFailure;

  Failure<dynamic> get failure;
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith;
}

abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(
          _DeletionSuccess value, $Res Function(_DeletionSuccess) then) =
      __$DeletionSuccessCopyWithImpl<$Res>;
}

class __$DeletionSuccessCopyWithImpl<$Res>
    extends _$AchievementManagementActorStateCopyWithImpl<$Res>
    implements _$DeletionSuccessCopyWith<$Res> {
  __$DeletionSuccessCopyWithImpl(
      _DeletionSuccess _value, $Res Function(_DeletionSuccess) _then)
      : super(_value, (v) => _then(v as _DeletionSuccess));

  @override
  _DeletionSuccess get _value => super._value as _DeletionSuccess;
}

class _$_DeletionSuccess implements _DeletionSuccess {
  const _$_DeletionSuccess();

  @override
  String toString() {
    return 'AchievementManagementActorState.deletionSuccess()';
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
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
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
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletionSuccess implements AchievementManagementActorState {
  const factory _DeletionSuccess() = _$_DeletionSuccess;
}
