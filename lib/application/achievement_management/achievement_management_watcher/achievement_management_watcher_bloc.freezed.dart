// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'achievement_management_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AchievementManagementWatcherEventTearOff {
  const _$AchievementManagementWatcherEventTearOff();

  _WatchAllAchievementsStarted watchAllAchievementsStarted() {
    return const _WatchAllAchievementsStarted();
  }
}

// ignore: unused_element
const $AchievementManagementWatcherEvent = _$AchievementManagementWatcherEventTearOff();

mixin _$AchievementManagementWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllAchievementsStarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllAchievementsStarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
    @required Result orElse(),
  });
}

abstract class $AchievementManagementWatcherEventCopyWith<$Res> {
  factory $AchievementManagementWatcherEventCopyWith(AchievementManagementWatcherEvent value, $Res Function(AchievementManagementWatcherEvent) then) =
      _$AchievementManagementWatcherEventCopyWithImpl<$Res>;
}

class _$AchievementManagementWatcherEventCopyWithImpl<$Res>
  implements $AchievementManagementWatcherEventCopyWith<$Res> {
  _$AchievementManagementWatcherEventCopyWithImpl(this._value, this._then);

  final AchievementManagementWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementWatcherEvent) _then;
}

abstract class _$WatchAllAchievementsStartedCopyWith<$Res> {
  factory _$WatchAllAchievementsStartedCopyWith(_WatchAllAchievementsStarted value,
    $Res Function(_WatchAllAchievementsStarted) then) =
  __$WatchAllAchievementsStartedCopyWithImpl<$Res>;
}

class __$WatchAllAchievementsStartedCopyWithImpl<$Res> extends _$AchievementManagementWatcherEventCopyWithImpl<$Res>
  implements _$WatchAllAchievementsStartedCopyWith<$Res> {
  __$WatchAllAchievementsStartedCopyWithImpl(_WatchAllAchievementsStarted _value,
    $Res Function(_WatchAllAchievementsStarted) _then)
    : super(_value, (v) => _then(v as _WatchAllAchievementsStarted));

  @override
  _WatchAllAchievementsStarted get _value =>
    super._value as _WatchAllAchievementsStarted;
}

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
  }) {
    assert(watchAllAchievementsStarted != null);
    return watchAllAchievementsStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllAchievementsStarted(),
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
  }) {
    assert(watchAllAchievementsStarted != null);
    return watchAllAchievementsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllAchievementsStarted(_WatchAllAchievementsStarted value),
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

class _$AchievementManagementWatcherStateTearOff {
  const _$AchievementManagementWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _loadSuccess loadSuccess(KtSet<Achievement> achievements) {
    return _loadSuccess(
      achievements,
    );
  }

  _loadFailure loadFailure(Failure<dynamic> failure) {
    return _loadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $AchievementManagementWatcherState =
_$AchievementManagementWatcherStateTearOff();

mixin _$AchievementManagementWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtSet<Achievement> achievements),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtSet<Achievement> achievements),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  });
}

abstract class $AchievementManagementWatcherStateCopyWith<$Res> {
  factory $AchievementManagementWatcherStateCopyWith(AchievementManagementWatcherState value,
    $Res Function(AchievementManagementWatcherState) then) =
      _$AchievementManagementWatcherStateCopyWithImpl<$Res>;
}

class _$AchievementManagementWatcherStateCopyWithImpl<$Res>
  implements $AchievementManagementWatcherStateCopyWith<$Res> {
  _$AchievementManagementWatcherStateCopyWithImpl(this._value, this._then);

  final AchievementManagementWatcherState _value;
  // ignore: unused_field
  final $Res Function(AchievementManagementWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
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
    @required Result loadSuccess(KtSet<Achievement> achievements),
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
    Result loadSuccess(KtSet<Achievement> achievements),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
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
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
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

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
  __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
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
    @required Result loadSuccess(KtSet<Achievement> achievements),
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
    Result loadSuccess(KtSet<Achievement> achievements),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
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
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
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

abstract class _$loadSuccessCopyWith<$Res> {
  factory _$loadSuccessCopyWith(_loadSuccess value, $Res Function(_loadSuccess) then) =
  __$loadSuccessCopyWithImpl<$Res>;
  $Res call({KtSet<Achievement> achievements});
}

class __$loadSuccessCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
  implements _$loadSuccessCopyWith<$Res> {
  __$loadSuccessCopyWithImpl(_loadSuccess _value, $Res Function(_loadSuccess) _then)
    : super(_value, (v) => _then(v as _loadSuccess));

  @override
  _loadSuccess get _value => super._value as _loadSuccess;

  @override
  $Res call({
    Object achievements = freezed,
  }) {
    return _then(_loadSuccess(
      achievements == freezed
        ? _value.achievements
        : achievements as KtSet<Achievement>,
    ));
  }
}

class _$_loadSuccess implements _loadSuccess {
  const _$_loadSuccess(this.achievements) : assert(achievements != null);

  @override
  final KtSet<Achievement> achievements;

  @override
  String toString() {
    return 'AchievementManagementWatcherState.loadSuccess(achievements: $achievements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _loadSuccess &&
        (identical(other.achievements, achievements) ||
          const DeepCollectionEquality()
            .equals(other.achievements, achievements)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(achievements);

  @override
  _$loadSuccessCopyWith<_loadSuccess> get copyWith =>
    __$loadSuccessCopyWithImpl<_loadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtSet<Achievement> achievements),
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
    Result loadSuccess(KtSet<Achievement> achievements),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
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
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _loadSuccess implements AchievementManagementWatcherState {
  const factory _loadSuccess(KtSet<Achievement> achievements) = _$_loadSuccess;

  KtSet<Achievement> get achievements;
  _$loadSuccessCopyWith<_loadSuccess> get copyWith;
}

abstract class _$loadFailureCopyWith<$Res> {
  factory _$loadFailureCopyWith(_loadFailure value, $Res Function(_loadFailure) then) =
  __$loadFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$loadFailureCopyWithImpl<$Res> extends _$AchievementManagementWatcherStateCopyWithImpl<$Res>
  implements _$loadFailureCopyWith<$Res> {
  __$loadFailureCopyWithImpl(_loadFailure _value, $Res Function(_loadFailure) _then)
    : super(_value, (v) => _then(v as _loadFailure));

  @override
  _loadFailure get _value => super._value as _loadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_loadFailure(
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

class _$_loadFailure implements _loadFailure {
  const _$_loadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'AchievementManagementWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _loadFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$loadFailureCopyWith<_loadFailure> get copyWith =>
    __$loadFailureCopyWithImpl<_loadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtSet<Achievement> achievements),
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
    Result loadSuccess(KtSet<Achievement> achievements),
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
    @required Result loadSuccess(_loadSuccess value),
    @required Result loadFailure(_loadFailure value),
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
    Result loadSuccess(_loadSuccess value),
    Result loadFailure(_loadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _loadFailure implements AchievementManagementWatcherState {
  const factory _loadFailure(Failure<dynamic> failure) = _$_loadFailure;

  Failure<dynamic> get failure;
  _$loadFailureCopyWith<_loadFailure> get copyWith;
}
