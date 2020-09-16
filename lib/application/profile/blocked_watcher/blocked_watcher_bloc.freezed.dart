// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'blocked_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BlockedWatcherEventTearOff {
  const _$BlockedWatcherEventTearOff();

// ignore: unused_element
  _WatchBlockedUsersStarted watchBlockedUsersStarted(User user) {
    return _WatchBlockedUsersStarted(
      user,
    );
  }

// ignore: unused_element
  _ResultsReceived resultsReceived(Either<Failure, KtList<User>> failureOrUsers) {
    return _ResultsReceived(
      failureOrUsers,
    );
  }
}

// ignore: unused_element
const $BlockedWatcherEvent = _$BlockedWatcherEventTearOff();

mixin _$BlockedWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchBlockedUsersStarted(User user),
    @required Result resultsReceived(Either<Failure, KtList<User>> failureOrUsers),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchBlockedUsersStarted(User user),
    Result resultsReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchBlockedUsersStarted(_WatchBlockedUsersStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchBlockedUsersStarted(_WatchBlockedUsersStarted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  });
}

abstract class $BlockedWatcherEventCopyWith<$Res> {
  factory $BlockedWatcherEventCopyWith(BlockedWatcherEvent value, $Res Function(BlockedWatcherEvent) then) = _$BlockedWatcherEventCopyWithImpl<$Res>;
}

class _$BlockedWatcherEventCopyWithImpl<$Res> implements $BlockedWatcherEventCopyWith<$Res> {
  _$BlockedWatcherEventCopyWithImpl(this._value, this._then);

  final BlockedWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(BlockedWatcherEvent) _then;
}

abstract class _$WatchBlockedUsersStartedCopyWith<$Res> {
  factory _$WatchBlockedUsersStartedCopyWith(_WatchBlockedUsersStarted value, $Res Function(_WatchBlockedUsersStarted) then) = __$WatchBlockedUsersStartedCopyWithImpl<$Res>;
  
  $Res call({User user});
  
  $UserCopyWith<$Res> get user;
}

class __$WatchBlockedUsersStartedCopyWithImpl<$Res> extends _$BlockedWatcherEventCopyWithImpl<$Res> implements _$WatchBlockedUsersStartedCopyWith<$Res> {
  __$WatchBlockedUsersStartedCopyWithImpl(_WatchBlockedUsersStarted _value, $Res Function(_WatchBlockedUsersStarted) _then) : super(_value, (v) => _then(v as _WatchBlockedUsersStarted));
  
  @override
  _WatchBlockedUsersStarted get _value => super._value as _WatchBlockedUsersStarted;
  
  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_WatchBlockedUsersStarted(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$_WatchBlockedUsersStarted implements _WatchBlockedUsersStarted {
  const _$_WatchBlockedUsersStarted(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'BlockedWatcherEvent.watchBlockedUsersStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchBlockedUsersStarted && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$WatchBlockedUsersStartedCopyWith<_WatchBlockedUsersStarted> get copyWith => __$WatchBlockedUsersStartedCopyWithImpl<_WatchBlockedUsersStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchBlockedUsersStarted(User user),
    @required Result resultsReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchBlockedUsersStarted != null);
    assert(resultsReceived != null);
    return watchBlockedUsersStarted(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchBlockedUsersStarted(User user),
    Result resultsReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchBlockedUsersStarted != null) {
      return watchBlockedUsersStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchBlockedUsersStarted(_WatchBlockedUsersStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(watchBlockedUsersStarted != null);
    assert(resultsReceived != null);
    return watchBlockedUsersStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchBlockedUsersStarted(_WatchBlockedUsersStarted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchBlockedUsersStarted != null) {
      return watchBlockedUsersStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchBlockedUsersStarted implements BlockedWatcherEvent {
  const factory _WatchBlockedUsersStarted(User user) = _$_WatchBlockedUsersStarted;
  
  User get user;
  
  _$WatchBlockedUsersStartedCopyWith<_WatchBlockedUsersStarted> get copyWith;
}

abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;
  
  $Res call({Either<Failure, KtList<User>> failureOrUsers});
}

class __$ResultsReceivedCopyWithImpl<$Res> extends _$BlockedWatcherEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));
  
  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;
  
  @override
  $Res call({
    Object failureOrUsers = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrUsers == freezed ? _value.failureOrUsers : failureOrUsers as Either<Failure, KtList<User>>,
    ));
  }
}

class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrUsers) : assert(failureOrUsers != null);
  
  @override
  final Either<Failure, KtList<User>> failureOrUsers;
  
  @override
  String toString() {
    return 'BlockedWatcherEvent.resultsReceived(failureOrUsers: $failureOrUsers)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResultsReceived && (identical(other.failureOrUsers, failureOrUsers) || const DeepCollectionEquality().equals(other.failureOrUsers, failureOrUsers)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUsers);
  
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchBlockedUsersStarted(User user),
    @required Result resultsReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchBlockedUsersStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchBlockedUsersStarted(User user),
    Result resultsReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchBlockedUsersStarted(_WatchBlockedUsersStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(watchBlockedUsersStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchBlockedUsersStarted(_WatchBlockedUsersStarted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements BlockedWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<User>> failureOrUsers) = _$_ResultsReceived;
  
  Either<Failure, KtList<User>> get failureOrUsers;
  
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith;
}

class _$BlockedWatcherStateTearOff {
  const _$BlockedWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<User> blockedUsers) {
    return _LoadSuccess(
      blockedUsers,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $BlockedWatcherState = _$BlockedWatcherStateTearOff();

mixin _$BlockedWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> blockedUsers),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<User> blockedUsers),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $BlockedWatcherStateCopyWith<$Res> {
  factory $BlockedWatcherStateCopyWith(BlockedWatcherState value, $Res Function(BlockedWatcherState) then) = _$BlockedWatcherStateCopyWithImpl<$Res>;
}

class _$BlockedWatcherStateCopyWithImpl<$Res> implements $BlockedWatcherStateCopyWith<$Res> {
  _$BlockedWatcherStateCopyWithImpl(this._value, this._then);
  
  final BlockedWatcherState _value;
  
  // ignore: unused_field
  final $Res Function(BlockedWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$BlockedWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));
  
  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BlockedWatcherState.initial()';
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
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> blockedUsers),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<User> blockedUsers),
    Result loadFailure(Failure<dynamic> failure),
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
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BlockedWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res> extends _$BlockedWatcherStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));
  
  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'BlockedWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> blockedUsers),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<User> blockedUsers),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BlockedWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) = __$LoadSuccessCopyWithImpl<$Res>;
  
  $Res call({KtList<User> blockedUsers});
}

class __$LoadSuccessCopyWithImpl<$Res> extends _$BlockedWatcherStateCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then) : super(_value, (v) => _then(v as _LoadSuccess));
  
  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
  
  @override
  $Res call({
    Object blockedUsers = freezed,
  }) {
    return _then(_LoadSuccess(
      blockedUsers == freezed ? _value.blockedUsers : blockedUsers as KtList<User>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.blockedUsers) : assert(blockedUsers != null);

  @override
  final KtList<User> blockedUsers;

  @override
  String toString() {
    return 'BlockedWatcherState.loadSuccess(blockedUsers: $blockedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess && (identical(other.blockedUsers, blockedUsers) || const DeepCollectionEquality().equals(other.blockedUsers, blockedUsers)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(blockedUsers);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> blockedUsers),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(blockedUsers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<User> blockedUsers),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(blockedUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BlockedWatcherState {
  const factory _LoadSuccess(KtList<User> blockedUsers) = _$_LoadSuccess;

  KtList<User> get blockedUsers;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;
  
  $Res call({Failure<dynamic> failure});
  
  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$LoadFailureCopyWithImpl<$Res> extends _$BlockedWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'BlockedWatcherState.loadFailure(failure: $failure)';
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> blockedUsers),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<User> blockedUsers),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements BlockedWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
