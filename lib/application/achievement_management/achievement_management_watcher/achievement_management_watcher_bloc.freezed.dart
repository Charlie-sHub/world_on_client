// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'achievement_management_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AchievementManagementWatcherEventTearOff {
  const _$AchievementManagementWatcherEventTearOff();

// ignore: unused_element
  _WatchAllAchievementsStarted watchAllAchievementsStarted() {
    return const _WatchAllAchievementsStarted();
  }

// ignore: unused_element
  _ResultsReceived resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements) {
    return _ResultsReceived(
      failureOrAchievements,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AchievementManagementWatcherEvent = _$AchievementManagementWatcherEventTearOff();

/// @nodoc
mixin _$AchievementManagementWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllAchievementsStarted(),
    @required Result resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllAchievementsStarted(),
    Result resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AchievementManagementWatcherEventCopyWith<$Res> {
  factory $AchievementManagementWatcherEventCopyWith(AchievementManagementWatcherEvent value, $Res Function(AchievementManagementWatcherEvent) then) =
      _$AchievementManagementWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AchievementManagementWatcherEventCopyWithImpl<$Res> implements $AchievementManagementWatcherEventCopyWith<$Res> {
  _$AchievementManagementWatcherEventCopyWithImpl(this._value, this._then);

  final AchievementManagementWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(AchievementManagementWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllAchievementsStartedCopyWith<$Res> {
  factory _$WatchAllAchievementsStartedCopyWith(_WatchAllAchievementsStarted value,
    $Res Function(_WatchAllAchievementsStarted) then) =
  __$WatchAllAchievementsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllAchievementsStartedCopyWithImpl<$Res> extends _$AchievementManagementWatcherEventCopyWithImpl<$Res>
  implements _$WatchAllAchievementsStartedCopyWith<$Res> {
  __$WatchAllAchievementsStartedCopyWithImpl(_WatchAllAchievementsStarted _value,
    $Res Function(_WatchAllAchievementsStarted) _then)
    : super(_value, (v) => _then(v as _WatchAllAchievementsStarted));
  
  @override
  _WatchAllAchievementsStarted get _value =>
    super._value as _WatchAllAchievementsStarted;
}

/// @nodoc
class _$_WatchAllAchievementsStarted implements _WatchAllAchievementsStarted {
  const _$_WatchAllAchievementsStarted();

  @override
  String toString() {
    return 'AchievementManagementWatcherEvent.watchAllAchievementsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllAchievementsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllAchievementsStarted(),
    @required Result resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements),
  }) {
    assert(watchAllAchievementsStarted != null);
    assert(resultsReceived != null);
    return watchAllAchievementsStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllAchievementsStarted(),
    Result resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllAchievementsStarted != null) {
      return watchAllAchievementsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(watchAllAchievementsStarted != null);
    assert(resultsReceived != null);
    return watchAllAchievementsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllAchievementsStarted != null) {
      return watchAllAchievementsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllAchievementsStarted
  implements AchievementManagementWatcherEvent {
  const factory _WatchAllAchievementsStarted() = _$_WatchAllAchievementsStarted;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) =
  __$ResultsReceivedCopyWithImpl<$Res>;
  
  $Res call({Either<Failure, KtList<Achievement>> failureOrAchievements});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$AchievementManagementWatcherEventCopyWithImpl<$Res>
  implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then)
    : super(_value, (v) => _then(v as _ResultsReceived));
  
  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;
  
  @override
  $Res call({
    Object failureOrAchievements = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrAchievements == freezed
        ? _value.failureOrAchievements
        : failureOrAchievements as Either<Failure, KtList<Achievement>>,
    ));
  }
}

/// @nodoc
class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrAchievements)
    : assert(failureOrAchievements != null);
  
  @override
  final Either<Failure, KtList<Achievement>> failureOrAchievements;
  
  @override
  String toString() {
    return 'AchievementManagementWatcherEvent.resultsReceived(failureOrAchievements: $failureOrAchievements)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ResultsReceived &&
        (identical(other.failureOrAchievements, failureOrAchievements) ||
          const DeepCollectionEquality().equals(
            other.failureOrAchievements, failureOrAchievements)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(failureOrAchievements);
  
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith =>
    __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllAchievementsStarted(),
    @required Result resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements),
  }) {
    assert(watchAllAchievementsStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(failureOrAchievements);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllAchievementsStarted(),
    Result resultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(failureOrAchievements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(watchAllAchievementsStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
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

abstract class _ResultsReceived implements AchievementManagementWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Achievement>> failureOrAchievements) =
  _$_ResultsReceived;
  
  Either<Failure, KtList<Achievement>> get failureOrAchievements;
  
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith;
}

/// @nodoc
class _$AchievementManagementWatcherStateTearOff {
  const _$AchievementManagementWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Achievement> achievements) {
    return _LoadSuccess(
      achievements,
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
const $AchievementManagementWatcherState =
_$AchievementManagementWatcherStateTearOff();

/// @nodoc
mixin _$AchievementManagementWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Achievement> achievements),
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

/// @nodoc
abstract class $AchievementManagementWatcherStateCopyWith<$Res> {
  factory $AchievementManagementWatcherStateCopyWith(AchievementManagementWatcherState value,
    $Res Function(AchievementManagementWatcherState) then) =
  _$AchievementManagementWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AchievementManagementWatcherStateCopyWithImpl<$Res>
  implements $AchievementManagementWatcherStateCopyWith<$Res> {
  _$AchievementManagementWatcherStateCopyWithImpl(this._value, this._then);
  
  final AchievementManagementWatcherState _value;
  
  // ignore: unused_field
  final $Res Function(AchievementManagementWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
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
    return 'AchievementManagementWatcherState.initial()';
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
    @required Result loadSuccess(KtList<Achievement> achievements),
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
    Result loadSuccess(KtList<Achievement> achievements),
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

abstract class _Initial implements AchievementManagementWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
  __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
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
    return 'AchievementManagementWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtList<Achievement> achievements),
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
    Result loadSuccess(KtList<Achievement> achievements),
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

abstract class _LoadInProgress implements AchievementManagementWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) =
  __$LoadSuccessCopyWithImpl<$Res>;
  
  $Res call({KtList<Achievement> achievements});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
  implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then)
    : super(_value, (v) => _then(v as _LoadSuccess));
  
  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
  
  @override
  $Res call({
    Object achievements = freezed,
  }) {
    return _then(_LoadSuccess(
      achievements == freezed
        ? _value.achievements
        : achievements as KtList<Achievement>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.achievements) : assert(achievements != null);

  @override
  final KtList<Achievement> achievements;

  @override
  String toString() {
    return 'AchievementManagementWatcherState.loadSuccess(achievements: $achievements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _LoadSuccess &&
        (identical(other.achievements, achievements) ||
          const DeepCollectionEquality()
            .equals(other.achievements, achievements)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(achievements);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
    __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(achievements);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Achievement> achievements),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(achievements);
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

abstract class _LoadSuccess implements AchievementManagementWatcherState {
  const factory _LoadSuccess(KtList<Achievement> achievements) = _$_LoadSuccess;

  KtList<Achievement> get achievements;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) =
  __$LoadFailureCopyWithImpl<$Res>;
  
  $Res call({Failure<dynamic> failure});
  
  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
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

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'AchievementManagementWatcherState.loadFailure(failure: $failure)';
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
    @required Result loadSuccess(KtList<Achievement> achievements),
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
    Result loadSuccess(KtList<Achievement> achievements),
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

abstract class _LoadFailure implements AchievementManagementWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
