// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience_log_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceLogWatcherEventTearOff {
  const _$ExperienceLogWatcherEventTearOff();

  _WatchExperiencesLogStarted watchExperiencesLogStarted() {
    return const _WatchExperiencesLogStarted();
  }
}

// ignore: unused_element
const $ExperienceLogWatcherEvent = _$ExperienceLogWatcherEventTearOff();

mixin _$ExperienceLogWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesLogStarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesLogStarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperiencesLogStarted(_WatchExperiencesLogStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesLogStarted(_WatchExperiencesLogStarted value),
    @required Result orElse(),
  });
}

abstract class $ExperienceLogWatcherEventCopyWith<$Res> {
  factory $ExperienceLogWatcherEventCopyWith(ExperienceLogWatcherEvent value, $Res Function(ExperienceLogWatcherEvent) then) = _$ExperienceLogWatcherEventCopyWithImpl<$Res>;
}

class _$ExperienceLogWatcherEventCopyWithImpl<$Res> implements $ExperienceLogWatcherEventCopyWith<$Res> {
  _$ExperienceLogWatcherEventCopyWithImpl(this._value, this._then);

  final ExperienceLogWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceLogWatcherEvent) _then;
}

abstract class _$WatchExperiencesLogStartedCopyWith<$Res> {
  factory _$WatchExperiencesLogStartedCopyWith(_WatchExperiencesLogStarted value,
    $Res Function(_WatchExperiencesLogStarted) then) =
  __$WatchExperiencesLogStartedCopyWithImpl<$Res>;
}

class __$WatchExperiencesLogStartedCopyWithImpl<$Res> extends _$ExperienceLogWatcherEventCopyWithImpl<$Res>
  implements _$WatchExperiencesLogStartedCopyWith<$Res> {
  __$WatchExperiencesLogStartedCopyWithImpl(_WatchExperiencesLogStarted _value,
    $Res Function(_WatchExperiencesLogStarted) _then)
    : super(_value, (v) => _then(v as _WatchExperiencesLogStarted));

  @override
  _WatchExperiencesLogStarted get _value =>
    super._value as _WatchExperiencesLogStarted;
}

class _$_WatchExperiencesLogStarted implements _WatchExperiencesLogStarted {
  const _$_WatchExperiencesLogStarted();

  @override
  String toString() {
    return 'ExperienceLogWatcherEvent.watchExperiencesLogStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchExperiencesLogStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesLogStarted(),
  }) {
    assert(watchExperiencesLogStarted != null);
    return watchExperiencesLogStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesLogStarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesLogStarted != null) {
      return watchExperiencesLogStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperiencesLogStarted(_WatchExperiencesLogStarted value),
  }) {
    assert(watchExperiencesLogStarted != null);
    return watchExperiencesLogStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesLogStarted(_WatchExperiencesLogStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesLogStarted != null) {
      return watchExperiencesLogStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesLogStarted
  implements ExperienceLogWatcherEvent {
  const factory _WatchExperiencesLogStarted() = _$_WatchExperiencesLogStarted;
}

class _$ExperienceLogWatcherStateTearOff {
  const _$ExperienceLogWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Set<Experience> experienceSet) {
    return _LoadSuccess(
      experienceSet,
    );
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $ExperienceLogWatcherState = _$ExperienceLogWatcherStateTearOff();

mixin _$ExperienceLogWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Set<Experience> experienceSet),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Set<Experience> experienceSet),
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

abstract class $ExperienceLogWatcherStateCopyWith<$Res> {
  factory $ExperienceLogWatcherStateCopyWith(ExperienceLogWatcherState value,
    $Res Function(ExperienceLogWatcherState) then) =
  _$ExperienceLogWatcherStateCopyWithImpl<$Res>;
}

class _$ExperienceLogWatcherStateCopyWithImpl<$Res>
  implements $ExperienceLogWatcherStateCopyWith<$Res> {
  _$ExperienceLogWatcherStateCopyWithImpl(this._value, this._then);

  final ExperienceLogWatcherState _value;
  // ignore: unused_field
  final $Res Function(ExperienceLogWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ExperienceLogWatcherStateCopyWithImpl<$Res>
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
    return 'ExperienceLogWatcherState.initial()';
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
    @required Result loadSuccess(Set<Experience> experienceSet),
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
    Result loadSuccess(Set<Experience> experienceSet),
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

abstract class _Initial implements ExperienceLogWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) =
  __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res> extends _$ExperienceLogWatcherStateCopyWithImpl<$Res>
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
    return 'ExperienceLogWatcherState.loadInProgress()';
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
    @required Result loadSuccess(Set<Experience> experienceSet),
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
    Result loadSuccess(Set<Experience> experienceSet),
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

abstract class _LoadInProgress implements ExperienceLogWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) =
  __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Set<Experience> experienceSet});
}

class __$LoadSuccessCopyWithImpl<$Res> extends _$ExperienceLogWatcherStateCopyWithImpl<$Res>
  implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then)
    : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object experienceSet = freezed,
  }) {
    return _then(_LoadSuccess(
      experienceSet == freezed
        ? _value.experienceSet
        : experienceSet as Set<Experience>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.experienceSet) : assert(experienceSet != null);

  @override
  final Set<Experience> experienceSet;

  @override
  String toString() {
    return 'ExperienceLogWatcherState.loadSuccess(experienceSet: $experienceSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _LoadSuccess &&
        (identical(other.experienceSet, experienceSet) ||
          const DeepCollectionEquality()
            .equals(other.experienceSet, experienceSet)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceSet);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
    __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Set<Experience> experienceSet),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(experienceSet);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Set<Experience> experienceSet),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(experienceSet);
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

abstract class _LoadSuccess implements ExperienceLogWatcherState {
  const factory _LoadSuccess(Set<Experience> experienceSet) = _$_LoadSuccess;

  Set<Experience> get experienceSet;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) =
  __$LoadFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$LoadFailureCopyWithImpl<$Res> extends _$ExperienceLogWatcherStateCopyWithImpl<$Res>
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
    return 'ExperienceLogWatcherState.loadFailure(failure: $failure)';
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
    @required Result loadSuccess(Set<Experience> experienceSet),
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
    Result loadSuccess(Set<Experience> experienceSet),
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

abstract class _LoadFailure implements ExperienceLogWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
