// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'recommended_experiences_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RecommendedExperiencesWatcherEventTearOff {
  const _$RecommendedExperiencesWatcherEventTearOff();

// ignore: unused_element
  _WatchRecommendedExperiencesStarted watchRecommendedExperiencesStarted() {
    return const _WatchRecommendedExperiencesStarted();
  }

// ignore: unused_element
  _ResultsReceived resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) {
    return _ResultsReceived(
      failureOrExperiences,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RecommendedExperiencesWatcherEvent = _$RecommendedExperiencesWatcherEventTearOff();

/// @nodoc
mixin _$RecommendedExperiencesWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchRecommendedExperiencesStarted(),
    @required TResult resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchRecommendedExperiencesStarted(),
    TResult resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchRecommendedExperiencesStarted(_WatchRecommendedExperiencesStarted value),
    @required TResult resultsReceived(_ResultsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchRecommendedExperiencesStarted(_WatchRecommendedExperiencesStarted value),
    TResult resultsReceived(_ResultsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RecommendedExperiencesWatcherEventCopyWith<$Res> {
  factory $RecommendedExperiencesWatcherEventCopyWith(RecommendedExperiencesWatcherEvent value, $Res Function(RecommendedExperiencesWatcherEvent) then) =
      _$RecommendedExperiencesWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecommendedExperiencesWatcherEventCopyWithImpl<$Res> implements $RecommendedExperiencesWatcherEventCopyWith<$Res> {
  _$RecommendedExperiencesWatcherEventCopyWithImpl(this._value, this._then);

  final RecommendedExperiencesWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(RecommendedExperiencesWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchRecommendedExperiencesStartedCopyWith<$Res> {
  factory _$WatchRecommendedExperiencesStartedCopyWith(_WatchRecommendedExperiencesStarted value, $Res Function(_WatchRecommendedExperiencesStarted) then) =
      __$WatchRecommendedExperiencesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchRecommendedExperiencesStartedCopyWithImpl<$Res> extends _$RecommendedExperiencesWatcherEventCopyWithImpl<$Res> implements _$WatchRecommendedExperiencesStartedCopyWith<$Res> {
  __$WatchRecommendedExperiencesStartedCopyWithImpl(_WatchRecommendedExperiencesStarted _value, $Res Function(_WatchRecommendedExperiencesStarted) _then)
      : super(_value, (v) => _then(v as _WatchRecommendedExperiencesStarted));

  @override
  _WatchRecommendedExperiencesStarted get _value => super._value as _WatchRecommendedExperiencesStarted;
}

/// @nodoc
class _$_WatchRecommendedExperiencesStarted implements _WatchRecommendedExperiencesStarted {
  const _$_WatchRecommendedExperiencesStarted();

  @override
  String toString() {
    return 'RecommendedExperiencesWatcherEvent.watchRecommendedExperiencesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchRecommendedExperiencesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchRecommendedExperiencesStarted(),
    @required TResult resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchRecommendedExperiencesStarted != null);
    assert(resultsReceived != null);
    return watchRecommendedExperiencesStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchRecommendedExperiencesStarted(),
    TResult resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchRecommendedExperiencesStarted != null) {
      return watchRecommendedExperiencesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchRecommendedExperiencesStarted(_WatchRecommendedExperiencesStarted value),
    @required TResult resultsReceived(_ResultsReceived value),
  }) {
    assert(watchRecommendedExperiencesStarted != null);
    assert(resultsReceived != null);
    return watchRecommendedExperiencesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchRecommendedExperiencesStarted(_WatchRecommendedExperiencesStarted value),
    TResult resultsReceived(_ResultsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchRecommendedExperiencesStarted != null) {
      return watchRecommendedExperiencesStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchRecommendedExperiencesStarted implements RecommendedExperiencesWatcherEvent {
  const factory _WatchRecommendedExperiencesStarted() = _$_WatchRecommendedExperiencesStarted;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, KtList<Experience>> failureOrExperiences});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$RecommendedExperiencesWatcherEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));

  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;

  @override
  $Res call({
    Object failureOrExperiences = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrExperiences == freezed ? _value.failureOrExperiences : failureOrExperiences as Either<Failure, KtList<Experience>>,
    ));
  }
}

/// @nodoc
class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrExperiences) : assert(failureOrExperiences != null);

  @override
  final Either<Failure, KtList<Experience>> failureOrExperiences;

  @override
  String toString() {
    return 'RecommendedExperiencesWatcherEvent.resultsReceived(failureOrExperiences: $failureOrExperiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultsReceived && (identical(other.failureOrExperiences, failureOrExperiences) || const DeepCollectionEquality().equals(other.failureOrExperiences, failureOrExperiences)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrExperiences);

  @JsonKey(ignore: true)
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchRecommendedExperiencesStarted(),
    @required TResult resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchRecommendedExperiencesStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(failureOrExperiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchRecommendedExperiencesStarted(),
    TResult resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(failureOrExperiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchRecommendedExperiencesStarted(_WatchRecommendedExperiencesStarted value),
    @required TResult resultsReceived(_ResultsReceived value),
  }) {
    assert(watchRecommendedExperiencesStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchRecommendedExperiencesStarted(_WatchRecommendedExperiencesStarted value),
    TResult resultsReceived(_ResultsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements RecommendedExperiencesWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _$_ResultsReceived;

  Either<Failure, KtList<Experience>> get failureOrExperiences;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith;
}

/// @nodoc
class _$RecommendedExperiencesWatcherStateTearOff {
  const _$RecommendedExperiencesWatcherStateTearOff();

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

/// @nodoc
// ignore: unused_element
const $RecommendedExperiencesWatcherState = _$RecommendedExperiencesWatcherStateTearOff();

/// @nodoc
mixin _$RecommendedExperiencesWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Experience> experiences),
    @required TResult loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Experience> experiences),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $RecommendedExperiencesWatcherStateCopyWith<$Res> {
  factory $RecommendedExperiencesWatcherStateCopyWith(RecommendedExperiencesWatcherState value, $Res Function(RecommendedExperiencesWatcherState) then) =
      _$RecommendedExperiencesWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecommendedExperiencesWatcherStateCopyWithImpl<$Res> implements $RecommendedExperiencesWatcherStateCopyWith<$Res> {
  _$RecommendedExperiencesWatcherStateCopyWithImpl(this._value, this._then);

  final RecommendedExperiencesWatcherState _value;

  // ignore: unused_field
  final $Res Function(RecommendedExperiencesWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RecommendedExperiencesWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RecommendedExperiencesWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Experience> experiences),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Experience> experiences),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecommendedExperiencesWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$RecommendedExperiencesWatcherStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'RecommendedExperiencesWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Experience> experiences),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Experience> experiences),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements RecommendedExperiencesWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) = __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Experience> experiences});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$RecommendedExperiencesWatcherStateCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then) : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object experiences = freezed,
  }) {
    return _then(_LoadSuccess(
      experiences == freezed ? _value.experiences : experiences as KtList<Experience>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.experiences) : assert(experiences != null);

  @override
  final KtList<Experience> experiences;

  @override
  String toString() {
    return 'RecommendedExperiencesWatcherState.loadSuccess(experiences: $experiences)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Experience> experiences),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(experiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Experience> experiences),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(experiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements RecommendedExperiencesWatcherState {
  const factory _LoadSuccess(KtList<Experience> experiences) = _$_LoadSuccess;

  KtList<Experience> get experiences;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$RecommendedExperiencesWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
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

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'RecommendedExperiencesWatcherState.loadFailure(failure: $failure)';
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Experience> experiences),
    @required TResult loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Experience> experiences),
    TResult loadFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements RecommendedExperiencesWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
