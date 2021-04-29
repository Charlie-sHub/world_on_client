// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
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

/// @nodoc
const $NotificationActorEvent = _$NotificationActorEventTearOff();

/// @nodoc
mixin _$NotificationActorEvent {
  Notification get notification => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Notification notification) deleted,
    required TResult Function(Notification notification) checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Notification notification)? deleted,
    TResult Function(Notification notification)? checked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Checked value) checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationActorEventCopyWith<NotificationActorEvent> get copyWith => throw _privateConstructorUsedError;
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
    Object? notification = freezed,
  }) {
    return _then(_value.copyWith(
      notification: notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification,
    ));
  }

  @override
  $NotificationCopyWith<$Res> get notification {
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
    Object? notification = freezed,
  }) {
    return _then(_Deleted(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.notification);

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

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith => __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Notification notification) deleted,
    required TResult Function(Notification notification) checked,
  }) {
    return deleted(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Notification notification)? deleted,
    TResult Function(Notification notification)? checked,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Checked value) checked,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements NotificationActorEvent {
  const factory _Deleted(Notification notification) = _$_Deleted;

  @override
  Notification get notification => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith => throw _privateConstructorUsedError;
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
    Object? notification = freezed,
  }) {
    return _then(_Checked(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification,
    ));
  }
}

/// @nodoc

class _$_Checked implements _Checked {
  const _$_Checked(this.notification);

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

  @JsonKey(ignore: true)
  @override
  _$CheckedCopyWith<_Checked> get copyWith => __$CheckedCopyWithImpl<_Checked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Notification notification) deleted,
    required TResult Function(Notification notification) checked,
  }) {
    return checked(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Notification notification)? deleted,
    TResult Function(Notification notification)? checked,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Checked value) checked,
  }) {
    return checked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Checked value)? checked,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(this);
    }
    return orElse();
  }
}

abstract class _Checked implements NotificationActorEvent {
  const factory _Checked(Notification notification) = _$_Checked;

  @override
  Notification get notification => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$CheckedCopyWith<_Checked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
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

/// @nodoc
const $NotificationActorState = _$NotificationActorStateTearOff();

/// @nodoc
mixin _$NotificationActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
    required TResult Function() checkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    TResult Function()? checkSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
    required TResult Function(_CheckSuccess value) checkSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    TResult Function(_CheckSuccess value)? checkSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
    required TResult Function() checkSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    TResult Function()? checkSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
    required TResult Function(_CheckSuccess value) checkSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    TResult Function(_CheckSuccess value)? checkSuccess,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
    required TResult Function() checkSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    TResult Function()? checkSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
    required TResult Function(_CheckSuccess value) checkSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    TResult Function(_CheckSuccess value)? checkSuccess,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
    required TResult Function() checkSuccess,
  }) {
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    TResult Function()? checkSuccess,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
    required TResult Function(_CheckSuccess value) checkSuccess,
  }) {
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    TResult Function(_CheckSuccess value)? checkSuccess,
    required TResult orElse(),
  }) {
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
    Object? failure = freezed,
  }) {
    return _then(_DeletionFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<dynamic>,
    ));
  }

  @override
  $FailureCopyWith<dynamic, $Res> get failure {
    return $FailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_DeletionFailure implements _DeletionFailure {
  const _$_DeletionFailure(this.failure);

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

  @JsonKey(ignore: true)
  @override
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith => __$DeletionFailureCopyWithImpl<_DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
    required TResult Function() checkSuccess,
  }) {
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    TResult Function()? checkSuccess,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
    required TResult Function(_CheckSuccess value) checkSuccess,
  }) {
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    TResult Function(_CheckSuccess value)? checkSuccess,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletionFailure implements NotificationActorState {
  const factory _DeletionFailure(Failure<dynamic> failure) = _$_DeletionFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith => throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
    required TResult Function() checkSuccess,
  }) {
    return checkSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    TResult Function()? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
    required TResult Function(_CheckSuccess value) checkSuccess,
  }) {
    return checkSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    TResult Function(_CheckSuccess value)? checkSuccess,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckSuccess implements NotificationActorState {
  const factory _CheckSuccess() = _$_CheckSuccess;
}
