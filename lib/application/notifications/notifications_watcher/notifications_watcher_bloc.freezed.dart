// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notifications_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationsWatcherEventTearOff {
  const _$NotificationsWatcherEventTearOff();

// ignore: unused_element
  _WatchNotificationsStarted watchNotificationsStarted() {
    return const _WatchNotificationsStarted();
  }

// ignore: unused_element
  _ResultsReceived resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications) {
    return _ResultsReceived(
      failureOrNotifications,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsWatcherEvent = _$NotificationsWatcherEventTearOff();

/// @nodoc
mixin _$NotificationsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotificationsStarted(),
    @required TResult resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotificationsStarted(),
    TResult resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotificationsStarted(_WatchNotificationsStarted value),
    @required TResult resultsReceived(_ResultsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotificationsStarted(_WatchNotificationsStarted value),
    TResult resultsReceived(_ResultsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NotificationsWatcherEventCopyWith<$Res> {
  factory $NotificationsWatcherEventCopyWith(NotificationsWatcherEvent value, $Res Function(NotificationsWatcherEvent) then) = _$NotificationsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsWatcherEventCopyWithImpl<$Res> implements $NotificationsWatcherEventCopyWith<$Res> {
  _$NotificationsWatcherEventCopyWithImpl(this._value, this._then);

  final NotificationsWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(NotificationsWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchNotificationsStartedCopyWith<$Res> {
  factory _$WatchNotificationsStartedCopyWith(_WatchNotificationsStarted value, $Res Function(_WatchNotificationsStarted) then) = __$WatchNotificationsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchNotificationsStartedCopyWithImpl<$Res> extends _$NotificationsWatcherEventCopyWithImpl<$Res> implements _$WatchNotificationsStartedCopyWith<$Res> {
  __$WatchNotificationsStartedCopyWithImpl(_WatchNotificationsStarted _value, $Res Function(_WatchNotificationsStarted) _then) : super(_value, (v) => _then(v as _WatchNotificationsStarted));

  @override
  _WatchNotificationsStarted get _value => super._value as _WatchNotificationsStarted;
}

/// @nodoc
class _$_WatchNotificationsStarted implements _WatchNotificationsStarted {
  const _$_WatchNotificationsStarted();

  @override
  String toString() {
    return 'NotificationsWatcherEvent.watchNotificationsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchNotificationsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotificationsStarted(),
    @required TResult resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications),
  }) {
    assert(watchNotificationsStarted != null);
    assert(resultsReceived != null);
    return watchNotificationsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotificationsStarted(),
    TResult resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchNotificationsStarted != null) {
      return watchNotificationsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotificationsStarted(_WatchNotificationsStarted value),
    @required TResult resultsReceived(_ResultsReceived value),
  }) {
    assert(watchNotificationsStarted != null);
    assert(resultsReceived != null);
    return watchNotificationsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotificationsStarted(_WatchNotificationsStarted value),
    TResult resultsReceived(_ResultsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchNotificationsStarted != null) {
      return watchNotificationsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchNotificationsStarted implements NotificationsWatcherEvent {
  const factory _WatchNotificationsStarted() = _$_WatchNotificationsStarted;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, KtList<Notification>> failureOrNotifications});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$NotificationsWatcherEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));

  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;

  @override
  $Res call({
    Object failureOrNotifications = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrNotifications == freezed ? _value.failureOrNotifications : failureOrNotifications as Either<Failure, KtList<Notification>>,
    ));
  }
}

/// @nodoc
class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrNotifications) : assert(failureOrNotifications != null);

  @override
  final Either<Failure, KtList<Notification>> failureOrNotifications;

  @override
  String toString() {
    return 'NotificationsWatcherEvent.resultsReceived(failureOrNotifications: $failureOrNotifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultsReceived && (identical(other.failureOrNotifications, failureOrNotifications) || const DeepCollectionEquality().equals(other.failureOrNotifications, failureOrNotifications)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrNotifications);

  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotificationsStarted(),
    @required TResult resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications),
  }) {
    assert(watchNotificationsStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(failureOrNotifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotificationsStarted(),
    TResult resultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(failureOrNotifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotificationsStarted(_WatchNotificationsStarted value),
    @required TResult resultsReceived(_ResultsReceived value),
  }) {
    assert(watchNotificationsStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotificationsStarted(_WatchNotificationsStarted value),
    TResult resultsReceived(_ResultsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements NotificationsWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Notification>> failureOrNotifications) = _$_ResultsReceived;

  Either<Failure, KtList<Notification>> get failureOrNotifications;

  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith;
}

/// @nodoc
class _$NotificationsWatcherStateTearOff {
  const _$NotificationsWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Notification> notifications) {
    return _LoadSuccess(
      notifications,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationsWatcherState = _$NotificationsWatcherStateTearOff();

/// @nodoc
mixin _$NotificationsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Notification> notifications),
    @required TResult loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Notification> notifications),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NotificationsWatcherStateCopyWith<$Res> {
  factory $NotificationsWatcherStateCopyWith(NotificationsWatcherState value, $Res Function(NotificationsWatcherState) then) = _$NotificationsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsWatcherStateCopyWithImpl<$Res> implements $NotificationsWatcherStateCopyWith<$Res> {
  _$NotificationsWatcherStateCopyWithImpl(this._value, this._then);

  final NotificationsWatcherState _value;

  // ignore: unused_field
  final $Res Function(NotificationsWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NotificationsWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NotificationsWatcherState.initial()';
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
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Notification> notifications),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Notification> notifications),
    TResult loadFailure(Failure<dynamic> failure),
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
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationsWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$NotificationsWatcherStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'NotificationsWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Notification> notifications),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Notification> notifications),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements NotificationsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) = __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Notification> notifications});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$NotificationsWatcherStateCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then) : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object notifications = freezed,
  }) {
    return _then(_LoadSuccess(
      notifications == freezed ? _value.notifications : notifications as KtList<Notification>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.notifications) : assert(notifications != null);

  @override
  final KtList<Notification> notifications;

  @override
  String toString() {
    return 'NotificationsWatcherState.loadSuccess(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess && (identical(other.notifications, notifications) || const DeepCollectionEquality().equals(other.notifications, notifications)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifications);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Notification> notifications),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Notification> notifications),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements NotificationsWatcherState {
  const factory _LoadSuccess(KtList<Notification> notifications) = _$_LoadSuccess;

  KtList<Notification> get notifications;

  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$NotificationsWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then) : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
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
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'NotificationsWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Notification> notifications),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Notification> notifications),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements NotificationsWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
