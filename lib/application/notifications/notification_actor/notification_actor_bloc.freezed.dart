// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationActorEventTearOff {
  const _$NotificationActorEventTearOff();

// ignore: unused_element
  _Deleted deleted(Notification notification) {
    return _Deleted(
      notification,
    );
  }

// ignore: unused_element
  _Checked checked(Notification notification) {
    return _Checked(
      notification,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationActorEvent = _$NotificationActorEventTearOff();

/// @nodoc
mixin _$NotificationActorEvent {
  Notification get notification;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(Notification notification),
    @required TResult checked(Notification notification),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(Notification notification),
    TResult checked(Notification notification),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
    @required TResult checked(_Checked value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    TResult checked(_Checked value),
    @required TResult orElse(),
  });

  $NotificationActorEventCopyWith<NotificationActorEvent> get copyWith;
}

/// @nodoc
abstract class $NotificationActorEventCopyWith<$Res> {
  factory $NotificationActorEventCopyWith(NotificationActorEvent value, $Res Function(NotificationActorEvent) then) = _$NotificationActorEventCopyWithImpl<$Res>;

  $Res call({Notification notification});

  $NotificationCopyWith<$Res> get notification;
}

/// @nodoc
class _$NotificationActorEventCopyWithImpl<$Res> implements $NotificationActorEventCopyWith<$Res> {
  _$NotificationActorEventCopyWithImpl(this._value, this._then);

  final NotificationActorEvent _value;

  // ignore: unused_field
  final $Res Function(NotificationActorEvent) _then;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_value.copyWith(
      notification: notification == freezed ? _value.notification : notification as Notification,
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

/// @nodoc
abstract class _$DeletedCopyWith<$Res> implements $NotificationActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) = __$DeletedCopyWithImpl<$Res>;

  @override
  $Res call({Notification notification});

  @override
  $NotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$NotificationActorEventCopyWithImpl<$Res> implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then) : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_Deleted(
      notification == freezed ? _value.notification : notification as Notification,
    ));
  }
}

/// @nodoc
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
    return identical(this, other) || (other is _Deleted && (identical(other.notification, notification) || const DeepCollectionEquality().equals(other.notification, notification)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith => __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(Notification notification),
    @required TResult checked(Notification notification),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return deleted(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(Notification notification),
    TResult checked(Notification notification),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
    @required TResult checked(_Checked value),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    TResult checked(_Checked value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$CheckedCopyWith<$Res> implements $NotificationActorEventCopyWith<$Res> {
  factory _$CheckedCopyWith(_Checked value, $Res Function(_Checked) then) = __$CheckedCopyWithImpl<$Res>;

  @override
  $Res call({Notification notification});

  @override
  $NotificationCopyWith<$Res> get notification;
}

/// @nodoc
class __$CheckedCopyWithImpl<$Res> extends _$NotificationActorEventCopyWithImpl<$Res> implements _$CheckedCopyWith<$Res> {
  __$CheckedCopyWithImpl(_Checked _value, $Res Function(_Checked) _then) : super(_value, (v) => _then(v as _Checked));

  @override
  _Checked get _value => super._value as _Checked;

  @override
  $Res call({
    Object notification = freezed,
  }) {
    return _then(_Checked(
      notification == freezed ? _value.notification : notification as Notification,
    ));
  }
}

/// @nodoc
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
    return identical(this, other) || (other is _Checked && (identical(other.notification, notification) || const DeepCollectionEquality().equals(other.notification, notification)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(notification);

  @override
  _$CheckedCopyWith<_Checked> get copyWith => __$CheckedCopyWithImpl<_Checked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(Notification notification),
    @required TResult checked(Notification notification),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return checked(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(Notification notification),
    TResult checked(Notification notification),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checked != null) {
      return checked(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
    @required TResult checked(_Checked value),
  }) {
    assert(deleted != null);
    assert(checked != null);
    return checked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    TResult checked(_Checked value),
    @required TResult orElse(),
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

/// @nodoc
class _$NotificationActorStateTearOff {
  const _$NotificationActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeletionSuccess deletionSuccess() {
    return const _DeletionSuccess();
  }

// ignore: unused_element
  _DeletionFailure deletionFailure(Failure<dynamic> failure) {
    return _DeletionFailure(
      failure,
    );
  }

// ignore: unused_element
  _CheckSuccess checkSuccess() {
    return const _CheckSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationActorState = _$NotificationActorStateTearOff();

/// @nodoc
mixin _$NotificationActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionSuccess(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult checkSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionSuccess(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult checkSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionSuccess(_DeletionSuccess value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult checkSuccess(_CheckSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionSuccess(_DeletionSuccess value),
    TResult deletionFailure(_DeletionFailure value),
    TResult checkSuccess(_CheckSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NotificationActorStateCopyWith<$Res> {
  factory $NotificationActorStateCopyWith(NotificationActorState value, $Res Function(NotificationActorState) then) = _$NotificationActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationActorStateCopyWithImpl<$Res> implements $NotificationActorStateCopyWith<$Res> {
  _$NotificationActorStateCopyWithImpl(this._value, this._then);

  final NotificationActorState _value;

  // ignore: unused_field
  final $Res Function(NotificationActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionSuccess(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult checkSuccess(),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionSuccess(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult checkSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionSuccess(_DeletionSuccess value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult checkSuccess(_CheckSuccess value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionSuccess(_DeletionSuccess value),
    TResult deletionFailure(_DeletionFailure value),
    TResult checkSuccess(_CheckSuccess value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionSuccess(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult checkSuccess(),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionSuccess(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult checkSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionSuccess(_DeletionSuccess value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult checkSuccess(_CheckSuccess value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionSuccess(_DeletionSuccess value),
    TResult deletionFailure(_DeletionFailure value),
    TResult checkSuccess(_CheckSuccess value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(_DeletionSuccess value, $Res Function(_DeletionSuccess) then) = __$DeletionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletionSuccessCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res> implements _$DeletionSuccessCopyWith<$Res> {
  __$DeletionSuccessCopyWithImpl(_DeletionSuccess _value, $Res Function(_DeletionSuccess) _then) : super(_value, (v) => _then(v as _DeletionSuccess));

  @override
  _DeletionSuccess get _value => super._value as _DeletionSuccess;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionSuccess(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult checkSuccess(),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionSuccess(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult checkSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionSuccess(_DeletionSuccess value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult checkSuccess(_CheckSuccess value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionSuccess(_DeletionSuccess value),
    TResult deletionFailure(_DeletionFailure value),
    TResult checkSuccess(_CheckSuccess value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(_DeletionFailure value, $Res Function(_DeletionFailure) then) = __$DeletionFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DeletionFailureCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res> implements _$DeletionFailureCopyWith<$Res> {
  __$DeletionFailureCopyWithImpl(_DeletionFailure _value, $Res Function(_DeletionFailure) _then) : super(_value, (v) => _then(v as _DeletionFailure));

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

/// @nodoc
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
    return identical(this, other) || (other is _DeletionFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith => __$DeletionFailureCopyWithImpl<_DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionSuccess(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult checkSuccess(),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionSuccess(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult checkSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionSuccess(_DeletionSuccess value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult checkSuccess(_CheckSuccess value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionSuccess(_DeletionSuccess value),
    TResult deletionFailure(_DeletionFailure value),
    TResult checkSuccess(_CheckSuccess value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$CheckSuccessCopyWith<$Res> {
  factory _$CheckSuccessCopyWith(_CheckSuccess value, $Res Function(_CheckSuccess) then) = __$CheckSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckSuccessCopyWithImpl<$Res> extends _$NotificationActorStateCopyWithImpl<$Res> implements _$CheckSuccessCopyWith<$Res> {
  __$CheckSuccessCopyWithImpl(_CheckSuccess _value, $Res Function(_CheckSuccess) _then) : super(_value, (v) => _then(v as _CheckSuccess));

  @override
  _CheckSuccess get _value => super._value as _CheckSuccess;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionSuccess(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult checkSuccess(),
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
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionSuccess(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult checkSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkSuccess != null) {
      return checkSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionSuccess(_DeletionSuccess value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult checkSuccess(_CheckSuccess value),
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
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionSuccess(_DeletionSuccess value),
    TResult deletionFailure(_DeletionFailure value),
    TResult checkSuccess(_CheckSuccess value),
    @required TResult orElse(),
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
