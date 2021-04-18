// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag_management_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TagManagementWatcherEventTearOff {
  const _$TagManagementWatcherEventTearOff();

  _WatchAllTagsStarted watchAllTagsStarted() {
    return const _WatchAllTagsStarted();
  }

  _ResultsReceived resultsReceived(Either<Failure, KtList<Tag>> failureOrTags) {
    return _ResultsReceived(
      failureOrTags,
    );
  }
}

/// @nodoc
const $TagManagementWatcherEvent = _$TagManagementWatcherEventTearOff();

/// @nodoc
mixin _$TagManagementWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTagsStarted,
    required TResult Function(Either<Failure, KtList<Tag>> failureOrTags) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTagsStarted,
    TResult Function(Either<Failure, KtList<Tag>> failureOrTags)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTagsStarted value) watchAllTagsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTagsStarted value)? watchAllTagsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagManagementWatcherEventCopyWith<$Res> {
  factory $TagManagementWatcherEventCopyWith(TagManagementWatcherEvent value,
          $Res Function(TagManagementWatcherEvent) then) =
      _$TagManagementWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagManagementWatcherEventCopyWithImpl<$Res>
    implements $TagManagementWatcherEventCopyWith<$Res> {
  _$TagManagementWatcherEventCopyWithImpl(this._value, this._then);

  final TagManagementWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(TagManagementWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllTagsStartedCopyWith<$Res> {
  factory _$WatchAllTagsStartedCopyWith(_WatchAllTagsStarted value,
          $Res Function(_WatchAllTagsStarted) then) =
      __$WatchAllTagsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllTagsStartedCopyWithImpl<$Res>
    extends _$TagManagementWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllTagsStartedCopyWith<$Res> {
  __$WatchAllTagsStartedCopyWithImpl(
      _WatchAllTagsStarted _value, $Res Function(_WatchAllTagsStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllTagsStarted));

  @override
  _WatchAllTagsStarted get _value => super._value as _WatchAllTagsStarted;
}

/// @nodoc
class _$_WatchAllTagsStarted implements _WatchAllTagsStarted {
  const _$_WatchAllTagsStarted();

  @override
  String toString() {
    return 'TagManagementWatcherEvent.watchAllTagsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllTagsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTagsStarted,
    required TResult Function(Either<Failure, KtList<Tag>> failureOrTags) resultsReceived,
  }) {
    return watchAllTagsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTagsStarted,
    TResult Function(Either<Failure, KtList<Tag>> failureOrTags)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchAllTagsStarted != null) {
      return watchAllTagsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTagsStarted value) watchAllTagsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return watchAllTagsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTagsStarted value)? watchAllTagsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchAllTagsStarted != null) {
      return watchAllTagsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllTagsStarted implements TagManagementWatcherEvent {
  const factory _WatchAllTagsStarted() = _$_WatchAllTagsStarted;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(
          _ResultsReceived value, $Res Function(_ResultsReceived) then) =
      __$ResultsReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, KtList<Tag>> failureOrTags});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res>
    extends _$TagManagementWatcherEventCopyWithImpl<$Res>
    implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(
      _ResultsReceived _value, $Res Function(_ResultsReceived) _then)
      : super(_value, (v) => _then(v as _ResultsReceived));

  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;

  @override
  $Res call({
    Object? failureOrTags = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrTags == freezed
          ? _value.failureOrTags
          : failureOrTags // ignore: cast_nullable_to_non_nullable
              as Either<Failure, KtList<Tag>>,
    ));
  }
}

/// @nodoc
class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrTags);

  @override
  final Either<Failure, KtList<Tag>> failureOrTags;

  @override
  String toString() {
    return 'TagManagementWatcherEvent.resultsReceived(failureOrTags: $failureOrTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultsReceived &&
            (identical(other.failureOrTags, failureOrTags) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTags, failureOrTags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrTags);

  @JsonKey(ignore: true)
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith =>
      __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);
  
  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllTagsStarted,
    required TResult Function(Either<Failure, KtList<Tag>> failureOrTags) resultsReceived,
  }) {
    return resultsReceived(failureOrTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllTagsStarted,
    TResult Function(Either<Failure, KtList<Tag>> failureOrTags)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(failureOrTags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllTagsStarted value) watchAllTagsStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllTagsStarted value)? watchAllTagsStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements TagManagementWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Tag>> failureOrTags) = _$_ResultsReceived;

  Either<Failure, KtList<Tag>> get failureOrTags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TagManagementWatcherStateTearOff {
  const _$TagManagementWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Tag> tags) {
    return _LoadSuccess(
      tags,
    );
  }

  _LoadFailure loadFailure(Failure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $TagManagementWatcherState = _$TagManagementWatcherStateTearOff();

/// @nodoc
mixin _$TagManagementWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Tag> tags) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Tag> tags)? loadSuccess,
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
abstract class $TagManagementWatcherStateCopyWith<$Res> {
  factory $TagManagementWatcherStateCopyWith(TagManagementWatcherState value,
          $Res Function(TagManagementWatcherState) then) =
      _$TagManagementWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagManagementWatcherStateCopyWithImpl<$Res>
    implements $TagManagementWatcherStateCopyWith<$Res> {
  _$TagManagementWatcherStateCopyWithImpl(this._value, this._then);

  final TagManagementWatcherState _value;
  // ignore: unused_field
  final $Res Function(TagManagementWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$TagManagementWatcherStateCopyWithImpl<$Res>
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
    return 'TagManagementWatcherState.initial()';
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
    required TResult Function(KtList<Tag> tags) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Tag> tags)? loadSuccess,
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

abstract class _Initial implements TagManagementWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$TagManagementWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TagManagementWatcherState.loadInProgress()';
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
    required TResult Function(KtList<Tag> tags) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Tag> tags)? loadSuccess,
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

abstract class _LoadInProgress implements TagManagementWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Tag> tags});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TagManagementWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_LoadSuccess(
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as KtList<Tag>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.tags);

  @override
  final KtList<Tag> tags;

  @override
  String toString() {
    return 'TagManagementWatcherState.loadSuccess(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);
  
  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Tag> tags) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadSuccess(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Tag> tags)? loadSuccess,
    TResult Function(Failure<dynamic> failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(tags);
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

abstract class _LoadSuccess implements TagManagementWatcherState {
  const factory _LoadSuccess(KtList<Tag> tags) = _$_LoadSuccess;

  KtList<Tag> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith => throw _privateConstructorUsedError;
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
    extends _$TagManagementWatcherStateCopyWithImpl<$Res>
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
    return 'TagManagementWatcherState.loadFailure(failure: $failure)';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Tag> tags) loadSuccess,
    required TResult Function(Failure<dynamic> failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Tag> tags)? loadSuccess,
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

abstract class _LoadFailure implements TagManagementWatcherState {
  const factory _LoadFailure(Failure<dynamic> failure) = _$_LoadFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith => throw _privateConstructorUsedError;
}
