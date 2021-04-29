// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_experiences_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileExperiencesWatcherEventTearOff {
  const _$ProfileExperiencesWatcherEventTearOff();

  _WatchExperiencesDoneStarted watchExperiencesDoneStarted(User user) {
    return _WatchExperiencesDoneStarted(
      user,
    );
  }

  _WatchExperiencesLikedStarted watchExperiencesLikedStarted(User user) {
    return _WatchExperiencesLikedStarted(
      user,
    );
  }

  _WatchExperiencesCreatedStarted watchExperiencesCreatedStarted(User user) {
    return _WatchExperiencesCreatedStarted(
      user,
    );
  }

  _ExperiencesReceived experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences) {
    return _ExperiencesReceived(
      failureOrExperiences,
    );
  }
}

/// @nodoc
const $ProfileExperiencesWatcherEvent = _$ProfileExperiencesWatcherEventTearOff();

/// @nodoc
mixin _$ProfileExperiencesWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchExperiencesDoneStarted,
    required TResult Function(User user) watchExperiencesLikedStarted,
    required TResult Function(User user) watchExperiencesCreatedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) experiencesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchExperiencesDoneStarted,
    TResult Function(User user)? watchExperiencesLikedStarted,
    TResult Function(User user)? watchExperiencesCreatedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? experiencesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchExperiencesDoneStarted value) watchExperiencesDoneStarted,
    required TResult Function(_WatchExperiencesLikedStarted value) watchExperiencesLikedStarted,
    required TResult Function(_WatchExperiencesCreatedStarted value) watchExperiencesCreatedStarted,
    required TResult Function(_ExperiencesReceived value) experiencesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchExperiencesDoneStarted value)? watchExperiencesDoneStarted,
    TResult Function(_WatchExperiencesLikedStarted value)? watchExperiencesLikedStarted,
    TResult Function(_WatchExperiencesCreatedStarted value)? watchExperiencesCreatedStarted,
    TResult Function(_ExperiencesReceived value)? experiencesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileExperiencesWatcherEventCopyWith<$Res> {
  factory $ProfileExperiencesWatcherEventCopyWith(ProfileExperiencesWatcherEvent value, $Res Function(ProfileExperiencesWatcherEvent) then) = _$ProfileExperiencesWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileExperiencesWatcherEventCopyWithImpl<$Res> implements $ProfileExperiencesWatcherEventCopyWith<$Res> {
  _$ProfileExperiencesWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileExperiencesWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(ProfileExperiencesWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchExperiencesDoneStartedCopyWith<$Res> {
  factory _$WatchExperiencesDoneStartedCopyWith(_WatchExperiencesDoneStarted value, $Res Function(_WatchExperiencesDoneStarted) then) = __$WatchExperiencesDoneStartedCopyWithImpl<$Res>;

  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$WatchExperiencesDoneStartedCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res> implements _$WatchExperiencesDoneStartedCopyWith<$Res> {
  __$WatchExperiencesDoneStartedCopyWithImpl(_WatchExperiencesDoneStarted _value, $Res Function(_WatchExperiencesDoneStarted) _then) : super(_value, (v) => _then(v as _WatchExperiencesDoneStarted));

  @override
  _WatchExperiencesDoneStarted get _value => super._value as _WatchExperiencesDoneStarted;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_WatchExperiencesDoneStarted(
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

class _$_WatchExperiencesDoneStarted implements _WatchExperiencesDoneStarted {
  const _$_WatchExperiencesDoneStarted(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchExperiencesDoneStarted && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$WatchExperiencesDoneStartedCopyWith<_WatchExperiencesDoneStarted> get copyWith => __$WatchExperiencesDoneStartedCopyWithImpl<_WatchExperiencesDoneStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchExperiencesDoneStarted,
    required TResult Function(User user) watchExperiencesLikedStarted,
    required TResult Function(User user) watchExperiencesCreatedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) experiencesReceived,
  }) {
    return watchExperiencesDoneStarted(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchExperiencesDoneStarted,
    TResult Function(User user)? watchExperiencesLikedStarted,
    TResult Function(User user)? watchExperiencesCreatedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (watchExperiencesDoneStarted != null) {
      return watchExperiencesDoneStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchExperiencesDoneStarted value) watchExperiencesDoneStarted,
    required TResult Function(_WatchExperiencesLikedStarted value) watchExperiencesLikedStarted,
    required TResult Function(_WatchExperiencesCreatedStarted value) watchExperiencesCreatedStarted,
    required TResult Function(_ExperiencesReceived value) experiencesReceived,
  }) {
    return watchExperiencesDoneStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchExperiencesDoneStarted value)? watchExperiencesDoneStarted,
    TResult Function(_WatchExperiencesLikedStarted value)? watchExperiencesLikedStarted,
    TResult Function(_WatchExperiencesCreatedStarted value)? watchExperiencesCreatedStarted,
    TResult Function(_ExperiencesReceived value)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (watchExperiencesDoneStarted != null) {
      return watchExperiencesDoneStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesDoneStarted implements ProfileExperiencesWatcherEvent {
  const factory _WatchExperiencesDoneStarted(User user) = _$_WatchExperiencesDoneStarted;

  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$WatchExperiencesDoneStartedCopyWith<_WatchExperiencesDoneStarted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchExperiencesLikedStartedCopyWith<$Res> {
  factory _$WatchExperiencesLikedStartedCopyWith(_WatchExperiencesLikedStarted value, $Res Function(_WatchExperiencesLikedStarted) then) = __$WatchExperiencesLikedStartedCopyWithImpl<$Res>;

  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$WatchExperiencesLikedStartedCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res> implements _$WatchExperiencesLikedStartedCopyWith<$Res> {
  __$WatchExperiencesLikedStartedCopyWithImpl(_WatchExperiencesLikedStarted _value, $Res Function(_WatchExperiencesLikedStarted) _then)
      : super(_value, (v) => _then(v as _WatchExperiencesLikedStarted));

  @override
  _WatchExperiencesLikedStarted get _value => super._value as _WatchExperiencesLikedStarted;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_WatchExperiencesLikedStarted(
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

class _$_WatchExperiencesLikedStarted implements _WatchExperiencesLikedStarted {
  const _$_WatchExperiencesLikedStarted(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchExperiencesLikedStarted && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$WatchExperiencesLikedStartedCopyWith<_WatchExperiencesLikedStarted> get copyWith => __$WatchExperiencesLikedStartedCopyWithImpl<_WatchExperiencesLikedStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchExperiencesDoneStarted,
    required TResult Function(User user) watchExperiencesLikedStarted,
    required TResult Function(User user) watchExperiencesCreatedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) experiencesReceived,
  }) {
    return watchExperiencesLikedStarted(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchExperiencesDoneStarted,
    TResult Function(User user)? watchExperiencesLikedStarted,
    TResult Function(User user)? watchExperiencesCreatedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (watchExperiencesLikedStarted != null) {
      return watchExperiencesLikedStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchExperiencesDoneStarted value) watchExperiencesDoneStarted,
    required TResult Function(_WatchExperiencesLikedStarted value) watchExperiencesLikedStarted,
    required TResult Function(_WatchExperiencesCreatedStarted value) watchExperiencesCreatedStarted,
    required TResult Function(_ExperiencesReceived value) experiencesReceived,
  }) {
    return watchExperiencesLikedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchExperiencesDoneStarted value)? watchExperiencesDoneStarted,
    TResult Function(_WatchExperiencesLikedStarted value)? watchExperiencesLikedStarted,
    TResult Function(_WatchExperiencesCreatedStarted value)? watchExperiencesCreatedStarted,
    TResult Function(_ExperiencesReceived value)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (watchExperiencesLikedStarted != null) {
      return watchExperiencesLikedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesLikedStarted implements ProfileExperiencesWatcherEvent {
  const factory _WatchExperiencesLikedStarted(User user) = _$_WatchExperiencesLikedStarted;

  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$WatchExperiencesLikedStartedCopyWith<_WatchExperiencesLikedStarted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WatchExperiencesCreatedStartedCopyWith<$Res> {
  factory _$WatchExperiencesCreatedStartedCopyWith(_WatchExperiencesCreatedStarted value, $Res Function(_WatchExperiencesCreatedStarted) then) = __$WatchExperiencesCreatedStartedCopyWithImpl<$Res>;

  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$WatchExperiencesCreatedStartedCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res> implements _$WatchExperiencesCreatedStartedCopyWith<$Res> {
  __$WatchExperiencesCreatedStartedCopyWithImpl(_WatchExperiencesCreatedStarted _value, $Res Function(_WatchExperiencesCreatedStarted) _then)
      : super(_value, (v) => _then(v as _WatchExperiencesCreatedStarted));

  @override
  _WatchExperiencesCreatedStarted get _value => super._value as _WatchExperiencesCreatedStarted;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_WatchExperiencesCreatedStarted(
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

class _$_WatchExperiencesCreatedStarted implements _WatchExperiencesCreatedStarted {
  const _$_WatchExperiencesCreatedStarted(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchExperiencesCreatedStarted && (identical(other.user, user) || const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$WatchExperiencesCreatedStartedCopyWith<_WatchExperiencesCreatedStarted> get copyWith => __$WatchExperiencesCreatedStartedCopyWithImpl<_WatchExperiencesCreatedStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchExperiencesDoneStarted,
    required TResult Function(User user) watchExperiencesLikedStarted,
    required TResult Function(User user) watchExperiencesCreatedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) experiencesReceived,
  }) {
    return watchExperiencesCreatedStarted(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchExperiencesDoneStarted,
    TResult Function(User user)? watchExperiencesLikedStarted,
    TResult Function(User user)? watchExperiencesCreatedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (watchExperiencesCreatedStarted != null) {
      return watchExperiencesCreatedStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchExperiencesDoneStarted value) watchExperiencesDoneStarted,
    required TResult Function(_WatchExperiencesLikedStarted value) watchExperiencesLikedStarted,
    required TResult Function(_WatchExperiencesCreatedStarted value) watchExperiencesCreatedStarted,
    required TResult Function(_ExperiencesReceived value) experiencesReceived,
  }) {
    return watchExperiencesCreatedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchExperiencesDoneStarted value)? watchExperiencesDoneStarted,
    TResult Function(_WatchExperiencesLikedStarted value)? watchExperiencesLikedStarted,
    TResult Function(_WatchExperiencesCreatedStarted value)? watchExperiencesCreatedStarted,
    TResult Function(_ExperiencesReceived value)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (watchExperiencesCreatedStarted != null) {
      return watchExperiencesCreatedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesCreatedStarted implements ProfileExperiencesWatcherEvent {
  const factory _WatchExperiencesCreatedStarted(User user) = _$_WatchExperiencesCreatedStarted;

  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$WatchExperiencesCreatedStartedCopyWith<_WatchExperiencesCreatedStarted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExperiencesReceivedCopyWith<$Res> {
  factory _$ExperiencesReceivedCopyWith(_ExperiencesReceived value, $Res Function(_ExperiencesReceived) then) = __$ExperiencesReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, KtList<Experience>> failureOrExperiences});
}

/// @nodoc
class __$ExperiencesReceivedCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res> implements _$ExperiencesReceivedCopyWith<$Res> {
  __$ExperiencesReceivedCopyWithImpl(_ExperiencesReceived _value, $Res Function(_ExperiencesReceived) _then) : super(_value, (v) => _then(v as _ExperiencesReceived));

  @override
  _ExperiencesReceived get _value => super._value as _ExperiencesReceived;

  @override
  $Res call({
    Object? failureOrExperiences = freezed,
  }) {
    return _then(_ExperiencesReceived(
      failureOrExperiences == freezed
          ? _value.failureOrExperiences
          : failureOrExperiences // ignore: cast_nullable_to_non_nullable
              as Either<Failure, KtList<Experience>>,
    ));
  }
}

/// @nodoc

class _$_ExperiencesReceived implements _ExperiencesReceived {
  const _$_ExperiencesReceived(this.failureOrExperiences);

  @override
  final Either<Failure, KtList<Experience>> failureOrExperiences;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.experiencesReceived(failureOrExperiences: $failureOrExperiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperiencesReceived && (identical(other.failureOrExperiences, failureOrExperiences) || const DeepCollectionEquality().equals(other.failureOrExperiences, failureOrExperiences)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrExperiences);

  @JsonKey(ignore: true)
  @override
  _$ExperiencesReceivedCopyWith<_ExperiencesReceived> get copyWith => __$ExperiencesReceivedCopyWithImpl<_ExperiencesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) watchExperiencesDoneStarted,
    required TResult Function(User user) watchExperiencesLikedStarted,
    required TResult Function(User user) watchExperiencesCreatedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) experiencesReceived,
  }) {
    return experiencesReceived(failureOrExperiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? watchExperiencesDoneStarted,
    TResult Function(User user)? watchExperiencesLikedStarted,
    TResult Function(User user)? watchExperiencesCreatedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (experiencesReceived != null) {
      return experiencesReceived(failureOrExperiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchExperiencesDoneStarted value) watchExperiencesDoneStarted,
    required TResult Function(_WatchExperiencesLikedStarted value) watchExperiencesLikedStarted,
    required TResult Function(_WatchExperiencesCreatedStarted value) watchExperiencesCreatedStarted,
    required TResult Function(_ExperiencesReceived value) experiencesReceived,
  }) {
    return experiencesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchExperiencesDoneStarted value)? watchExperiencesDoneStarted,
    TResult Function(_WatchExperiencesLikedStarted value)? watchExperiencesLikedStarted,
    TResult Function(_WatchExperiencesCreatedStarted value)? watchExperiencesCreatedStarted,
    TResult Function(_ExperiencesReceived value)? experiencesReceived,
    required TResult orElse(),
  }) {
    if (experiencesReceived != null) {
      return experiencesReceived(this);
    }
    return orElse();
  }
}

abstract class _ExperiencesReceived implements ProfileExperiencesWatcherEvent {
  const factory _ExperiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _$_ExperiencesReceived;

  Either<Failure, KtList<Experience>> get failureOrExperiences => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ExperiencesReceivedCopyWith<_ExperiencesReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileExperiencesWatcherStateTearOff {
  const _$ProfileExperiencesWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Experience> experiences) {
    return _LoadSuccess(
      experiences,
    );
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $ProfileExperiencesWatcherState = _$ProfileExperiencesWatcherStateTearOff();

/// @nodoc
mixin _$ProfileExperiencesWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Experience> experiences) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Experience> experiences)? loadSuccess,
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
abstract class $ProfileExperiencesWatcherStateCopyWith<$Res> {
  factory $ProfileExperiencesWatcherStateCopyWith(ProfileExperiencesWatcherState value, $Res Function(ProfileExperiencesWatcherState) then) = _$ProfileExperiencesWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileExperiencesWatcherStateCopyWithImpl<$Res> implements $ProfileExperiencesWatcherStateCopyWith<$Res> {
  _$ProfileExperiencesWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileExperiencesWatcherState _value;

  // ignore: unused_field
  final $Res Function(ProfileExperiencesWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProfileExperiencesWatcherState.initial()';
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
    required TResult Function(KtList<Experience> experiences) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Experience> experiences)? loadSuccess,
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

abstract class _Initial implements ProfileExperiencesWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ProfileExperiencesWatcherState.loadInProgress()';
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
    required TResult Function(KtList<Experience> experiences) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Experience> experiences)? loadSuccess,
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

abstract class _LoadInProgress implements ProfileExperiencesWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) = __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Experience> experiences});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then) : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? experiences = freezed,
  }) {
    return _then(_LoadSuccess(
      experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as KtList<Experience>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.experiences);

  @override
  final KtList<Experience> experiences;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherState.loadSuccess(experiences: $experiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess && (identical(other.experiences, experiences) || const DeepCollectionEquality().equals(other.experiences, experiences)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experiences);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Experience> experiences) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadSuccess(experiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Experience> experiences)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(experiences);
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

abstract class _LoadSuccess implements ProfileExperiencesWatcherState {
  const factory _LoadSuccess(KtList<Experience> experiences) = _$_LoadSuccess;

  KtList<Experience> get experiences => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(_LoadFailure _value, $Res Function(_LoadFailure) _then) : super(_value, (v) => _then(v as _LoadFailure));

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
    return 'ProfileExperiencesWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Experience> experiences) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Experience> experiences)? loadSuccess,
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

abstract class _LoadFailure implements ProfileExperiencesWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => throw _privateConstructorUsedError;
}
