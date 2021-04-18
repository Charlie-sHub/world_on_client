// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'main_feed_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainFeedWatcherEventTearOff {
  const _$MainFeedWatcherEventTearOff();

  _WatchMainFeedStarted watchMainFeedStarted() {
    return const _WatchMainFeedStarted();
  }

  _ResultsReceived resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) {
    return _ResultsReceived(
      failureOrExperiences,
    );
  }
}

/// @nodoc
const $MainFeedWatcherEvent = _$MainFeedWatcherEventTearOff();

/// @nodoc
mixin _$MainFeedWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchMainFeedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchMainFeedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchMainFeedStarted value) watchMainFeedStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchMainFeedStarted value)? watchMainFeedStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFeedWatcherEventCopyWith<$Res> {
  factory $MainFeedWatcherEventCopyWith(MainFeedWatcherEvent value, $Res Function(MainFeedWatcherEvent) then) = _$MainFeedWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainFeedWatcherEventCopyWithImpl<$Res> implements $MainFeedWatcherEventCopyWith<$Res> {
  _$MainFeedWatcherEventCopyWithImpl(this._value, this._then);

  final MainFeedWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(MainFeedWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchMainFeedStartedCopyWith<$Res> {
  factory _$WatchMainFeedStartedCopyWith(_WatchMainFeedStarted value, $Res Function(_WatchMainFeedStarted) then) = __$WatchMainFeedStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchMainFeedStartedCopyWithImpl<$Res> extends _$MainFeedWatcherEventCopyWithImpl<$Res> implements _$WatchMainFeedStartedCopyWith<$Res> {
  __$WatchMainFeedStartedCopyWithImpl(_WatchMainFeedStarted _value, $Res Function(_WatchMainFeedStarted) _then) : super(_value, (v) => _then(v as _WatchMainFeedStarted));

  @override
  _WatchMainFeedStarted get _value => super._value as _WatchMainFeedStarted;
}

/// @nodoc
class _$_WatchMainFeedStarted implements _WatchMainFeedStarted {
  const _$_WatchMainFeedStarted();

  @override
  String toString() {
    return 'MainFeedWatcherEvent.watchMainFeedStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchMainFeedStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchMainFeedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) resultsReceived,
  }) {
    return watchMainFeedStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchMainFeedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchMainFeedStarted != null) {
      return watchMainFeedStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchMainFeedStarted value) watchMainFeedStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return watchMainFeedStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchMainFeedStarted value)? watchMainFeedStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchMainFeedStarted != null) {
      return watchMainFeedStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchMainFeedStarted implements MainFeedWatcherEvent {
  const factory _WatchMainFeedStarted() = _$_WatchMainFeedStarted;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, KtList<Experience>> failureOrExperiences});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$MainFeedWatcherEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));

  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;

  @override
  $Res call({
    Object? failureOrExperiences = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrExperiences == freezed
          ? _value.failureOrExperiences
          : failureOrExperiences // ignore: cast_nullable_to_non_nullable
              as Either<Failure, KtList<Experience>>,
    ));
  }
}

/// @nodoc
class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrExperiences);

  @override
  final Either<Failure, KtList<Experience>> failureOrExperiences;

  @override
  String toString() {
    return 'MainFeedWatcherEvent.resultsReceived(failureOrExperiences: $failureOrExperiences)';
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
  TResult when<TResult extends Object?>({
    required TResult Function() watchMainFeedStarted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) resultsReceived,
  }) {
    return resultsReceived(failureOrExperiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchMainFeedStarted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(failureOrExperiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchMainFeedStarted value) watchMainFeedStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchMainFeedStarted value)? watchMainFeedStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements MainFeedWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _$_ResultsReceived;

  Either<Failure, KtList<Experience>> get failureOrExperiences => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$MainFeedWatcherStateTearOff {
  const _$MainFeedWatcherStateTearOff();

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
const $MainFeedWatcherState = _$MainFeedWatcherStateTearOff();

/// @nodoc
mixin _$MainFeedWatcherState {
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
abstract class $MainFeedWatcherStateCopyWith<$Res> {
  factory $MainFeedWatcherStateCopyWith(MainFeedWatcherState value, $Res Function(MainFeedWatcherState) then) = _$MainFeedWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainFeedWatcherStateCopyWithImpl<$Res> implements $MainFeedWatcherStateCopyWith<$Res> {
  _$MainFeedWatcherStateCopyWithImpl(this._value, this._then);

  final MainFeedWatcherState _value;
  // ignore: unused_field
  final $Res Function(MainFeedWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MainFeedWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MainFeedWatcherState.initial()';
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

abstract class _Initial implements MainFeedWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res> extends _$MainFeedWatcherStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'MainFeedWatcherState.loadInProgress()';
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

abstract class _LoadInProgress implements MainFeedWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) = __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Experience> experiences});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$MainFeedWatcherStateCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
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
    return 'MainFeedWatcherState.loadSuccess(experiences: $experiences)';
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

abstract class _LoadSuccess implements MainFeedWatcherState {
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
class __$LoadFailureCopyWithImpl<$Res> extends _$MainFeedWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
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
    return 'MainFeedWatcherState.loadFailure(failure: $failure)';
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

abstract class _LoadFailure implements MainFeedWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => throw _privateConstructorUsedError;
}
