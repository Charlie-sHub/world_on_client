// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileWatcherEventTearOff {
  const _$ProfileWatcherEventTearOff();

  _WatchProfileStarted watchProfileStarted(UniqueId userId) {
    return _WatchProfileStarted(
      userId,
    );
  }

  _ResultsReceived resultsReceived(Either<Failure, User> failureOrUser) {
    return _ResultsReceived(
      failureOrUser,
    );
  }
}

/// @nodoc
const $ProfileWatcherEvent = _$ProfileWatcherEventTearOff();

/// @nodoc
mixin _$ProfileWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId userId) watchProfileStarted,
    required TResult Function(Either<Failure, User> failureOrUser) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userId)? watchProfileStarted,
    TResult Function(Either<Failure, User> failureOrUser)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProfileStarted value) watchProfileStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProfileStarted value)? watchProfileStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWatcherEventCopyWith<$Res> {
  factory $ProfileWatcherEventCopyWith(ProfileWatcherEvent value, $Res Function(ProfileWatcherEvent) then) = _$ProfileWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileWatcherEventCopyWithImpl<$Res> implements $ProfileWatcherEventCopyWith<$Res> {
  _$ProfileWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(ProfileWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchProfileStartedCopyWith<$Res> {
  factory _$WatchProfileStartedCopyWith(_WatchProfileStarted value, $Res Function(_WatchProfileStarted) then) = __$WatchProfileStartedCopyWithImpl<$Res>;

  $Res call({UniqueId userId});
}

/// @nodoc
class __$WatchProfileStartedCopyWithImpl<$Res> extends _$ProfileWatcherEventCopyWithImpl<$Res> implements _$WatchProfileStartedCopyWith<$Res> {
  __$WatchProfileStartedCopyWithImpl(_WatchProfileStarted _value, $Res Function(_WatchProfileStarted) _then) : super(_value, (v) => _then(v as _WatchProfileStarted));

  @override
  _WatchProfileStarted get _value => super._value as _WatchProfileStarted;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_WatchProfileStarted(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_WatchProfileStarted implements _WatchProfileStarted {
  const _$_WatchProfileStarted(this.userId);

  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'ProfileWatcherEvent.watchProfileStarted(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchProfileStarted && (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$WatchProfileStartedCopyWith<_WatchProfileStarted> get copyWith => __$WatchProfileStartedCopyWithImpl<_WatchProfileStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId userId) watchProfileStarted,
    required TResult Function(Either<Failure, User> failureOrUser) resultsReceived,
  }) {
    return watchProfileStarted(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userId)? watchProfileStarted,
    TResult Function(Either<Failure, User> failureOrUser)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchProfileStarted != null) {
      return watchProfileStarted(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProfileStarted value) watchProfileStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return watchProfileStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProfileStarted value)? watchProfileStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchProfileStarted != null) {
      return watchProfileStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchProfileStarted implements ProfileWatcherEvent {
  const factory _WatchProfileStarted(UniqueId userId) = _$_WatchProfileStarted;

  UniqueId get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$WatchProfileStartedCopyWith<_WatchProfileStarted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, User> failureOrUser});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$ProfileWatcherEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));

  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<Failure, User>,
    ));
  }
}

/// @nodoc

class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrUser);

  @override
  final Either<Failure, User> failureOrUser;

  @override
  String toString() {
    return 'ProfileWatcherEvent.resultsReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResultsReceived && (identical(other.failureOrUser, failureOrUser) || const DeepCollectionEquality().equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @JsonKey(ignore: true)
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId userId) watchProfileStarted,
    required TResult Function(Either<Failure, User> failureOrUser) resultsReceived,
  }) {
    return resultsReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userId)? watchProfileStarted,
    TResult Function(Either<Failure, User> failureOrUser)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchProfileStarted value) watchProfileStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchProfileStarted value)? watchProfileStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements ProfileWatcherEvent {
  const factory _ResultsReceived(Either<Failure, User> failureOrUser) = _$_ResultsReceived;

  Either<Failure, User> get failureOrUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileWatcherStateTearOff {
  const _$ProfileWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _NewProfileUpdate newProfileUpdate(User user) {
    return _NewProfileUpdate(
      user,
    );
  }

  _Failure failure() {
    return const _Failure();
  }
}

/// @nodoc
const $ProfileWatcherState = _$ProfileWatcherStateTearOff();

/// @nodoc
mixin _$ProfileWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) newProfileUpdate,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? newProfileUpdate,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewProfileUpdate value) newProfileUpdate,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewProfileUpdate value)? newProfileUpdate,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWatcherStateCopyWith<$Res> {
  factory $ProfileWatcherStateCopyWith(ProfileWatcherState value, $Res Function(ProfileWatcherState) then) = _$ProfileWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileWatcherStateCopyWithImpl<$Res> implements $ProfileWatcherStateCopyWith<$Res> {
  _$ProfileWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileWatcherState _value;

  // ignore: unused_field
  final $Res Function(ProfileWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProfileWatcherState.initial()';
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
    required TResult Function(User user) newProfileUpdate,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? newProfileUpdate,
    TResult Function()? failure,
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
    required TResult Function(_NewProfileUpdate value) newProfileUpdate,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewProfileUpdate value)? newProfileUpdate,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$NewProfileUpdateCopyWith<$Res> {
  factory _$NewProfileUpdateCopyWith(_NewProfileUpdate value, $Res Function(_NewProfileUpdate) then) = __$NewProfileUpdateCopyWithImpl<$Res>;

  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$NewProfileUpdateCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$NewProfileUpdateCopyWith<$Res> {
  __$NewProfileUpdateCopyWithImpl(_NewProfileUpdate _value, $Res Function(_NewProfileUpdate) _then) : super(_value, (v) => _then(v as _NewProfileUpdate));

  @override
  _NewProfileUpdate get _value => super._value as _NewProfileUpdate;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_NewProfileUpdate(
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

class _$_NewProfileUpdate implements _NewProfileUpdate {
  const _$_NewProfileUpdate(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileWatcherState.newProfileUpdate(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NewProfileUpdate && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$NewProfileUpdateCopyWith<_NewProfileUpdate> get copyWith => __$NewProfileUpdateCopyWithImpl<_NewProfileUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) newProfileUpdate,
    required TResult Function() failure,
  }) {
    return newProfileUpdate(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? newProfileUpdate,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (newProfileUpdate != null) {
      return newProfileUpdate(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewProfileUpdate value) newProfileUpdate,
    required TResult Function(_Failure value) failure,
  }) {
    return newProfileUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewProfileUpdate value)? newProfileUpdate,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (newProfileUpdate != null) {
      return newProfileUpdate(this);
    }
    return orElse();
  }
}

abstract class _NewProfileUpdate implements ProfileWatcherState {
  const factory _NewProfileUpdate(User user) = _$_NewProfileUpdate;

  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$NewProfileUpdateCopyWith<_NewProfileUpdate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) = __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ProfileWatcherStateCopyWithImpl<$Res> implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then) : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'ProfileWatcherState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) newProfileUpdate,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? newProfileUpdate,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NewProfileUpdate value) newProfileUpdate,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NewProfileUpdate value)? newProfileUpdate,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProfileWatcherState {
  const factory _Failure() = _$_Failure;
}
