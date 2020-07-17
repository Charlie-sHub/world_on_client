// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_tags_by_name_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchTagsByNameWatcherEventTearOff {
  const _$SearchTagsByNameWatcherEventTearOff();

// ignore: unused_element
  _WatchTagsFoundByNameStarted watchTagsFoundByNameStarted(
      SearchTerm searchTerm) {
    return _WatchTagsFoundByNameStarted(
      searchTerm,
    );
  }
}

// ignore: unused_element
const $SearchTagsByNameWatcherEvent = _$SearchTagsByNameWatcherEventTearOff();

mixin _$SearchTagsByNameWatcherEvent {
  SearchTerm get searchTerm;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchTagsFoundByNameStarted(SearchTerm searchTerm),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchTagsFoundByNameStarted(SearchTerm searchTerm),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchTagsFoundByNameStarted(_WatchTagsFoundByNameStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchTagsFoundByNameStarted(_WatchTagsFoundByNameStarted value),
    @required Result orElse(),
  });

  $SearchTagsByNameWatcherEventCopyWith<SearchTagsByNameWatcherEvent>
      get copyWith;
}

abstract class $SearchTagsByNameWatcherEventCopyWith<$Res> {
  factory $SearchTagsByNameWatcherEventCopyWith(
          SearchTagsByNameWatcherEvent value,
          $Res Function(SearchTagsByNameWatcherEvent) then) =
      _$SearchTagsByNameWatcherEventCopyWithImpl<$Res>;
  $Res call({SearchTerm searchTerm});
}

class _$SearchTagsByNameWatcherEventCopyWithImpl<$Res>
    implements $SearchTagsByNameWatcherEventCopyWith<$Res> {
  _$SearchTagsByNameWatcherEventCopyWithImpl(this._value, this._then);

  final SearchTagsByNameWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SearchTagsByNameWatcherEvent) _then;

  @override
  $Res call({
    Object searchTerm = freezed,
  }) {
    return _then(_value.copyWith(
      searchTerm:
          searchTerm == freezed ? _value.searchTerm : searchTerm as SearchTerm,
    ));
  }
}

abstract class _$WatchTagsFoundByNameStartedCopyWith<$Res>
    implements $SearchTagsByNameWatcherEventCopyWith<$Res> {
  factory _$WatchTagsFoundByNameStartedCopyWith(
          _WatchTagsFoundByNameStarted value,
          $Res Function(_WatchTagsFoundByNameStarted) then) =
      __$WatchTagsFoundByNameStartedCopyWithImpl<$Res>;
  @override
  $Res call({SearchTerm searchTerm});
}

class __$WatchTagsFoundByNameStartedCopyWithImpl<$Res>
    extends _$SearchTagsByNameWatcherEventCopyWithImpl<$Res>
    implements _$WatchTagsFoundByNameStartedCopyWith<$Res> {
  __$WatchTagsFoundByNameStartedCopyWithImpl(
      _WatchTagsFoundByNameStarted _value,
      $Res Function(_WatchTagsFoundByNameStarted) _then)
      : super(_value, (v) => _then(v as _WatchTagsFoundByNameStarted));

  @override
  _WatchTagsFoundByNameStarted get _value =>
      super._value as _WatchTagsFoundByNameStarted;

  @override
  $Res call({
    Object searchTerm = freezed,
  }) {
    return _then(_WatchTagsFoundByNameStarted(
      searchTerm == freezed ? _value.searchTerm : searchTerm as SearchTerm,
    ));
  }
}

class _$_WatchTagsFoundByNameStarted implements _WatchTagsFoundByNameStarted {
  const _$_WatchTagsFoundByNameStarted(this.searchTerm)
      : assert(searchTerm != null);

  @override
  final SearchTerm searchTerm;

  @override
  String toString() {
    return 'SearchTagsByNameWatcherEvent.watchTagsFoundByNameStarted(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchTagsFoundByNameStarted &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @override
  _$WatchTagsFoundByNameStartedCopyWith<_WatchTagsFoundByNameStarted>
      get copyWith => __$WatchTagsFoundByNameStartedCopyWithImpl<
          _WatchTagsFoundByNameStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchTagsFoundByNameStarted(SearchTerm searchTerm),
  }) {
    assert(watchTagsFoundByNameStarted != null);
    return watchTagsFoundByNameStarted(searchTerm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchTagsFoundByNameStarted(SearchTerm searchTerm),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchTagsFoundByNameStarted != null) {
      return watchTagsFoundByNameStarted(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result watchTagsFoundByNameStarted(_WatchTagsFoundByNameStarted value),
  }) {
    assert(watchTagsFoundByNameStarted != null);
    return watchTagsFoundByNameStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchTagsFoundByNameStarted(_WatchTagsFoundByNameStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchTagsFoundByNameStarted != null) {
      return watchTagsFoundByNameStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchTagsFoundByNameStarted
    implements SearchTagsByNameWatcherEvent {
  const factory _WatchTagsFoundByNameStarted(SearchTerm searchTerm) =
      _$_WatchTagsFoundByNameStarted;

  @override
  SearchTerm get searchTerm;
  @override
  _$WatchTagsFoundByNameStartedCopyWith<_WatchTagsFoundByNameStarted>
      get copyWith;
}

class _$SearchTagsByNameWatcherStateTearOff {
  const _$SearchTagsByNameWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _SearchInProgress searchInProgress() {
    return const _SearchInProgress();
  }

// ignore: unused_element
  _SearchSuccess searchSuccess(KtSet<Tag> tagsFound) {
    return _SearchSuccess(
      tagsFound,
    );
  }

// ignore: unused_element
  _SearchFailure searchFailure(Failure<dynamic> failure) {
    return _SearchFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $SearchTagsByNameWatcherState = _$SearchTagsByNameWatcherStateTearOff();

mixin _$SearchTagsByNameWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtSet<Tag> tagsFound),
    @required Result searchFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtSet<Tag> tagsFound),
    Result searchFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  });
}

abstract class $SearchTagsByNameWatcherStateCopyWith<$Res> {
  factory $SearchTagsByNameWatcherStateCopyWith(
          SearchTagsByNameWatcherState value,
          $Res Function(SearchTagsByNameWatcherState) then) =
      _$SearchTagsByNameWatcherStateCopyWithImpl<$Res>;
}

class _$SearchTagsByNameWatcherStateCopyWithImpl<$Res>
    implements $SearchTagsByNameWatcherStateCopyWith<$Res> {
  _$SearchTagsByNameWatcherStateCopyWithImpl(this._value, this._then);

  final SearchTagsByNameWatcherState _value;
  // ignore: unused_field
  final $Res Function(SearchTagsByNameWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtSet<Tag> tagsFound),
    @required Result searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtSet<Tag> tagsFound),
    Result searchFailure(Failure<dynamic> failure),
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
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchTagsByNameWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(
          _SearchInProgress value, $Res Function(_SearchInProgress) then) =
      __$SearchInProgressCopyWithImpl<$Res>;
}

class __$SearchInProgressCopyWithImpl<$Res>
    extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res>
    implements _$SearchInProgressCopyWith<$Res> {
  __$SearchInProgressCopyWithImpl(
      _SearchInProgress _value, $Res Function(_SearchInProgress) _then)
      : super(_value, (v) => _then(v as _SearchInProgress));

  @override
  _SearchInProgress get _value => super._value as _SearchInProgress;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtSet<Tag> tagsFound),
    @required Result searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtSet<Tag> tagsFound),
    Result searchFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchInProgress implements SearchTagsByNameWatcherState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(
          _SearchSuccess value, $Res Function(_SearchSuccess) then) =
      __$SearchSuccessCopyWithImpl<$Res>;
  $Res call({KtSet<Tag> tagsFound});
}

class __$SearchSuccessCopyWithImpl<$Res>
    extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res>
    implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(
      _SearchSuccess _value, $Res Function(_SearchSuccess) _then)
      : super(_value, (v) => _then(v as _SearchSuccess));

  @override
  _SearchSuccess get _value => super._value as _SearchSuccess;

  @override
  $Res call({
    Object tagsFound = freezed,
  }) {
    return _then(_SearchSuccess(
      tagsFound == freezed ? _value.tagsFound : tagsFound as KtSet<Tag>,
    ));
  }
}

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.tagsFound) : assert(tagsFound != null);

  @override
  final KtSet<Tag> tagsFound;

  @override
  String toString() {
    return 'SearchTagsByNameWatcherState.searchSuccess(tagsFound: $tagsFound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchSuccess &&
            (identical(other.tagsFound, tagsFound) ||
                const DeepCollectionEquality()
                    .equals(other.tagsFound, tagsFound)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tagsFound);

  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
      __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtSet<Tag> tagsFound),
    @required Result searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(tagsFound);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtSet<Tag> tagsFound),
    Result searchFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(tagsFound);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements SearchTagsByNameWatcherState {
  const factory _SearchSuccess(KtSet<Tag> tagsFound) = _$_SearchSuccess;

  KtSet<Tag> get tagsFound;
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith;
}

abstract class _$SearchFailureCopyWith<$Res> {
  factory _$SearchFailureCopyWith(
          _SearchFailure value, $Res Function(_SearchFailure) then) =
      __$SearchFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$SearchFailureCopyWithImpl<$Res>
    extends _$SearchTagsByNameWatcherStateCopyWithImpl<$Res>
    implements _$SearchFailureCopyWith<$Res> {
  __$SearchFailureCopyWithImpl(
      _SearchFailure _value, $Res Function(_SearchFailure) _then)
      : super(_value, (v) => _then(v as _SearchFailure));

  @override
  _SearchFailure get _value => super._value as _SearchFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_SearchFailure(
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

class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'SearchTagsByNameWatcherState.searchFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$SearchFailureCopyWith<_SearchFailure> get copyWith =>
      __$SearchFailureCopyWithImpl<_SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtSet<Tag> tagsFound),
    @required Result searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtSet<Tag> tagsFound),
    Result searchFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements SearchTagsByNameWatcherState {
  const factory _SearchFailure(Failure<dynamic> failure) = _$_SearchFailure;

  Failure<dynamic> get failure;
  _$SearchFailureCopyWith<_SearchFailure> get copyWith;
}
