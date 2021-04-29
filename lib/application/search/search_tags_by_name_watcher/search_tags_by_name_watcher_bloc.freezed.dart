// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_tags_by_name_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchTagsByNameWatcherEventTearOff {
  const _$SearchTagsByNameWatcherEventTearOff();

  _WatchTagsFoundByNameStarted watchTagsFoundByNameStarted(SearchTerm searchTerm) {
    return _WatchTagsFoundByNameStarted(
      searchTerm,
    );
  }

  _ResultsReceived resultsReceived(Either<Failure, KtList<Tag>> failureOrTags) {
    return _ResultsReceived(
      failureOrTags,
    );
  }
}

/// @nodoc
const $SearchTagsByNameWatcherEvent = _$SearchTagsByNameWatcherEventTearOff();

/// @nodoc
mixin _$SearchTagsByNameWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTerm searchTerm) watchTagsFoundByNameStarted,
    required TResult Function(Either<Failure, KtList<Tag>> failureOrTags) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTerm searchTerm)? watchTagsFoundByNameStarted,
    TResult Function(Either<Failure, KtList<Tag>> failureOrTags)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchTagsFoundByNameStarted value) watchTagsFoundByNameStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchTagsFoundByNameStarted value)? watchTagsFoundByNameStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTagsByNameWatcherEventCopyWith<$Res> {
  factory $SearchTagsByNameWatcherEventCopyWith(SearchTagsByNameWatcherEvent value, $Res Function(SearchTagsByNameWatcherEvent) then) = _$SearchTagsByNameWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchTagsByNameWatcherEventCopyWithImpl<$Res> implements $SearchTagsByNameWatcherEventCopyWith<$Res> {
  _$SearchTagsByNameWatcherEventCopyWithImpl(this._value, this._then);

  final SearchTagsByNameWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(SearchTagsByNameWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchTagsFoundByNameStartedCopyWith<$Res> {
  factory _$WatchTagsFoundByNameStartedCopyWith(_WatchTagsFoundByNameStarted value, $Res Function(_WatchTagsFoundByNameStarted) then) = __$WatchTagsFoundByNameStartedCopyWithImpl<$Res>;

  $Res call({SearchTerm searchTerm});
}

/// @nodoc
class __$WatchTagsFoundByNameStartedCopyWithImpl<$Res> extends _$SearchTagsByNameWatcherEventCopyWithImpl<$Res> implements _$WatchTagsFoundByNameStartedCopyWith<$Res> {
  __$WatchTagsFoundByNameStartedCopyWithImpl(_WatchTagsFoundByNameStarted _value, $Res Function(_WatchTagsFoundByNameStarted) _then) : super(_value, (v) => _then(v as _WatchTagsFoundByNameStarted));

  @override
  _WatchTagsFoundByNameStarted get _value => super._value as _WatchTagsFoundByNameStarted;

  @override
  $Res call({
    Object? searchTerm = freezed,
  }) {
    return _then(_WatchTagsFoundByNameStarted(
      searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as SearchTerm,
    ));
  }
}

/// @nodoc

class _$_WatchTagsFoundByNameStarted implements _WatchTagsFoundByNameStarted {
  const _$_WatchTagsFoundByNameStarted(this.searchTerm);

  @override
  final SearchTerm searchTerm;

  @override
  String toString() {
    return 'SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchTagsFoundByNameStarted && (identical(other.searchTerm, searchTerm) || const DeepCollectionEquality().equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @JsonKey(ignore: true)
  @override
  _$WatchTagsFoundByNameStartedCopyWith<_WatchTagsFoundByNameStarted> get copyWith => __$WatchTagsFoundByNameStartedCopyWithImpl<_WatchTagsFoundByNameStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTerm searchTerm) watchTagsFoundByNameStarted,
    required TResult Function(Either<Failure, KtList<Tag>> failureOrTags) resultsReceived,
  }) {
    return watchTagsFoundByNameStarted(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTerm searchTerm)? watchTagsFoundByNameStarted,
    TResult Function(Either<Failure, KtList<Tag>> failureOrTags)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchTagsFoundByNameStarted != null) {
      return watchTagsFoundByNameStarted(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchTagsFoundByNameStarted value) watchTagsFoundByNameStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return watchTagsFoundByNameStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchTagsFoundByNameStarted value)? watchTagsFoundByNameStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (watchTagsFoundByNameStarted != null) {
      return watchTagsFoundByNameStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchTagsFoundByNameStarted implements SearchTagsByNameWatcherEvent {
  const factory _WatchTagsFoundByNameStarted(SearchTerm searchTerm) = _$_WatchTagsFoundByNameStarted;

  SearchTerm get searchTerm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$WatchTagsFoundByNameStartedCopyWith<_WatchTagsFoundByNameStarted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) = __$ResultsReceivedCopyWithImpl<$Res>;

  $Res call({Either<Failure, KtList<Tag>> failureOrTags});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$SearchTagsByNameWatcherEventCopyWithImpl<$Res> implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then) : super(_value, (v) => _then(v as _ResultsReceived));

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
    return 'SearchTagsByNameWatcherEvent.resultsReceived(failureOrTags: $failureOrTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ResultsReceived && (identical(other.failureOrTags, failureOrTags) || const DeepCollectionEquality().equals(other.failureOrTags, failureOrTags)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrTags);

  @JsonKey(ignore: true)
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTerm searchTerm) watchTagsFoundByNameStarted,
    required TResult Function(Either<Failure, KtList<Tag>> failureOrTags) resultsReceived,
  }) {
    return resultsReceived(failureOrTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTerm searchTerm)? watchTagsFoundByNameStarted,
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
    required TResult Function(_WatchTagsFoundByNameStarted value) watchTagsFoundByNameStarted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchTagsFoundByNameStarted value)? watchTagsFoundByNameStarted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements SearchTagsByNameWatcherEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Tag>> failureOrTags) = _$_ResultsReceived;

  Either<Failure, KtList<Tag>> get failureOrTags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchTagsByNameWatcherStateTearOff {
  const _$SearchTagsByNameWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SearchInProgress searchInProgress() {
    return const _SearchInProgress();
  }

  _SearchSuccess searchSuccess(KtList<Tag> tagsFound) {
    return _SearchSuccess(
      tagsFound,
    );
  }

  _SearchFailure searchFailure(Failure<dynamic> failure) {
    return _SearchFailure(
      failure,
    );
  }
}

/// @nodoc
const $SearchTagsByNameWatcherState = _$SearchTagsByNameWatcherStateTearOff();

/// @nodoc
mixin _$SearchTagsByNameWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Tag> tagsFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Tag> tagsFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTagsByNameWatcherStateCopyWith<$Res> {
  factory $SearchTagsByNameWatcherStateCopyWith(SearchTagsByNameWatcherState value, $Res Function(SearchTagsByNameWatcherState) then) = _$SearchTagsByNameWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchTagsByNameWatcherStateCopyWithImpl<$Res> implements $SearchTagsByNameWatcherStateCopyWith<$Res> {
  _$SearchTagsByNameWatcherStateCopyWithImpl(this._value, this._then);

  final SearchTagsByNameWatcherState _value;

  // ignore: unused_field
  final $Res Function(SearchTagsByNameWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SearchTagsByNameWatcherState.initial()';
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
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Tag> tagsFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Tag> tagsFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
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
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchTagsByNameWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(_SearchInProgress value, $Res Function(_SearchInProgress) then) = __$SearchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchInProgressCopyWithImpl<$Res> extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res> implements _$SearchInProgressCopyWith<$Res> {
  __$SearchInProgressCopyWithImpl(_SearchInProgress _value, $Res Function(_SearchInProgress) _then) : super(_value, (v) => _then(v as _SearchInProgress));

  @override
  _SearchInProgress get _value => super._value as _SearchInProgress;
}

/// @nodoc

class _$_SearchInProgress implements _SearchInProgress {
  const _$_SearchInProgress();

  @override
  String toString() {
    return 'SearchTagsByNameWatcherState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Tag> tagsFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
  }) {
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Tag> tagsFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) {
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchInProgress implements SearchTagsByNameWatcherState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

/// @nodoc
abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(_SearchSuccess value, $Res Function(_SearchSuccess) then) = __$SearchSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Tag> tagsFound});
}

/// @nodoc
class __$SearchSuccessCopyWithImpl<$Res> extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res> implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(_SearchSuccess _value, $Res Function(_SearchSuccess) _then) : super(_value, (v) => _then(v as _SearchSuccess));

  @override
  _SearchSuccess get _value => super._value as _SearchSuccess;

  @override
  $Res call({
    Object? tagsFound = freezed,
  }) {
    return _then(_SearchSuccess(
      tagsFound == freezed
          ? _value.tagsFound
          : tagsFound // ignore: cast_nullable_to_non_nullable
              as KtList<Tag>,
    ));
  }
}

/// @nodoc

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.tagsFound);

  @override
  final KtList<Tag> tagsFound;

  @override
  String toString() {
    return 'SearchTagsByNameWatcherState.searchSuccess(tagsFound: $tagsFound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchSuccess && (identical(other.tagsFound, tagsFound) || const DeepCollectionEquality().equals(other.tagsFound, tagsFound)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagsFound);

  @JsonKey(ignore: true)
  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith => __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Tag> tagsFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
  }) {
    return searchSuccess(tagsFound);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Tag> tagsFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(tagsFound);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements SearchTagsByNameWatcherState {
  const factory _SearchSuccess(KtList<Tag> tagsFound) = _$_SearchSuccess;

  KtList<Tag> get tagsFound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchFailureCopyWith<$Res> {
  factory _$SearchFailureCopyWith(_SearchFailure value, $Res Function(_SearchFailure) then) = __$SearchFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$SearchFailureCopyWithImpl<$Res> extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res> implements _$SearchFailureCopyWith<$Res> {
  __$SearchFailureCopyWithImpl(_SearchFailure _value, $Res Function(_SearchFailure) _then) : super(_value, (v) => _then(v as _SearchFailure));

  @override
  _SearchFailure get _value => super._value as _SearchFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_SearchFailure(
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

class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'SearchTagsByNameWatcherState.searchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$SearchFailureCopyWith<_SearchFailure> get copyWith => __$SearchFailureCopyWithImpl<_SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Tag> tagsFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
  }) {
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Tag> tagsFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements SearchTagsByNameWatcherState {
  const factory _SearchFailure(Failure<dynamic> failure) = _$_SearchFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SearchFailureCopyWith<_SearchFailure> get copyWith => throw _privateConstructorUsedError;
}
