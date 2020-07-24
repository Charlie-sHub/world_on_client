// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_users_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileUsersWatcherEventTearOff {
  const _$ProfileUsersWatcherEventTearOff();

// ignore: unused_element
  _WatchFollowedUsersStarted watchFollowedUsersStarted(User user) {
    return _WatchFollowedUsersStarted(
      user,
    );
  }

// ignore: unused_element
  _WatchFollowingUsersStarted watchFollowingUsersStarted(User user) {
    return _WatchFollowingUsersStarted(
      user,
    );
  }

// ignore: unused_element
  _UsersReceived usersReceived(Either<Failure, KtList<User>> failureOrUsers) {
    return _UsersReceived(
      failureOrUsers,
    );
  }
}

// ignore: unused_element
const $ProfileUsersWatcherEvent = _$ProfileUsersWatcherEventTearOff();

mixin _$ProfileUsersWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFollowedUsersStarted(User user),
    @required Result watchFollowingUsersStarted(User user),
    @required Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFollowedUsersStarted(User user),
    Result watchFollowingUsersStarted(User user),
    Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    @required Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    @required Result usersReceived(_UsersReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    Result usersReceived(_UsersReceived value),
    @required Result orElse(),
  });
}

abstract class $ProfileUsersWatcherEventCopyWith<$Res> {
  factory $ProfileUsersWatcherEventCopyWith(ProfileUsersWatcherEvent value, $Res Function(ProfileUsersWatcherEvent) then) = _$ProfileUsersWatcherEventCopyWithImpl<$Res>;
}

class _$ProfileUsersWatcherEventCopyWithImpl<$Res> implements $ProfileUsersWatcherEventCopyWith<$Res> {
  _$ProfileUsersWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileUsersWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileUsersWatcherEvent) _then;
}

abstract class _$WatchFollowedUsersStartedCopyWith<$Res> {
  factory _$WatchFollowedUsersStartedCopyWith(_WatchFollowedUsersStarted value,
    $Res Function(_WatchFollowedUsersStarted) then) =
  __$WatchFollowedUsersStartedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$WatchFollowedUsersStartedCopyWithImpl<$Res> extends _$ProfileUsersWatcherEventCopyWithImpl<$Res>
  implements _$WatchFollowedUsersStartedCopyWith<$Res> {
  __$WatchFollowedUsersStartedCopyWithImpl(_WatchFollowedUsersStarted _value,
    $Res Function(_WatchFollowedUsersStarted) _then)
    : super(_value, (v) => _then(v as _WatchFollowedUsersStarted));

  @override
  _WatchFollowedUsersStarted get _value =>
    super._value as _WatchFollowedUsersStarted;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_WatchFollowedUsersStarted(
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

class _$_WatchFollowedUsersStarted implements _WatchFollowedUsersStarted {
  const _$_WatchFollowedUsersStarted(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileUsersWatcherEvent.watchFollowedUsersStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _WatchFollowedUsersStarted &&
        (identical(other.user, user) ||
          const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$WatchFollowedUsersStartedCopyWith<_WatchFollowedUsersStarted>
  get copyWith =>
    __$WatchFollowedUsersStartedCopyWithImpl<_WatchFollowedUsersStarted>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFollowedUsersStarted(User user),
    @required Result watchFollowingUsersStarted(User user),
    @required Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchFollowedUsersStarted != null);
    assert(watchFollowingUsersStarted != null);
    assert(usersReceived != null);
    return watchFollowedUsersStarted(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFollowedUsersStarted(User user),
    Result watchFollowingUsersStarted(User user),
    Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFollowedUsersStarted != null) {
      return watchFollowedUsersStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    @required Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    @required Result usersReceived(_UsersReceived value),
  }) {
    assert(watchFollowedUsersStarted != null);
    assert(watchFollowingUsersStarted != null);
    assert(usersReceived != null);
    return watchFollowedUsersStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    Result usersReceived(_UsersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFollowedUsersStarted != null) {
      return watchFollowedUsersStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFollowedUsersStarted implements ProfileUsersWatcherEvent {
  const factory _WatchFollowedUsersStarted(User user) =
  _$_WatchFollowedUsersStarted;

  User get user;
  _$WatchFollowedUsersStartedCopyWith<_WatchFollowedUsersStarted> get copyWith;
}

abstract class _$WatchFollowingUsersStartedCopyWith<$Res> {
  factory _$WatchFollowingUsersStartedCopyWith(_WatchFollowingUsersStarted value,
    $Res Function(_WatchFollowingUsersStarted) then) =
  __$WatchFollowingUsersStartedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$WatchFollowingUsersStartedCopyWithImpl<$Res> extends _$ProfileUsersWatcherEventCopyWithImpl<$Res>
  implements _$WatchFollowingUsersStartedCopyWith<$Res> {
  __$WatchFollowingUsersStartedCopyWithImpl(_WatchFollowingUsersStarted _value,
    $Res Function(_WatchFollowingUsersStarted) _then)
    : super(_value, (v) => _then(v as _WatchFollowingUsersStarted));

  @override
  _WatchFollowingUsersStarted get _value =>
    super._value as _WatchFollowingUsersStarted;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_WatchFollowingUsersStarted(
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

class _$_WatchFollowingUsersStarted implements _WatchFollowingUsersStarted {
  const _$_WatchFollowingUsersStarted(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileUsersWatcherEvent.watchFollowingUsersStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _WatchFollowingUsersStarted &&
        (identical(other.user, user) ||
          const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$WatchFollowingUsersStartedCopyWith<_WatchFollowingUsersStarted>
  get copyWith =>
    __$WatchFollowingUsersStartedCopyWithImpl<
      _WatchFollowingUsersStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFollowedUsersStarted(User user),
    @required Result watchFollowingUsersStarted(User user),
    @required Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchFollowedUsersStarted != null);
    assert(watchFollowingUsersStarted != null);
    assert(usersReceived != null);
    return watchFollowingUsersStarted(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFollowedUsersStarted(User user),
    Result watchFollowingUsersStarted(User user),
    Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFollowingUsersStarted != null) {
      return watchFollowingUsersStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    @required Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    @required Result usersReceived(_UsersReceived value),
  }) {
    assert(watchFollowedUsersStarted != null);
    assert(watchFollowingUsersStarted != null);
    assert(usersReceived != null);
    return watchFollowingUsersStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    Result usersReceived(_UsersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFollowingUsersStarted != null) {
      return watchFollowingUsersStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFollowingUsersStarted implements ProfileUsersWatcherEvent {
  const factory _WatchFollowingUsersStarted(User user) =
  _$_WatchFollowingUsersStarted;

  User get user;
  
  _$WatchFollowingUsersStartedCopyWith<_WatchFollowingUsersStarted>
  get copyWith;
}

abstract class _$UsersReceivedCopyWith<$Res> {
  factory _$UsersReceivedCopyWith(_UsersReceived value, $Res Function(_UsersReceived) then) =
  __$UsersReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, KtList<User>> failureOrUsers});
}

class __$UsersReceivedCopyWithImpl<$Res> extends _$ProfileUsersWatcherEventCopyWithImpl<$Res>
  implements _$UsersReceivedCopyWith<$Res> {
  __$UsersReceivedCopyWithImpl(_UsersReceived _value, $Res Function(_UsersReceived) _then)
    : super(_value, (v) => _then(v as _UsersReceived));

  @override
  _UsersReceived get _value => super._value as _UsersReceived;

  @override
  $Res call({
    Object failureOrUsers = freezed,
  }) {
    return _then(_UsersReceived(
      failureOrUsers == freezed
        ? _value.failureOrUsers
        : failureOrUsers as Either<Failure, KtList<User>>,
    ));
  }
}

class _$_UsersReceived implements _UsersReceived {
  const _$_UsersReceived(this.failureOrUsers) : assert(failureOrUsers != null);

  @override
  final Either<Failure, KtList<User>> failureOrUsers;

  @override
  String toString() {
    return 'ProfileUsersWatcherEvent.usersReceived(failureOrUsers: $failureOrUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _UsersReceived &&
        (identical(other.failureOrUsers, failureOrUsers) ||
          const DeepCollectionEquality()
            .equals(other.failureOrUsers, failureOrUsers)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(failureOrUsers);

  @override
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith =>
    __$UsersReceivedCopyWithImpl<_UsersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchFollowedUsersStarted(User user),
    @required Result watchFollowingUsersStarted(User user),
    @required Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
  }) {
    assert(watchFollowedUsersStarted != null);
    assert(watchFollowingUsersStarted != null);
    assert(usersReceived != null);
    return usersReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchFollowedUsersStarted(User user),
    Result watchFollowingUsersStarted(User user),
    Result usersReceived(Either<Failure, KtList<User>> failureOrUsers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usersReceived != null) {
      return usersReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    @required Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    @required Result usersReceived(_UsersReceived value),
  }) {
    assert(watchFollowedUsersStarted != null);
    assert(watchFollowingUsersStarted != null);
    assert(usersReceived != null);
    return usersReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchFollowedUsersStarted(_WatchFollowedUsersStarted value),
    Result watchFollowingUsersStarted(_WatchFollowingUsersStarted value),
    Result usersReceived(_UsersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usersReceived != null) {
      return usersReceived(this);
    }
    return orElse();
  }
}

abstract class _UsersReceived implements ProfileUsersWatcherEvent {
  const factory _UsersReceived(Either<Failure, KtList<User>> failureOrUsers) =
  _$_UsersReceived;

  Either<Failure, KtList<User>> get failureOrUsers;
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith;
}

class _$ProfileUsersWatcherStateTearOff {
  const _$ProfileUsersWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<User> users) {
    return _LoadSuccess(
      users,
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
const $ProfileUsersWatcherState = _$ProfileUsersWatcherStateTearOff();

mixin _$ProfileUsersWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> users),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<User> users),
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

abstract class $ProfileUsersWatcherStateCopyWith<$Res> {
  factory $ProfileUsersWatcherStateCopyWith(ProfileUsersWatcherState value,
    $Res Function(ProfileUsersWatcherState) then) =
  _$ProfileUsersWatcherStateCopyWithImpl<$Res>;
}

class _$ProfileUsersWatcherStateCopyWithImpl<$Res>
  implements $ProfileUsersWatcherStateCopyWith<$Res> {
  _$ProfileUsersWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileUsersWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProfileUsersWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
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
    return 'ProfileUsersWatcherState.initial()';
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
    @required Result loadSuccess(KtList<User> users),
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
    Result loadSuccess(KtList<User> users),
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

abstract class _Initial implements ProfileUsersWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
  __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
  implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then)
    : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ProfileUsersWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtList<User> users),
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
    Result loadSuccess(KtList<User> users),
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

abstract class _LoadInProgress implements ProfileUsersWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) =
  __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<User> users});
}

class __$LoadSuccessCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
  implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then)
    : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object users = freezed,
  }) {
    return _then(_LoadSuccess(
      users == freezed ? _value.users : users as KtList<User>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.users) : assert(users != null);

  @override
  final KtList<User> users;

  @override
  String toString() {
    return 'ProfileUsersWatcherState.loadSuccess(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _LoadSuccess &&
        (identical(other.users, users) ||
          const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
    __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> users),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<User> users),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(users);
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

abstract class _LoadSuccess implements ProfileUsersWatcherState {
  const factory _LoadSuccess(KtList<User> users) = _$_LoadSuccess;

  KtList<User> get users;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) =
  __$LoadFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$LoadFailureCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
  implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then)
    : super(_value, (v) => _then(v as _LoadFailure));

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
    return 'ProfileUsersWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _LoadFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
    __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<User> users),
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
    Result loadSuccess(KtList<User> users),
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

abstract class _LoadFailure implements ProfileUsersWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
