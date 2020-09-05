// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CommentWatcherEventTearOff {
  const _$CommentWatcherEventTearOff();

// ignore: unused_element
  _WatchExperienceCommentsStarted watchExperienceCommentsStarted(int experienceId) {
    return _WatchExperienceCommentsStarted(
      experienceId,
    );
  }

// ignore: unused_element
  _ResultsReceived resultsReceived(Either<Failure, KtList<Comment>> failureOrComments) {
    return _ResultsReceived(
      failureOrComments,
    );
  }
}

// ignore: unused_element
const $CommentWatcherEvent = _$CommentWatcherEventTearOff();

mixin _$CommentWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperienceCommentsStarted(int experienceId),
    @required Result resultsReceived(Either<Failure, KtList<Comment>> failureOrComments),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperienceCommentsStarted(int experienceId),
    Result resultsReceived(Either<Failure, KtList<Comment>> failureOrComments),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperienceCommentsStarted(_WatchExperienceCommentsStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperienceCommentsStarted(_WatchExperienceCommentsStarted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  });
}

abstract class $CommentWatcherEventCopyWith<$Res> {
  factory $CommentWatcherEventCopyWith(CommentWatcherEvent value, $Res Function(CommentWatcherEvent) then) = _$CommentWatcherEventCopyWithImpl<$Res>;
}

class _$CommentWatcherEventCopyWithImpl<$Res> implements $CommentWatcherEventCopyWith<$Res> {
  _$CommentWatcherEventCopyWithImpl(this._value, this._then);

  final CommentWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(CommentWatcherEvent) _then;
}

abstract class _$WatchExperienceCommentsStartedCopyWith<$Res> {
  factory _$WatchExperienceCommentsStartedCopyWith(_WatchExperienceCommentsStarted value, $Res Function(_WatchExperienceCommentsStarted) then) = __$WatchExperienceCommentsStartedCopyWithImpl<$Res>;
  
  $Res call({int experienceId});
}

class __$WatchExperienceCommentsStartedCopyWithImpl<$Res> extends _$CommentWatcherEventCopyWithImpl<$Res> implements _$WatchExperienceCommentsStartedCopyWith<$Res> {
  __$WatchExperienceCommentsStartedCopyWithImpl(_WatchExperienceCommentsStarted _value, $Res Function(_WatchExperienceCommentsStarted) _then)
    : super(_value, (v) => _then(v as _WatchExperienceCommentsStarted));
  
  @override
  _WatchExperienceCommentsStarted get _value => super._value as _WatchExperienceCommentsStarted;
  
  @override
  $Res call({
    Object experienceId = freezed,
  }) {
    return _then(_WatchExperienceCommentsStarted(
      experienceId == freezed ? _value.experienceId : experienceId as int,
    ));
  }
}

class _$_WatchExperienceCommentsStarted implements _WatchExperienceCommentsStarted {
  const _$_WatchExperienceCommentsStarted(this.experienceId) : assert(experienceId != null);
  
  @override
  final int experienceId;
  
  @override
  String toString() {
    return 'CommentWatcherEvent.watchExperienceCommentsStarted(experienceId: $experienceId)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _WatchExperienceCommentsStarted && (identical(other.experienceId, experienceId) || const DeepCollectionEquality().equals(other.experienceId, experienceId)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);
  
  @override
  _$WatchExperienceCommentsStartedCopyWith<_WatchExperienceCommentsStarted> get copyWith => __$WatchExperienceCommentsStartedCopyWithImpl<_WatchExperienceCommentsStarted>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperienceCommentsStarted(int experienceId),
    @required Result resultsReceived(Either<Failure, KtList<Comment>> failureOrComments),
  }) {
    assert(watchExperienceCommentsStarted != null);
    assert(resultsReceived != null);
    return watchExperienceCommentsStarted(experienceId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperienceCommentsStarted(int experienceId),
    Result resultsReceived(Either<Failure, KtList<Comment>> failureOrComments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperienceCommentsStarted != null) {
      return watchExperienceCommentsStarted(experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperienceCommentsStarted(_WatchExperienceCommentsStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(watchExperienceCommentsStarted != null);
    assert(resultsReceived != null);
    return watchExperienceCommentsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperienceCommentsStarted(_WatchExperienceCommentsStarted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperienceCommentsStarted != null) {
      return watchExperienceCommentsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperienceCommentsStarted implements CommentWatcherEvent {
  const factory _WatchExperienceCommentsStarted(int experienceId) = _$_WatchExperienceCommentsStarted;
  
  int get experienceId;
  
  _$WatchExperienceCommentsStartedCopyWith<_WatchExperienceCommentsStarted> get copyWith;
}

abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;
  
  $Res call({Either<Failure, KtList<Comment>> failureOrComments});
}

class __$ResultsReceivedCopyWithImpl<$Res> extends _$CommentWatcherEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));
  
  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;
  
  @override
  $Res call({
    Object failureOrComments = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrComments == freezed ? _value.failureOrComments : failureOrComments as Either<Failure, KtList<Comment>>,
    ));
  }
}

class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrComments) : assert(failureOrComments != null);
  
  @override
  final Either<Failure, KtList<Comment>> failureOrComments;
  
  @override
  String toString() {
    return 'CommentWatcherEvent.resultsReceived(failureOrComments: $failureOrComments)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ResultsReceived && (identical(other.failureOrComments, failureOrComments) || const DeepCollectionEquality().equals(other.failureOrComments, failureOrComments)));
  }
  
  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrComments);
  
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);
  
  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperienceCommentsStarted(int experienceId),
    @required Result resultsReceived(Either<Failure, KtList<Comment>> failureOrComments),
  }) {
    assert(watchExperienceCommentsStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(failureOrComments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperienceCommentsStarted(int experienceId),
    Result resultsReceived(Either<Failure, KtList<Comment>> failureOrComments),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(failureOrComments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperienceCommentsStarted(_WatchExperienceCommentsStarted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(watchExperienceCommentsStarted != null);
    assert(resultsReceived != null);
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperienceCommentsStarted(_WatchExperienceCommentsStarted value),
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

abstract class _ResultsReceived implements CommentWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Comment>> failureOrComments) = _$_ResultsReceived;

  Either<Failure, KtList<Comment>> get failureOrComments;

  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith;
}

class _$CommentWatcherStateTearOff {
  const _$CommentWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Comment> comments) {
    return _LoadSuccess(
      comments,
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
const $CommentWatcherState = _$CommentWatcherStateTearOff();

mixin _$CommentWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Comment> comments),
    @required Result loadFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Comment> comments),
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

abstract class $CommentWatcherStateCopyWith<$Res> {
  factory $CommentWatcherStateCopyWith(CommentWatcherState value, $Res Function(CommentWatcherState) then) = _$CommentWatcherStateCopyWithImpl<$Res>;
}

class _$CommentWatcherStateCopyWithImpl<$Res> implements $CommentWatcherStateCopyWith<$Res> {
  _$CommentWatcherStateCopyWithImpl(this._value, this._then);
  
  final CommentWatcherState _value;
  
  // ignore: unused_field
  final $Res Function(CommentWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$CommentWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));
  
  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CommentWatcherState.initial()';
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
    @required Result loadSuccess(KtList<Comment> comments),
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
    Result loadSuccess(KtList<Comment> comments),
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

abstract class _Initial implements CommentWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(_LoadInProgress value, $Res Function(_LoadInProgress) then) = __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res> extends _$CommentWatcherStateCopyWithImpl<$Res> implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(_LoadInProgress _value, $Res Function(_LoadInProgress) _then) : super(_value, (v) => _then(v as _LoadInProgress));
  
  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'CommentWatcherState.loadInProgress()';
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
    @required Result loadSuccess(KtList<Comment> comments),
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
    Result loadSuccess(KtList<Comment> comments),
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

abstract class _LoadInProgress implements CommentWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(_LoadSuccess value, $Res Function(_LoadSuccess) then) = __$LoadSuccessCopyWithImpl<$Res>;
  
  $Res call({KtList<Comment> comments});
}

class __$LoadSuccessCopyWithImpl<$Res> extends _$CommentWatcherStateCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(_LoadSuccess _value, $Res Function(_LoadSuccess) _then) : super(_value, (v) => _then(v as _LoadSuccess));
  
  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
  
  @override
  $Res call({
    Object comments = freezed,
  }) {
    return _then(_LoadSuccess(
      comments == freezed ? _value.comments : comments as KtList<Comment>,
    ));
  }
}

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.comments) : assert(comments != null);

  @override
  final KtList<Comment> comments;

  @override
  String toString() {
    return 'CommentWatcherState.loadSuccess(comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess && (identical(other.comments, comments) || const DeepCollectionEquality().equals(other.comments, comments)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(comments);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Comment> comments),
    @required Result loadFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(comments);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Comment> comments),
    Result loadFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(comments);
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

abstract class _LoadSuccess implements CommentWatcherState {
  const factory _LoadSuccess(KtList<Comment> comments) = _$_LoadSuccess;

  KtList<Comment> get comments;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(_LoadFailure value, $Res Function(_LoadFailure) then) = __$LoadFailureCopyWithImpl<$Res>;
  
  $Res call({Failure<dynamic> failure});
  
  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$LoadFailureCopyWithImpl<$Res> extends _$CommentWatcherStateCopyWithImpl<$Res> implements _$LoadFailureCopyWith<$Res> {
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'CommentWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Comment> comments),
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
    Result loadSuccess(KtList<Comment> comments),
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

abstract class _LoadFailure implements CommentWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
