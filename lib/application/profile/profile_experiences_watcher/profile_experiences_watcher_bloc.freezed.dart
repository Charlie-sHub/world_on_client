// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_experiences_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProfileExperiencesWatcherEventTearOff {
  const _$ProfileExperiencesWatcherEventTearOff();

// ignore: unused_element
  _WatchExperiencesDoneStarted watchExperiencesDoneStarted(User user) {
    return _WatchExperiencesDoneStarted(
      user,
    );
  }

// ignore: unused_element
  _WatchExperiencesLikedStarted watchExperiencesLikedStarted(User user) {
    return _WatchExperiencesLikedStarted(
      user,
    );
  }

// ignore: unused_element
  _WatchExperiencesCreatedStarted watchExperiencesCreatedStarted(User user) {
    return _WatchExperiencesCreatedStarted(
      user,
    );
  }

// ignore: unused_element
  _ExperiencesReceived experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences) {
    return _ExperiencesReceived(
      failureOrExperiences,
    );
  }
}

// ignore: unused_element
const $ProfileExperiencesWatcherEvent =
    _$ProfileExperiencesWatcherEventTearOff();

mixin _$ProfileExperiencesWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesDoneStarted(User user),
    @required Result watchExperiencesLikedStarted(User user),
    @required Result watchExperiencesCreatedStarted(User user),
    @required
        Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesDoneStarted(User user),
    Result watchExperiencesLikedStarted(User user),
    Result watchExperiencesCreatedStarted(User user),
    Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    @required
        Result watchExperiencesLikedStarted(
            _WatchExperiencesLikedStarted value),
    @required
        Result watchExperiencesCreatedStarted(
            _WatchExperiencesCreatedStarted value),
    @required Result experiencesReceived(_ExperiencesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    Result watchExperiencesLikedStarted(_WatchExperiencesLikedStarted value),
    Result watchExperiencesCreatedStarted(
        _WatchExperiencesCreatedStarted value),
    Result experiencesReceived(_ExperiencesReceived value),
    @required Result orElse(),
  });
}

abstract class $ProfileExperiencesWatcherEventCopyWith<$Res> {
  factory $ProfileExperiencesWatcherEventCopyWith(
          ProfileExperiencesWatcherEvent value,
          $Res Function(ProfileExperiencesWatcherEvent) then) =
      _$ProfileExperiencesWatcherEventCopyWithImpl<$Res>;
}

class _$ProfileExperiencesWatcherEventCopyWithImpl<$Res>
    implements $ProfileExperiencesWatcherEventCopyWith<$Res> {
  _$ProfileExperiencesWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileExperiencesWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileExperiencesWatcherEvent) _then;
}

abstract class _$WatchExperiencesDoneStartedCopyWith<$Res> {
  factory _$WatchExperiencesDoneStartedCopyWith(
          _WatchExperiencesDoneStarted value,
          $Res Function(_WatchExperiencesDoneStarted) then) =
      __$WatchExperiencesDoneStartedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$WatchExperiencesDoneStartedCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res>
    implements _$WatchExperiencesDoneStartedCopyWith<$Res> {
  __$WatchExperiencesDoneStartedCopyWithImpl(
      _WatchExperiencesDoneStarted _value,
      $Res Function(_WatchExperiencesDoneStarted) _then)
      : super(_value, (v) => _then(v as _WatchExperiencesDoneStarted));

  @override
  _WatchExperiencesDoneStarted get _value =>
      super._value as _WatchExperiencesDoneStarted;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_WatchExperiencesDoneStarted(
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

class _$_WatchExperiencesDoneStarted implements _WatchExperiencesDoneStarted {
  const _$_WatchExperiencesDoneStarted(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.watchExperiencesDoneStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchExperiencesDoneStarted &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$WatchExperiencesDoneStartedCopyWith<_WatchExperiencesDoneStarted>
      get copyWith => __$WatchExperiencesDoneStartedCopyWithImpl<
          _WatchExperiencesDoneStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesDoneStarted(User user),
    @required Result watchExperiencesLikedStarted(User user),
    @required Result watchExperiencesCreatedStarted(User user),
    @required
        Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return watchExperiencesDoneStarted(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesDoneStarted(User user),
    Result watchExperiencesLikedStarted(User user),
    Result watchExperiencesCreatedStarted(User user),
    Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesDoneStarted != null) {
      return watchExperiencesDoneStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    @required
        Result watchExperiencesLikedStarted(
            _WatchExperiencesLikedStarted value),
    @required
        Result watchExperiencesCreatedStarted(
            _WatchExperiencesCreatedStarted value),
    @required Result experiencesReceived(_ExperiencesReceived value),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return watchExperiencesDoneStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    Result watchExperiencesLikedStarted(_WatchExperiencesLikedStarted value),
    Result watchExperiencesCreatedStarted(
        _WatchExperiencesCreatedStarted value),
    Result experiencesReceived(_ExperiencesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesDoneStarted != null) {
      return watchExperiencesDoneStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesDoneStarted
    implements ProfileExperiencesWatcherEvent {
  const factory _WatchExperiencesDoneStarted(User user) =
      _$_WatchExperiencesDoneStarted;

  User get user;
  _$WatchExperiencesDoneStartedCopyWith<_WatchExperiencesDoneStarted>
      get copyWith;
}

abstract class _$WatchExperiencesLikedStartedCopyWith<$Res> {
  factory _$WatchExperiencesLikedStartedCopyWith(
          _WatchExperiencesLikedStarted value,
          $Res Function(_WatchExperiencesLikedStarted) then) =
      __$WatchExperiencesLikedStartedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$WatchExperiencesLikedStartedCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res>
    implements _$WatchExperiencesLikedStartedCopyWith<$Res> {
  __$WatchExperiencesLikedStartedCopyWithImpl(
      _WatchExperiencesLikedStarted _value,
      $Res Function(_WatchExperiencesLikedStarted) _then)
      : super(_value, (v) => _then(v as _WatchExperiencesLikedStarted));

  @override
  _WatchExperiencesLikedStarted get _value =>
      super._value as _WatchExperiencesLikedStarted;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_WatchExperiencesLikedStarted(
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

class _$_WatchExperiencesLikedStarted implements _WatchExperiencesLikedStarted {
  const _$_WatchExperiencesLikedStarted(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.watchExperiencesLikedStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchExperiencesLikedStarted &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$WatchExperiencesLikedStartedCopyWith<_WatchExperiencesLikedStarted>
      get copyWith => __$WatchExperiencesLikedStartedCopyWithImpl<
          _WatchExperiencesLikedStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesDoneStarted(User user),
    @required Result watchExperiencesLikedStarted(User user),
    @required Result watchExperiencesCreatedStarted(User user),
    @required
        Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return watchExperiencesLikedStarted(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesDoneStarted(User user),
    Result watchExperiencesLikedStarted(User user),
    Result watchExperiencesCreatedStarted(User user),
    Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesLikedStarted != null) {
      return watchExperiencesLikedStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    @required
        Result watchExperiencesLikedStarted(
            _WatchExperiencesLikedStarted value),
    @required
        Result watchExperiencesCreatedStarted(
            _WatchExperiencesCreatedStarted value),
    @required Result experiencesReceived(_ExperiencesReceived value),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return watchExperiencesLikedStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    Result watchExperiencesLikedStarted(_WatchExperiencesLikedStarted value),
    Result watchExperiencesCreatedStarted(
        _WatchExperiencesCreatedStarted value),
    Result experiencesReceived(_ExperiencesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesLikedStarted != null) {
      return watchExperiencesLikedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesLikedStarted
    implements ProfileExperiencesWatcherEvent {
  const factory _WatchExperiencesLikedStarted(User user) =
      _$_WatchExperiencesLikedStarted;

  User get user;
  _$WatchExperiencesLikedStartedCopyWith<_WatchExperiencesLikedStarted>
      get copyWith;
}

abstract class _$WatchExperiencesCreatedStartedCopyWith<$Res> {
  factory _$WatchExperiencesCreatedStartedCopyWith(
          _WatchExperiencesCreatedStarted value,
          $Res Function(_WatchExperiencesCreatedStarted) then) =
      __$WatchExperiencesCreatedStartedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$WatchExperiencesCreatedStartedCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res>
    implements _$WatchExperiencesCreatedStartedCopyWith<$Res> {
  __$WatchExperiencesCreatedStartedCopyWithImpl(
      _WatchExperiencesCreatedStarted _value,
      $Res Function(_WatchExperiencesCreatedStarted) _then)
      : super(_value, (v) => _then(v as _WatchExperiencesCreatedStarted));

  @override
  _WatchExperiencesCreatedStarted get _value =>
      super._value as _WatchExperiencesCreatedStarted;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_WatchExperiencesCreatedStarted(
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

class _$_WatchExperiencesCreatedStarted
    implements _WatchExperiencesCreatedStarted {
  const _$_WatchExperiencesCreatedStarted(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.watchExperiencesCreatedStarted(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchExperiencesCreatedStarted &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$WatchExperiencesCreatedStartedCopyWith<_WatchExperiencesCreatedStarted>
      get copyWith => __$WatchExperiencesCreatedStartedCopyWithImpl<
          _WatchExperiencesCreatedStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesDoneStarted(User user),
    @required Result watchExperiencesLikedStarted(User user),
    @required Result watchExperiencesCreatedStarted(User user),
    @required
        Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return watchExperiencesCreatedStarted(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesDoneStarted(User user),
    Result watchExperiencesLikedStarted(User user),
    Result watchExperiencesCreatedStarted(User user),
    Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesCreatedStarted != null) {
      return watchExperiencesCreatedStarted(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    @required
        Result watchExperiencesLikedStarted(
            _WatchExperiencesLikedStarted value),
    @required
        Result watchExperiencesCreatedStarted(
            _WatchExperiencesCreatedStarted value),
    @required Result experiencesReceived(_ExperiencesReceived value),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return watchExperiencesCreatedStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    Result watchExperiencesLikedStarted(_WatchExperiencesLikedStarted value),
    Result watchExperiencesCreatedStarted(
        _WatchExperiencesCreatedStarted value),
    Result experiencesReceived(_ExperiencesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesCreatedStarted != null) {
      return watchExperiencesCreatedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesCreatedStarted
    implements ProfileExperiencesWatcherEvent {
  const factory _WatchExperiencesCreatedStarted(User user) =
      _$_WatchExperiencesCreatedStarted;

  User get user;
  _$WatchExperiencesCreatedStartedCopyWith<_WatchExperiencesCreatedStarted>
      get copyWith;
}

abstract class _$ExperiencesReceivedCopyWith<$Res> {
  factory _$ExperiencesReceivedCopyWith(_ExperiencesReceived value,
          $Res Function(_ExperiencesReceived) then) =
      __$ExperiencesReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, KtList<Experience>> failureOrExperiences});
}

class __$ExperiencesReceivedCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherEventCopyWithImpl<$Res>
    implements _$ExperiencesReceivedCopyWith<$Res> {
  __$ExperiencesReceivedCopyWithImpl(
      _ExperiencesReceived _value, $Res Function(_ExperiencesReceived) _then)
      : super(_value, (v) => _then(v as _ExperiencesReceived));

  @override
  _ExperiencesReceived get _value => super._value as _ExperiencesReceived;

  @override
  $Res call({
    Object failureOrExperiences = freezed,
  }) {
    return _then(_ExperiencesReceived(
      failureOrExperiences == freezed
          ? _value.failureOrExperiences : failureOrExperiences as Either<Failure, KtList<Experience>>,
    ));
  }
}

class _$_ExperiencesReceived implements _ExperiencesReceived {
  const _$_ExperiencesReceived(this.failureOrExperiences)
      : assert(failureOrExperiences != null);

  @override
  final Either<Failure, KtList<Experience>> failureOrExperiences;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherEvent.experiencesReceived(failureOrExperiences: $failureOrExperiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperiencesReceived &&
            (identical(other.failureOrExperiences, failureOrExperiences) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrExperiences, failureOrExperiences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrExperiences);

  @override
  _$ExperiencesReceivedCopyWith<_ExperiencesReceived> get copyWith =>
      __$ExperiencesReceivedCopyWithImpl<_ExperiencesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesDoneStarted(User user),
    @required Result watchExperiencesLikedStarted(User user),
    @required Result watchExperiencesCreatedStarted(User user),
    @required
        Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return experiencesReceived(failureOrExperiences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesDoneStarted(User user),
    Result watchExperiencesLikedStarted(User user),
    Result watchExperiencesCreatedStarted(User user),
    Result experiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (experiencesReceived != null) {
      return experiencesReceived(failureOrExperiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    @required
        Result watchExperiencesLikedStarted(
            _WatchExperiencesLikedStarted value),
    @required
        Result watchExperiencesCreatedStarted(
            _WatchExperiencesCreatedStarted value),
    @required Result experiencesReceived(_ExperiencesReceived value),
  }) {
    assert(watchExperiencesDoneStarted != null);
    assert(watchExperiencesLikedStarted != null);
    assert(watchExperiencesCreatedStarted != null);
    assert(experiencesReceived != null);
    return experiencesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesDoneStarted(_WatchExperiencesDoneStarted value),
    Result watchExperiencesLikedStarted(_WatchExperiencesLikedStarted value),
    Result watchExperiencesCreatedStarted(
        _WatchExperiencesCreatedStarted value),
    Result experiencesReceived(_ExperiencesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (experiencesReceived != null) {
      return experiencesReceived(this);
    }
    return orElse();
  }
}

abstract class _ExperiencesReceived implements ProfileExperiencesWatcherEvent {
  const factory _ExperiencesReceived(Either<Failure, KtList<Experience>> failureOrExperiences) =
      _$_ExperiencesReceived;

  Either<Failure, KtList<Experience>> get failureOrExperiences;
  _$ExperiencesReceivedCopyWith<_ExperiencesReceived> get copyWith;
}

class _$ProfileExperiencesWatcherStateTearOff {
  const _$ProfileExperiencesWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Experience> experiences) {
    return _LoadSuccess(
      experiences,
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
const $ProfileExperiencesWatcherState =
    _$ProfileExperiencesWatcherStateTearOff();

mixin _$ProfileExperiencesWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Experience> experiences),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Experience> experiences),
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

abstract class $ProfileExperiencesWatcherStateCopyWith<$Res> {
  factory $ProfileExperiencesWatcherStateCopyWith(
          ProfileExperiencesWatcherState value,
          $Res Function(ProfileExperiencesWatcherState) then) =
      _$ProfileExperiencesWatcherStateCopyWithImpl<$Res>;
}

class _$ProfileExperiencesWatcherStateCopyWithImpl<$Res>
    implements $ProfileExperiencesWatcherStateCopyWith<$Res> {
  _$ProfileExperiencesWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileExperiencesWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProfileExperiencesWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Experience> experiences),
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
    Result loadSuccess(KtList<Experience> experiences),
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

abstract class _Initial implements ProfileExperiencesWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Experience> experiences),
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
    Result loadSuccess(KtList<Experience> experiences),
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

abstract class _LoadInProgress implements ProfileExperiencesWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Experience> experiences});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object experiences = freezed,
  }) {
    return _then(_LoadSuccess(
      experiences == freezed
          ? _value.experiences
        : experiences as KtList<Experience>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.experiences) : assert(experiences != null);

  @override
  final KtList<Experience> experiences;

  @override
  String toString() {
    return 'ProfileExperiencesWatcherState.loadSuccess(experiences: $experiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.experiences, experiences) ||
                const DeepCollectionEquality()
                    .equals(other.experiences, experiences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experiences);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Experience> experiences),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(experiences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Experience> experiences),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(experiences);
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

abstract class _LoadSuccess implements ProfileExperiencesWatcherState {
  const factory _LoadSuccess(KtList<Experience> experiences) = _$_LoadSuccess;
  
  KtList<Experience> get experiences;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$ProfileExperiencesWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
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
    return 'ProfileExperiencesWatcherState.loadFailure(failure: $failure)';
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
    @required Result loadSuccess(KtList<Experience> experiences),
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
    Result loadSuccess(KtList<Experience> experiences),
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

abstract class _LoadFailure implements ProfileExperiencesWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
