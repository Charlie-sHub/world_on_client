// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'notification_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NotificationActorEventTearOff {
  const _$NotificationActorEventTearOff();

  _Delete delete(Notification notification) {
    return _Delete(
      notification,
    );
  }

  _Check check(Notification notification) {
    return _Check(
      notification,
    );
  }
}

// ignore: unused_element
const $NotificationActorEvent = _$NotificationActorEventTearOff();

mixin _$NotificationActorEvent {
  Notification get notification;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Notification notification),
    @required Result check(Notification notification),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Notification notification),
    Result check(Notification notification),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
    @required Result check(_Check value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result check(_Check value),
    @required Result orElse(),
  });

  $NotificationActorEventCopyWith<NotificationActorEvent> get copyWith;
}

abstract class $NotificationActorEventCopyWith<$Res> {
  factory $NotificationActorEventCopyWith(NotificationActorEvent value, $Res Function(NotificationActorEvent) then) = _$NotificationActorEventCopyWithImpl<$Res>;
  $Res call({Notification notification});

  $NotificationCopyWith<$Res> get notification;
}

class _$NotificationActorEventCopyWithImpl<$Res>
  implements $NotificationActorEventCopyWith<$Res> {
  _$NotificationActorEventCopyWithImpl(this._value, this._then);

  final NotificationActorEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationActorEvent) _then;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_value.copyWith(
      notification: notification == freezed
        ? _value.notification
        : notification as Notification,
    ));
  }

  @override
  $NotificationCopyWith<$Res> get notification {
    if (_value.notification == null) {
      return null;
    }
    return $NotificationCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

abstract class _$DeleteCopyWith<$Res>
  implements $NotificationActorEventCopyWith<$Res> {
  factory _$DeleteCopyWith(_Delete value, $Res Function(_Delete) then) =
  __$DeleteCopyWithImpl<$Res>;
  @override
  $Res call({Notification notification});

  @override
  $NotificationCopyWith<$Res> get notification;
}

class __$DeleteCopyWithImpl<$Res> extends _$NotificationActorEventCopyWithImpl<$Res>
  implements _$DeleteCopyWith<$Res> {
  __$DeleteCopyWithImpl(_Delete _value, $Res Function(_Delete) _then)
    : super(_value, (v) => _then(v as _Delete));

  @override
  _Delete get _value => super._value as _Delete;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_Delete(
      notification == freezed
        ? _value.notification
        : notification as Notification,
    ));
  }
}

class _$_Delete implements _Delete {
  const _$_Delete(this.notification) : assert(notification != null);

  @override
  final Notification notification;

  @override
  String toString() {
    return 'NotificationActorEvent.delete(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Delete &&
        (identical(other.notification, notification) ||
          const DeepCollectionEquality()
            .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @override
  _$DeleteCopyWith<_Delete> get copyWith =>
    __$DeleteCopyWithImpl<_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Notification notification),
    @required Result check(Notification notification),
  }) {
    assert(delete != null);
    assert(check != null);
    return delete(notification);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Notification notification),
    Result check(Notification notification),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
    @required Result check(_Check value),
  }) {
    assert(delete != null);
    assert(check != null);
    return delete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result check(_Check value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements NotificationActorEvent {
  const factory _Delete(Notification notification) = _$_Delete;

  @override
  Notification get notification;
  @override
  _$DeleteCopyWith<_Delete> get copyWith;
}

abstract class _$CheckCopyWith<$Res>
  implements $NotificationActorEventCopyWith<$Res> {
  factory _$CheckCopyWith(_Check value, $Res Function(_Check) then) =
  __$CheckCopyWithImpl<$Res>;
  @override
  $Res call({Notification notification});

  @override
  $NotificationCopyWith<$Res> get notification;
}

class __$CheckCopyWithImpl<$Res> extends _$NotificationActorEventCopyWithImpl<$Res>
  implements _$CheckCopyWith<$Res> {
  __$CheckCopyWithImpl(_Check _value, $Res Function(_Check) _then)
    : super(_value, (v) => _then(v as _Check));

  @override
  _Check get _value => super._value as _Check;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_Check(
      notification == freezed
        ? _value.notification
        : notification as Notification,
    ));
  }
}

class _$_Check implements _Check {
  const _$_Check(this.notification) : assert(notification != null);

  @override
  final Notification notification;

  @override
  String toString() {
    return 'NotificationActorEvent.check(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Check &&
        (identical(other.notification, notification) ||
          const DeepCollectionEquality()
            .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @override
  _$CheckCopyWith<_Check> get copyWith =>
    __$CheckCopyWithImpl<_Check>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result delete(Notification notification),
    @required Result check(Notification notification),
  }) {
    assert(delete != null);
    assert(check != null);
    return check(notification);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result delete(Notification notification),
    Result check(Notification notification),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result delete(_Delete value),
    @required Result check(_Check value),
  }) {
    assert(delete != null);
    assert(check != null);
    return check(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result delete(_Delete value),
    Result check(_Check value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _Check implements NotificationActorEvent {
  const factory _Check(Notification notification) = _$_Check;

  @override
  Notification get notification;
  @override
  _$CheckCopyWith<_Check> get copyWith;
}

class _$NotificationActorStateTearOff {
  const _$NotificationActorStateTearOff();

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

  _CheckSuccess checkSuccess() {
    return const _CheckSuccess();
  }
}

// ignore: unused_element
const $NotificationActorState = _$NotificationActorStateTearOff();

mixin _$NotificationActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionSuccess(),
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result checkSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    Result checkSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionSuccess(_DeletionSuccess value),
    @required Result deletionFailure(_DeletionFailure value),
    @required Result checkSuccess(_CheckSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    Result checkSuccess(_CheckSuccess value),
    @required Result orElse(),
  });
}

abstract class $NotificationActorStateCopyWith<$Res> {
  factory $NotificationActorStateCopyWith(NotificationActorState value,
    $Res Function(NotificationActorState) then) =
  _$NotificationActorStateCopyWithImpl<$Res>;
}

class _$NotificationActorStateCopyWithImpl<$Res>
  implements $NotificationActorStateCopyWith<$Res> {
  _$NotificationActorStateCopyWithImpl(this._value, this._then);

  final NotificationActorState _value;
  // ignore: unused_field
  final $Res Function(NotificationActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res>
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
    return 'NotificationActorState.initial()';
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
    @required Result checkSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    Result checkSuccess(),
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
    @required Result checkSuccess(_CheckSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    Result checkSuccess(_CheckSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) =
  __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res>
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
    return 'NotificationActorState.actionInProgress()';
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
    @required Result checkSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    Result checkSuccess(),
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
    @required Result checkSuccess(_CheckSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    Result checkSuccess(_CheckSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements NotificationActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(_DeletionSuccess value, $Res Function(_DeletionSuccess) then) =
  __$DeletionSuccessCopyWithImpl<$Res>;
}

class __$DeletionSuccessCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res>
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
    return 'NotificationActorState.deletionSuccess()';
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
    @required Result checkSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    Result checkSuccess(),
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
    @required Result checkSuccess(_CheckSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    Result checkSuccess(_CheckSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletionSuccess implements NotificationActorState {
  const factory _DeletionSuccess() = _$_DeletionSuccess;
}

abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(_DeletionFailure value, $Res Function(_DeletionFailure) then) =
  __$DeletionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$DeletionFailureCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res>
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
    return 'NotificationActorState.deletionFailure(failure: $failure)';
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
    @required Result checkSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    Result checkSuccess(),
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
    @required Result checkSuccess(_CheckSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    Result checkSuccess(_CheckSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletionFailure implements NotificationActorState {
  const factory _DeletionFailure(Failure<dynamic> failure) = _$_DeletionFailure;

  Failure<dynamic> get failure;
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith;
}

abstract class _$CheckSuccessCopyWith<$Res> {
  factory _$CheckSuccessCopyWith(_CheckSuccess value, $Res Function(_CheckSuccess) then) =
  __$CheckSuccessCopyWithImpl<$Res>;
}

class __$CheckSuccessCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res>
  implements _$CheckSuccessCopyWith<$Res> {
  __$CheckSuccessCopyWithImpl(_CheckSuccess _value, $Res Function(_CheckSuccess) _then)
    : super(_value, (v) => _then(v as _CheckSuccess));

  @override
  _CheckSuccess get _value => super._value as _CheckSuccess;
}

class _$_CheckSuccess implements _CheckSuccess {
  const _$_CheckSuccess();

  @override
  String toString() {
    return 'NotificationActorState.checkSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckSuccess);
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
    @required Result checkSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return checkSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionSuccess(),
    Result deletionFailure(Failure<dynamic> failure),
    Result checkSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkSuccess != null) {
      return checkSuccess();
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
    @required Result checkSuccess(_CheckSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionSuccess != null);
    assert(deletionFailure != null);
    assert(checkSuccess != null);
    return checkSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionSuccess(_DeletionSuccess value),
    Result deletionFailure(_DeletionFailure value),
    Result checkSuccess(_CheckSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkSuccess != null) {
      return checkSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckSuccess implements NotificationActorState {
  const factory _CheckSuccess() = _$_CheckSuccess;
}
