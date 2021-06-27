// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_users_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileUsersWatcherEventTearOff {
  const _$ProfileUsersWatcherEventTearOff();

  _WatchFollowedUsersStarted watchFollowedUsersStarted(User user) {
    return _WatchFollowedUsersStarted(
      user,
    );
  }

  _WatchFollowingUsersStarted watchFollowingUsersStarted(User user) {
    return _WatchFollowingUsersStarted(
      user,
    );
  }

  _UsersReceived usersReceived(Either<Failure, KtList<User>> failureOrUsers) {
    return _UsersReceived(
      failureOrUsers,
    );
  }
}

/// @nodoc
const $ProfileUsersWatcherEvent = _$ProfileUsersWatcherEventTearOff();

/// @nodoc
mixin _$ProfileUsersWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchFollowedUsersStarted,
    required TResult Function(User user) watchFollowingUsersStarted,
    required TResult Function(Either<Failure, KtList<User>> failureOrUsers) usersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchFollowedUsersStarted,
    TResult Function(User user)? watchFollowingUsersStarted,
    TResult Function(Either<Failure, KtList<User>> failureOrUsers)? usersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFollowedUsersStarted value) watchFollowedUsersStarted,
    required TResult Function(_WatchFollowingUsersStarted value) watchFollowingUsersStarted,
    required TResult Function(_UsersReceived value) usersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFollowedUsersStarted value)? watchFollowedUsersStarted,
    TResult Function(_WatchFollowingUsersStarted value)? watchFollowingUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUsersWatcherEventCopyWith<$Res> {
  factory $ProfileUsersWatcherEventCopyWith(
          ProfileUsersWatcherEvent value, $Res Function(ProfileUsersWatcherEvent) then) =
      _$ProfileUsersWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileUsersWatcherEventCopyWithImpl<$Res>
    implements $ProfileUsersWatcherEventCopyWith<$Res> {
  _$ProfileUsersWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileUsersWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileUsersWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchFollowedUsersStartedCopyWith<$Res> {
  factory _$WatchFollowedUsersStartedCopyWith(
          _WatchFollowedUsersStarted value, $Res Function(_WatchFollowedUsersStarted) then) =
      __$WatchFollowedUsersStartedCopyWithImpl<$Res>;

  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$WatchFollowedUsersStartedCopyWithImpl<$Res>
    extends _$ProfileUsersWatcherEventCopyWithImpl<$Res>
    implements _$WatchFollowedUsersStartedCopyWith<$Res> {
  __$WatchFollowedUsersStartedCopyWithImpl(
      _WatchFollowedUsersStarted _value, $Res Function(_WatchFollowedUsersStarted) _then)
      : super(_value, (v) => _then(v as _WatchFollowedUsersStarted));

  @override
  _WatchFollowedUsersStarted get _value => super._value as _WatchFollowedUsersStarted;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_WatchFollowedUsersStarted(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_WatchFollowedUsersStarted implements _WatchFollowedUsersStarted {
  const _$_WatchFollowedUsersStarted(this.user);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$WatchFollowedUsersStartedCopyWith<_WatchFollowedUsersStarted> get copyWith =>
      __$WatchFollowedUsersStartedCopyWithImpl<_WatchFollowedUsersStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchFollowedUsersStarted,
    required TResult Function(User user) watchFollowingUsersStarted,
    required TResult Function(Either<Failure, KtList<User>> failureOrUsers) usersReceived,
  }) {
    return watchFollowedUsersStarted(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchFollowedUsersStarted,
    TResult Function(User user)? watchFollowingUsersStarted,
    TResult Function(Either<Failure, KtList<User>> failureOrUsers)? usersReceived,
    required TResult orElse(),
  }) {
    if (watchFollowedUsersStarted != null) {
      return watchFollowedUsersStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFollowedUsersStarted value) watchFollowedUsersStarted,
    required TResult Function(_WatchFollowingUsersStarted value) watchFollowingUsersStarted,
    required TResult Function(_UsersReceived value) usersReceived,
  }) {
    return watchFollowedUsersStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFollowedUsersStarted value)? watchFollowedUsersStarted,
    TResult Function(_WatchFollowingUsersStarted value)? watchFollowingUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
    required TResult orElse(),
  }) {
    if (watchFollowedUsersStarted != null) {
      return watchFollowedUsersStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFollowedUsersStarted implements ProfileUsersWatcherEvent {
  const factory _WatchFollowedUsersStarted(User user) = _$_WatchFollowedUsersStarted;

  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$WatchFollowedUsersStartedCopyWith<_WatchFollowedUsersStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchFollowingUsersStartedCopyWith<$Res> {
  factory _$WatchFollowingUsersStartedCopyWith(
          _WatchFollowingUsersStarted value, $Res Function(_WatchFollowingUsersStarted) then) =
      __$WatchFollowingUsersStartedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$WatchFollowingUsersStartedCopyWithImpl<$Res>
    extends _$ProfileUsersWatcherEventCopyWithImpl<$Res>
    implements _$WatchFollowingUsersStartedCopyWith<$Res> {
  __$WatchFollowingUsersStartedCopyWithImpl(
      _WatchFollowingUsersStarted _value, $Res Function(_WatchFollowingUsersStarted) _then)
      : super(_value, (v) => _then(v as _WatchFollowingUsersStarted));

  @override
  _WatchFollowingUsersStarted get _value => super._value as _WatchFollowingUsersStarted;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_WatchFollowingUsersStarted(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_WatchFollowingUsersStarted implements _WatchFollowingUsersStarted {
  const _$_WatchFollowingUsersStarted(this.user);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$WatchFollowingUsersStartedCopyWith<_WatchFollowingUsersStarted> get copyWith =>
      __$WatchFollowingUsersStartedCopyWithImpl<_WatchFollowingUsersStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchFollowedUsersStarted,
    required TResult Function(User user) watchFollowingUsersStarted,
    required TResult Function(Either<Failure, KtList<User>> failureOrUsers) usersReceived,
  }) {
    return watchFollowingUsersStarted(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchFollowedUsersStarted,
    TResult Function(User user)? watchFollowingUsersStarted,
    TResult Function(Either<Failure, KtList<User>> failureOrUsers)? usersReceived,
    required TResult orElse(),
  }) {
    if (watchFollowingUsersStarted != null) {
      return watchFollowingUsersStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFollowedUsersStarted value) watchFollowedUsersStarted,
    required TResult Function(_WatchFollowingUsersStarted value) watchFollowingUsersStarted,
    required TResult Function(_UsersReceived value) usersReceived,
  }) {
    return watchFollowingUsersStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFollowedUsersStarted value)? watchFollowedUsersStarted,
    TResult Function(_WatchFollowingUsersStarted value)? watchFollowingUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
    required TResult orElse(),
  }) {
    if (watchFollowingUsersStarted != null) {
      return watchFollowingUsersStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchFollowingUsersStarted implements ProfileUsersWatcherEvent {
  const factory _WatchFollowingUsersStarted(User user) = _$_WatchFollowingUsersStarted;

  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$WatchFollowingUsersStartedCopyWith<_WatchFollowingUsersStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UsersReceivedCopyWith<$Res> {
  factory _$UsersReceivedCopyWith(_UsersReceived value, $Res Function(_UsersReceived) then) =
      __$UsersReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, KtList<User>> failureOrUsers});
}

/// @nodoc
class __$UsersReceivedCopyWithImpl<$Res> extends _$ProfileUsersWatcherEventCopyWithImpl<$Res>
    implements _$UsersReceivedCopyWith<$Res> {
  __$UsersReceivedCopyWithImpl(_UsersReceived _value, $Res Function(_UsersReceived) _then)
      : super(_value, (v) => _then(v as _UsersReceived));

  @override
  _UsersReceived get _value => super._value as _UsersReceived;

  @override
  $Res call({
    Object? failureOrUsers = freezed,
  }) {
    return _then(_UsersReceived(
      failureOrUsers == freezed
          ? _value.failureOrUsers
          : failureOrUsers // ignore: cast_nullable_to_non_nullable
              as Either<Failure, KtList<User>>,
    ));
  }
}

/// @nodoc

class _$_UsersReceived implements _UsersReceived {
  const _$_UsersReceived(this.failureOrUsers);

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
                const DeepCollectionEquality().equals(other.failureOrUsers, failureOrUsers)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUsers);

  @JsonKey(ignore: true)
  @override
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith =>
      __$UsersReceivedCopyWithImpl<_UsersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchFollowedUsersStarted,
    required TResult Function(User user) watchFollowingUsersStarted,
    required TResult Function(Either<Failure, KtList<User>> failureOrUsers) usersReceived,
  }) {
    return usersReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchFollowedUsersStarted,
    TResult Function(User user)? watchFollowingUsersStarted,
    TResult Function(Either<Failure, KtList<User>> failureOrUsers)? usersReceived,
    required TResult orElse(),
  }) {
    if (usersReceived != null) {
      return usersReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchFollowedUsersStarted value) watchFollowedUsersStarted,
    required TResult Function(_WatchFollowingUsersStarted value) watchFollowingUsersStarted,
    required TResult Function(_UsersReceived value) usersReceived,
  }) {
    return usersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchFollowedUsersStarted value)? watchFollowedUsersStarted,
    TResult Function(_WatchFollowingUsersStarted value)? watchFollowingUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
    required TResult orElse(),
  }) {
    if (usersReceived != null) {
      return usersReceived(this);
    }
    return orElse();
  }
}

abstract class _UsersReceived implements ProfileUsersWatcherEvent {
  const factory _UsersReceived(Either<Failure, KtList<User>> failureOrUsers) = _$_UsersReceived;

  Either<Failure, KtList<User>> get failureOrUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileUsersWatcherStateTearOff {
  const _$ProfileUsersWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<User> users) {
    return _LoadSuccess(
      users,
    );
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $ProfileUsersWatcherState = _$ProfileUsersWatcherStateTearOff();

/// @nodoc
mixin _$ProfileUsersWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<User> users) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<User> users)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUsersWatcherStateCopyWith<$Res> {
  factory $ProfileUsersWatcherStateCopyWith(
          ProfileUsersWatcherState value, $Res Function(ProfileUsersWatcherState) then) =
      _$ProfileUsersWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileUsersWatcherStateCopyWithImpl<$Res>
    implements $ProfileUsersWatcherStateCopyWith<$Res> {
  _$ProfileUsersWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileUsersWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProfileUsersWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<User> users) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<User> users)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileUsersWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<User> users) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<User> users)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ProfileUsersWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<User> users});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_LoadSuccess(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.users);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<User> users) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<User> users)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ProfileUsersWatcherState {
  const factory _LoadSuccess(KtList<User> users) = _$_LoadSuccess;

  KtList<User> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$ProfileUsersWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<User> users) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<User> users)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProfileUsersWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => throw _privateConstructorUsedError;
}
