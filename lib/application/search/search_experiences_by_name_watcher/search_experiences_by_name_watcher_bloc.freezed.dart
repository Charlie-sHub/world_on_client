// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_experiences_by_name_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchExperiencesByNameWatcherEventTearOff {
  const _$SearchExperiencesByNameWatcherEventTearOff();

// ignore: unused_element
  _WatchExperiencesFoundByNameStarted watchExperiencesFoundByNameStarted(SearchTerm searchTerm) {
    return _WatchExperiencesFoundByNameStarted(
      searchTerm,
    );
  }

// ignore: unused_element
  _SearchResultsReceived searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) {
    return _SearchResultsReceived(
      failureOrExperiences,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchExperiencesByNameWatcherEvent = _$SearchExperiencesByNameWatcherEventTearOff();

/// @nodoc
mixin _$SearchExperiencesByNameWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
    @required Result searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
    Result searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
    @required Result searchResultsReceived(_SearchResultsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
    Result searchResultsReceived(_SearchResultsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchExperiencesByNameWatcherEventCopyWith<$Res> {
  factory $SearchExperiencesByNameWatcherEventCopyWith(SearchExperiencesByNameWatcherEvent value, $Res Function(SearchExperiencesByNameWatcherEvent) then) =
      _$SearchExperiencesByNameWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchExperiencesByNameWatcherEventCopyWithImpl<$Res> implements $SearchExperiencesByNameWatcherEventCopyWith<$Res> {
  _$SearchExperiencesByNameWatcherEventCopyWithImpl(this._value, this._then);

  final SearchExperiencesByNameWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(SearchExperiencesByNameWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchExperiencesFoundByNameStartedCopyWith<$Res> {
  factory _$WatchExperiencesFoundByNameStartedCopyWith(_WatchExperiencesFoundByNameStarted value,
    $Res Function(_WatchExperiencesFoundByNameStarted) then) =
  __$WatchExperiencesFoundByNameStartedCopyWithImpl<$Res>;
  
  $Res call({SearchTerm searchTerm});
}

/// @nodoc
class __$WatchExperiencesFoundByNameStartedCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherEventCopyWithImpl<$Res>
  implements _$WatchExperiencesFoundByNameStartedCopyWith<$Res> {
  __$WatchExperiencesFoundByNameStartedCopyWithImpl(_WatchExperiencesFoundByNameStarted _value,
    $Res Function(_WatchExperiencesFoundByNameStarted) _then)
    : super(_value, (v) => _then(v as _WatchExperiencesFoundByNameStarted));
  
  @override
  _WatchExperiencesFoundByNameStarted get _value =>
    super._value as _WatchExperiencesFoundByNameStarted;
  
  @override
  $Res call({
    Object searchTerm = freezed,
  }) {
    return _then(_WatchExperiencesFoundByNameStarted(
      searchTerm == freezed ? _value.searchTerm : searchTerm as SearchTerm,
    ));
  }
}

/// @nodoc
class _$_WatchExperiencesFoundByNameStarted
  implements _WatchExperiencesFoundByNameStarted {
  const _$_WatchExperiencesFoundByNameStarted(this.searchTerm)
    : assert(searchTerm != null);
  
  @override
  final SearchTerm searchTerm;
  
  @override
  String toString() {
    return 'SearchExperiencesByNameWatcherEvent.watchExperiencesFoundByNameStarted(searchTerm: $searchTerm)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _WatchExperiencesFoundByNameStarted &&
        (identical(other.searchTerm, searchTerm) ||
          const DeepCollectionEquality()
            .equals(other.searchTerm, searchTerm)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);
  
  @override
  _$WatchExperiencesFoundByNameStartedCopyWith<
    _WatchExperiencesFoundByNameStarted>
  get copyWith =>
    __$WatchExperiencesFoundByNameStartedCopyWithImpl<
      _WatchExperiencesFoundByNameStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
    @required Result searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchExperiencesFoundByNameStarted != null);
    assert(searchResultsReceived != null);
    return watchExperiencesFoundByNameStarted(searchTerm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
    Result searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesFoundByNameStarted != null) {
      return watchExperiencesFoundByNameStarted(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
    @required Result searchResultsReceived(_SearchResultsReceived value),
  }) {
    assert(watchExperiencesFoundByNameStarted != null);
    assert(searchResultsReceived != null);
    return watchExperiencesFoundByNameStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
    Result searchResultsReceived(_SearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchExperiencesFoundByNameStarted != null) {
      return watchExperiencesFoundByNameStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchExperiencesFoundByNameStarted
  implements SearchExperiencesByNameWatcherEvent {
  const factory _WatchExperiencesFoundByNameStarted(SearchTerm searchTerm) =
  _$_WatchExperiencesFoundByNameStarted;
  
  SearchTerm get searchTerm;
  
  _$WatchExperiencesFoundByNameStartedCopyWith<
    _WatchExperiencesFoundByNameStarted> get copyWith;
}

/// @nodoc
abstract class _$SearchResultsReceivedCopyWith<$Res> {
  factory _$SearchResultsReceivedCopyWith(_SearchResultsReceived value,
    $Res Function(_SearchResultsReceived) then) =
  __$SearchResultsReceivedCopyWithImpl<$Res>;
  
  $Res call({Either<Failure, KtList<Experience>> failureOrExperiences});
}

/// @nodoc
class __$SearchResultsReceivedCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherEventCopyWithImpl<$Res>
  implements _$SearchResultsReceivedCopyWith<$Res> {
  __$SearchResultsReceivedCopyWithImpl(_SearchResultsReceived _value,
    $Res Function(_SearchResultsReceived) _then)
    : super(_value, (v) => _then(v as _SearchResultsReceived));
  
  @override
  _SearchResultsReceived get _value => super._value as _SearchResultsReceived;
  
  @override
  $Res call({
    Object failureOrExperiences = freezed,
  }) {
    return _then(_SearchResultsReceived(
      failureOrExperiences == freezed
        ? _value.failureOrExperiences
        : failureOrExperiences as Either<Failure, KtList<Experience>>,
    ));
  }
}

/// @nodoc
class _$_SearchResultsReceived implements _SearchResultsReceived {
  const _$_SearchResultsReceived(this.failureOrExperiences)
    : assert(failureOrExperiences != null);
  
  @override
  final Either<Failure, KtList<Experience>> failureOrExperiences;
  
  @override
  String toString() {
    return 'SearchExperiencesByNameWatcherEvent.searchResultsReceived(failureOrExperiences: $failureOrExperiences)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _SearchResultsReceived &&
        (identical(other.failureOrExperiences, failureOrExperiences) ||
          const DeepCollectionEquality()
            .equals(other.failureOrExperiences, failureOrExperiences)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(failureOrExperiences);
  
  @override
  _$SearchResultsReceivedCopyWith<_SearchResultsReceived> get copyWith =>
    __$SearchResultsReceivedCopyWithImpl<_SearchResultsReceived>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
    @required Result searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(watchExperiencesFoundByNameStarted != null);
    assert(searchResultsReceived != null);
    return searchResultsReceived(failureOrExperiences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
    Result searchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchResultsReceived != null) {
      return searchResultsReceived(failureOrExperiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
    @required Result searchResultsReceived(_SearchResultsReceived value),
  }) {
    assert(watchExperiencesFoundByNameStarted != null);
    assert(searchResultsReceived != null);
    return searchResultsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
    Result searchResultsReceived(_SearchResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchResultsReceived != null) {
      return searchResultsReceived(this);
    }
    return orElse();
  }
}

abstract class _SearchResultsReceived
  implements SearchExperiencesByNameWatcherEvent {
  const factory _SearchResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) =
  _$_SearchResultsReceived;
  
  Either<Failure, KtList<Experience>> get failureOrExperiences;
  
  _$SearchResultsReceivedCopyWith<_SearchResultsReceived> get copyWith;
}

/// @nodoc
class _$SearchExperiencesByNameWatcherStateTearOff {
  const _$SearchExperiencesByNameWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _SearchInProgress searchInProgress() {
    return const _SearchInProgress();
  }

// ignore: unused_element
  _SearchSuccess searchSuccess(KtList<Experience> experiencesFound) {
    return _SearchSuccess(
      experiencesFound,
    );
  }

// ignore: unused_element
  _SearchFailure searchFailure(Failure<dynamic> failure) {
    return _SearchFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchExperiencesByNameWatcherState =
_$SearchExperiencesByNameWatcherStateTearOff();

/// @nodoc
mixin _$SearchExperiencesByNameWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtList<Experience> experiencesFound),
    @required Result searchFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
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

/// @nodoc
abstract class $SearchExperiencesByNameWatcherStateCopyWith<$Res> {
  factory $SearchExperiencesByNameWatcherStateCopyWith(SearchExperiencesByNameWatcherState value,
    $Res Function(SearchExperiencesByNameWatcherState) then) =
  _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
  implements $SearchExperiencesByNameWatcherStateCopyWith<$Res> {
  _$SearchExperiencesByNameWatcherStateCopyWithImpl(this._value, this._then);
  
  final SearchExperiencesByNameWatcherState _value;
  
  // ignore: unused_field
  final $Res Function(SearchExperiencesByNameWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByNameWatcherState.initial()';
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
    @required Result searchSuccess(KtList<Experience> experiencesFound),
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
    Result searchSuccess(KtList<Experience> experiencesFound),
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

abstract class _Initial implements SearchExperiencesByNameWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(_SearchInProgress value, $Res Function(_SearchInProgress) then) =
  __$SearchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchInProgressCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
  implements _$SearchInProgressCopyWith<$Res> {
  __$SearchInProgressCopyWithImpl(_SearchInProgress _value, $Res Function(_SearchInProgress) _then)
    : super(_value, (v) => _then(v as _SearchInProgress));
  
  @override
  _SearchInProgress get _value => super._value as _SearchInProgress;
}

/// @nodoc
class _$_SearchInProgress implements _SearchInProgress {
  const _$_SearchInProgress();

  @override
  String toString() {
    return 'SearchExperiencesByNameWatcherState.searchInProgress()';
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
    @required Result searchSuccess(KtList<Experience> experiencesFound),
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
    Result searchSuccess(KtList<Experience> experiencesFound),
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

abstract class _SearchInProgress
  implements SearchExperiencesByNameWatcherState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

/// @nodoc
abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(_SearchSuccess value, $Res Function(_SearchSuccess) then) =
  __$SearchSuccessCopyWithImpl<$Res>;
  
  $Res call({KtList<Experience> experiencesFound});
}

/// @nodoc
class __$SearchSuccessCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
  implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(_SearchSuccess _value, $Res Function(_SearchSuccess) _then)
    : super(_value, (v) => _then(v as _SearchSuccess));
  
  @override
  _SearchSuccess get _value => super._value as _SearchSuccess;
  
  @override
  $Res call({
    Object experiencesFound = freezed,
  }) {
    return _then(_SearchSuccess(
      experiencesFound == freezed
        ? _value.experiencesFound
        : experiencesFound as KtList<Experience>,
    ));
  }
}

/// @nodoc
class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.experiencesFound)
    : assert(experiencesFound != null);
  
  @override
  final KtList<Experience> experiencesFound;
  
  @override
  String toString() {
    return 'SearchExperiencesByNameWatcherState.searchSuccess(experiencesFound: $experiencesFound)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _SearchSuccess &&
        (identical(other.experiencesFound, experiencesFound) ||
          const DeepCollectionEquality()
            .equals(other.experiencesFound, experiencesFound)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(experiencesFound);
  
  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
    __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtList<Experience> experiencesFound),
    @required Result searchFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(experiencesFound);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(experiencesFound);
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

abstract class _SearchSuccess implements SearchExperiencesByNameWatcherState {
  const factory _SearchSuccess(KtList<Experience> experiencesFound) =
  _$_SearchSuccess;
  
  KtList<Experience> get experiencesFound;
  
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith;
}

/// @nodoc
abstract class _$SearchFailureCopyWith<$Res> {
  factory _$SearchFailureCopyWith(_SearchFailure value, $Res Function(_SearchFailure) then) =
  __$SearchFailureCopyWithImpl<$Res>;
  
  $Res call({Failure<dynamic> failure});
  
  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$SearchFailureCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
  implements _$SearchFailureCopyWith<$Res> {
  __$SearchFailureCopyWithImpl(_SearchFailure _value, $Res Function(_SearchFailure) _then)
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

/// @nodoc
class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'SearchExperiencesByNameWatcherState.searchFailure(failure: $failure)';
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
    @required Result searchSuccess(KtList<Experience> experiencesFound),
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
    Result searchSuccess(KtList<Experience> experiencesFound),
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

abstract class _SearchFailure implements SearchExperiencesByNameWatcherState {
  const factory _SearchFailure(Failure<dynamic> failure) = _$_SearchFailure;

  Failure<dynamic> get failure;
  _$SearchFailureCopyWith<_SearchFailure> get copyWith;
}
