// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'watch_current_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatchCurrentUserEventTearOff {
  const _$WatchCurrentUserEventTearOff();

  _WatchCurrentUserStarted watchCurrentUserStarted() {
    return const _WatchCurrentUserStarted();
  }

  _ResultReceived resultReceived(Either<Failure, User> failureOrUser) {
    return _ResultReceived(
      failureOrUser,
    );
  }
}

/// @nodoc
const $WatchCurrentUserEvent = _$WatchCurrentUserEventTearOff();

/// @nodoc
mixin _$WatchCurrentUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchCurrentUserStarted,
    required TResult Function(Either<Failure, User> failureOrUser)
        resultReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchCurrentUserStarted,
    TResult Function(Either<Failure, User> failureOrUser)? resultReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchCurrentUserStarted value)
        watchCurrentUserStarted,
    required TResult Function(_ResultReceived value) resultReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchCurrentUserStarted value)? watchCurrentUserStarted,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchCurrentUserEventCopyWith<$Res> {
  factory $WatchCurrentUserEventCopyWith(WatchCurrentUserEvent value,
          $Res Function(WatchCurrentUserEvent) then) =
      _$WatchCurrentUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchCurrentUserEventCopyWithImpl<$Res>
    implements $WatchCurrentUserEventCopyWith<$Res> {
  _$WatchCurrentUserEventCopyWithImpl(this._value, this._then);

  final WatchCurrentUserEvent _value;
  // ignore: unused_field
  final $Res Function(WatchCurrentUserEvent) _then;
}

/// @nodoc
abstract class _$WatchCurrentUserStartedCopyWith<$Res> {
  factory _$WatchCurrentUserStartedCopyWith(_WatchCurrentUserStarted value,
          $Res Function(_WatchCurrentUserStarted) then) =
      __$WatchCurrentUserStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchCurrentUserStartedCopyWithImpl<$Res>
    extends _$WatchCurrentUserEventCopyWithImpl<$Res>
    implements _$WatchCurrentUserStartedCopyWith<$Res> {
  __$WatchCurrentUserStartedCopyWithImpl(_WatchCurrentUserStarted _value,
      $Res Function(_WatchCurrentUserStarted) _then)
      : super(_value, (v) => _then(v as _WatchCurrentUserStarted));

  @override
  _WatchCurrentUserStarted get _value =>
      super._value as _WatchCurrentUserStarted;
}

/// @nodoc

class _$_WatchCurrentUserStarted implements _WatchCurrentUserStarted {
  const _$_WatchCurrentUserStarted();

  @override
  String toString() {
    return 'WatchCurrentUserEvent.watchCurrentUserStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchCurrentUserStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchCurrentUserStarted,
    required TResult Function(Either<Failure, User> failureOrUser)
        resultReceived,
  }) {
    return watchCurrentUserStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchCurrentUserStarted,
    TResult Function(Either<Failure, User> failureOrUser)? resultReceived,
    required TResult orElse(),
  }) {
    if (watchCurrentUserStarted != null) {
      return watchCurrentUserStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchCurrentUserStarted value)
        watchCurrentUserStarted,
    required TResult Function(_ResultReceived value) resultReceived,
  }) {
    return watchCurrentUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchCurrentUserStarted value)? watchCurrentUserStarted,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) {
    if (watchCurrentUserStarted != null) {
      return watchCurrentUserStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchCurrentUserStarted implements WatchCurrentUserEvent {
  const factory _WatchCurrentUserStarted() = _$_WatchCurrentUserStarted;
}

/// @nodoc
abstract class _$ResultReceivedCopyWith<$Res> {
  factory _$ResultReceivedCopyWith(
          _ResultReceived value, $Res Function(_ResultReceived) then) =
      __$ResultReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, User> failureOrUser});
}

/// @nodoc
class __$ResultReceivedCopyWithImpl<$Res>
    extends _$WatchCurrentUserEventCopyWithImpl<$Res>
    implements _$ResultReceivedCopyWith<$Res> {
  __$ResultReceivedCopyWithImpl(
      _ResultReceived _value, $Res Function(_ResultReceived) _then)
      : super(_value, (v) => _then(v as _ResultReceived));

  @override
  _ResultReceived get _value => super._value as _ResultReceived;

  @override
  $Res call({
    Object? failureOrUser = freezed,
  }) {
    return _then(_ResultReceived(
      failureOrUser == freezed
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<Failure, User>,
    ));
  }
}

/// @nodoc

class _$_ResultReceived implements _ResultReceived {
  const _$_ResultReceived(this.failureOrUser);

  @override
  final Either<Failure, User> failureOrUser;

  @override
  String toString() {
    return 'WatchCurrentUserEvent.resultReceived(failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultReceived &&
            (identical(other.failureOrUser, failureOrUser) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrUser, failureOrUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrUser);

  @JsonKey(ignore: true)
  @override
  _$ResultReceivedCopyWith<_ResultReceived> get copyWith =>
      __$ResultReceivedCopyWithImpl<_ResultReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchCurrentUserStarted,
    required TResult Function(Either<Failure, User> failureOrUser)
        resultReceived,
  }) {
    return resultReceived(failureOrUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchCurrentUserStarted,
    TResult Function(Either<Failure, User> failureOrUser)? resultReceived,
    required TResult orElse(),
  }) {
    if (resultReceived != null) {
      return resultReceived(failureOrUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchCurrentUserStarted value)
        watchCurrentUserStarted,
    required TResult Function(_ResultReceived value) resultReceived,
  }) {
    return resultReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchCurrentUserStarted value)? watchCurrentUserStarted,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) {
    if (resultReceived != null) {
      return resultReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultReceived implements WatchCurrentUserEvent {
  const factory _ResultReceived(Either<Failure, User> failureOrUser) =
      _$_ResultReceived;

  Either<Failure, User> get failureOrUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResultReceivedCopyWith<_ResultReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WatchCurrentUserStateTearOff {
  const _$WatchCurrentUserStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadSuccess loadSuccess(User user) {
    return _LoadSuccess(
      user,
    );
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $WatchCurrentUserState = _$WatchCurrentUserStateTearOff();

/// @nodoc
mixin _$WatchCurrentUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchCurrentUserStateCopyWith<$Res> {
  factory $WatchCurrentUserStateCopyWith(WatchCurrentUserState value,
          $Res Function(WatchCurrentUserState) then) =
      _$WatchCurrentUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchCurrentUserStateCopyWithImpl<$Res>
    implements $WatchCurrentUserStateCopyWith<$Res> {
  _$WatchCurrentUserStateCopyWithImpl(this._value, this._then);

  final WatchCurrentUserState _value;
  // ignore: unused_field
  final $Res Function(WatchCurrentUserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$WatchCurrentUserStateCopyWithImpl<$Res>
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
    return 'WatchCurrentUserState.initial()';
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
    required TResult Function(User user) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loadSuccess,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Initial implements WatchCurrentUserState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$WatchCurrentUserStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_LoadSuccess(
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

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'WatchCurrentUserState.loadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _LoadSuccess implements WatchCurrentUserState {
  const factory _LoadSuccess(User user) = _$_LoadSuccess;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$WatchCurrentUserStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
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
    return 'WatchCurrentUserState.loadFailure(failure: $failure)';
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

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loadSuccess,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _LoadFailure implements WatchCurrentUserState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
