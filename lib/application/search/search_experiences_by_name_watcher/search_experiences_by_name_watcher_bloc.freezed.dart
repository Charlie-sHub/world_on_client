// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_experiences_by_name_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchExperiencesByNameWatcherEventTearOff {
  const _$SearchExperiencesByNameWatcherEventTearOff();

  _WatchExperiencesFoundByNameStarted watchExperiencesFoundByNameStarted(SearchTerm searchTerm) {
    return _WatchExperiencesFoundByNameStarted(
      searchTerm,
    );
  }
}

// ignore: unused_element
const $SearchExperiencesByNameWatcherEvent = _$SearchExperiencesByNameWatcherEventTearOff();

mixin _$SearchExperiencesByNameWatcherEvent {
  SearchTerm get searchTerm;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
    @required Result orElse(),
  });

  $SearchExperiencesByNameWatcherEventCopyWith<SearchExperiencesByNameWatcherEvent> get copyWith;
}

abstract class $SearchExperiencesByNameWatcherEventCopyWith<$Res> {
  factory $SearchExperiencesByNameWatcherEventCopyWith(SearchExperiencesByNameWatcherEvent value,
    $Res Function(SearchExperiencesByNameWatcherEvent) then) =
      _$SearchExperiencesByNameWatcherEventCopyWithImpl<$Res>;
  $Res call({SearchTerm searchTerm});
}

class _$SearchExperiencesByNameWatcherEventCopyWithImpl<$Res>
  implements $SearchExperiencesByNameWatcherEventCopyWith<$Res> {
  _$SearchExperiencesByNameWatcherEventCopyWithImpl(this._value, this._then);

  final SearchExperiencesByNameWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(SearchExperiencesByNameWatcherEvent) _then;

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

abstract class _$WatchExperiencesFoundByNameStartedCopyWith<$Res>
  implements $SearchExperiencesByNameWatcherEventCopyWith<$Res> {
  factory _$WatchExperiencesFoundByNameStartedCopyWith(_WatchExperiencesFoundByNameStarted value,
    $Res Function(_WatchExperiencesFoundByNameStarted) then) =
      __$WatchExperiencesFoundByNameStartedCopyWithImpl<$Res>;
  @override
  $Res call({SearchTerm searchTerm});
}

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
  }) {
    assert(watchExperiencesFoundByNameStarted != null);
    return watchExperiencesFoundByNameStarted(searchTerm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(SearchTerm searchTerm),
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
  }) {
    assert(watchExperiencesFoundByNameStarted != null);
    return watchExperiencesFoundByNameStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchExperiencesFoundByNameStarted(_WatchExperiencesFoundByNameStarted value),
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

  @override
  SearchTerm get searchTerm;
  @override
  _$WatchExperiencesFoundByNameStartedCopyWith<
    _WatchExperiencesFoundByNameStarted> get copyWith;
}

class _$SearchExperiencesByNameWatcherStateTearOff {
  const _$SearchExperiencesByNameWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SearchInProgress searchInProgress() {
    return const _SearchInProgress();
  }

  _SearchSuccess searchSuccess(KtSet<Experience> experiencesFound) {
    return _SearchSuccess(
      experiencesFound,
    );
  }

  _SearchFailure searchFailure(Failure<dynamic> failure) {
    return _SearchFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $SearchExperiencesByNameWatcherState =
_$SearchExperiencesByNameWatcherStateTearOff();

mixin _$SearchExperiencesByNameWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtSet<Experience> experiencesFound),
    @required Result searchFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtSet<Experience> experiencesFound),
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

abstract class $SearchExperiencesByNameWatcherStateCopyWith<$Res> {
  factory $SearchExperiencesByNameWatcherStateCopyWith(SearchExperiencesByNameWatcherState value,
    $Res Function(SearchExperiencesByNameWatcherState) then) =
      _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>;
}

class _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
  implements $SearchExperiencesByNameWatcherStateCopyWith<$Res> {
  _$SearchExperiencesByNameWatcherStateCopyWithImpl(this._value, this._then);

  final SearchExperiencesByNameWatcherState _value;
  // ignore: unused_field
  final $Res Function(SearchExperiencesByNameWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
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
    @required Result searchSuccess(KtSet<Experience> experiencesFound),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
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

abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(_SearchInProgress value, $Res Function(_SearchInProgress) then) =
  __$SearchInProgressCopyWithImpl<$Res>;
}

class __$SearchInProgressCopyWithImpl<$Res> extends _$SearchExperiencesByNameWatcherStateCopyWithImpl<$Res>
  implements _$SearchInProgressCopyWith<$Res> {
  __$SearchInProgressCopyWithImpl(_SearchInProgress _value, $Res Function(_SearchInProgress) _then)
    : super(_value, (v) => _then(v as _SearchInProgress));

  @override
  _SearchInProgress get _value => super._value as _SearchInProgress;
}

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
    @required Result searchSuccess(KtSet<Experience> experiencesFound),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
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

abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(_SearchSuccess value, $Res Function(_SearchSuccess) then) =
  __$SearchSuccessCopyWithImpl<$Res>;
  
  $Res call({KtSet<Experience> experiencesFound});
}

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
        : experiencesFound as KtSet<Experience>,
    ));
  }
}

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.experiencesFound)
    : assert(experiencesFound != null);

  @override
  final KtSet<Experience> experiencesFound;

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
    @required Result searchSuccess(KtSet<Experience> experiencesFound),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
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
  const factory _SearchSuccess(KtSet<Experience> experiencesFound) =
  _$_SearchSuccess;
  
  KtSet<Experience> get experiencesFound;
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith;
}

abstract class _$SearchFailureCopyWith<$Res> {
  factory _$SearchFailureCopyWith(_SearchFailure value, $Res Function(_SearchFailure) then) =
  __$SearchFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

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
    @required Result searchSuccess(KtSet<Experience> experiencesFound),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
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
