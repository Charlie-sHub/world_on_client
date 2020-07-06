// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'notification_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NotificationActorEventTearOff {
  const _$NotificationActorEventTearOff();

  _Deleted deleted(Notification notification) {
    return _Deleted(
      notification,
    );
  }

  _Checked checked(Notification notification) {
    return _Checked(
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
    @required Result deleted(Notification notification),
    @required Result checked(Notification notification),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Notification notification),
    Result checked(Notification notification),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result checked(_Checked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result checked(_Checked value),
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

abstract class _$DeletedCopyWith<$Res>
  implements $NotificationActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
  __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Notification notification});

  @override
  $NotificationCopyWith<$Res> get notification;
}

class __$DeletedCopyWithImpl<$Res> extends _$NotificationActorEventCopyWithImpl<$Res>
  implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
    : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_Deleted(
      notification == freezed
        ? _value.notification
        : notification as Notification,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.notification) : assert(notification != null);

  @override
  final Notification notification;

  @override
  String toString() {
    return 'NotificationActorEvent.deleted(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Deleted &&
        (identical(other.notification, notification) ||
          const DeepCollectionEquality()
            .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
    __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Notification notification),
    @required Result checked(Notification notification),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return deleted(notification);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Notification notification),
    Result checked(Notification notification),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result checked(_Checked value),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result checked(_Checked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements NotificationActorEvent {
  const factory _Deleted(Notification notification) = _$_Deleted;

  @override
  Notification get notification;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

abstract class _$CheckedCopyWith<$Res>
  implements $NotificationActorEventCopyWith<$Res> {
  factory _$CheckedCopyWith(_Checked value, $Res Function(_Checked) then) =
  __$CheckedCopyWithImpl<$Res>;
  @override
  $Res call({Notification notification});

  @override
  $NotificationCopyWith<$Res> get notification;
}

class __$CheckedCopyWithImpl<$Res> extends _$NotificationActorEventCopyWithImpl<$Res>
  implements _$CheckedCopyWith<$Res> {
  __$CheckedCopyWithImpl(_Checked _value, $Res Function(_Checked) _then)
    : super(_value, (v) => _then(v as _Checked));

  @override
  _Checked get _value => super._value as _Checked;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_Checked(
      notification == freezed
        ? _value.notification
        : notification as Notification,
    ));
  }
}

class _$_Checked implements _Checked {
  const _$_Checked(this.notification) : assert(notification != null);

  @override
  final Notification notification;

  @override
  String toString() {
    return 'NotificationActorEvent.checked(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Checked &&
        (identical(other.notification, notification) ||
          const DeepCollectionEquality()
            .equals(other.notification, notification)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @override
  _$CheckedCopyWith<_Checked> get copyWith =>
    __$CheckedCopyWithImpl<_Checked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Notification notification),
    @required Result checked(Notification notification),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return checked(notification);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Notification notification),
    Result checked(Notification notification),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checked != null) {
      return checked(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result checked(_Checked value),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return checked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result checked(_Checked value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checked != null) {
      return checked(this);
    }
    return orElse();
  }
}

abstract class _Checked implements NotificationActorEvent {
  const factory _Checked(Notification notification) = _$_Checked;

  @override
  Notification get notification;
  @override
  _$CheckedCopyWith<_Checked> get copyWith;
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
