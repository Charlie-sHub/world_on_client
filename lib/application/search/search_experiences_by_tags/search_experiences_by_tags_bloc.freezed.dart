// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_experiences_by_tags_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchExperiencesByTagsEventTearOff {
  const _$SearchExperiencesByTagsEventTearOff();

// ignore: unused_element
  _Submitted submitted(Set<Tag> tags) {
    return _Submitted(
      tags,
    );
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
const $SearchExperiencesByTagsEvent = _$SearchExperiencesByTagsEventTearOff();

/// @nodoc
mixin _$SearchExperiencesByTagsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(Set<Tag> tags),
    @required Result resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(Set<Tag> tags),
    Result resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result resultsReceived(_ResultsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchExperiencesByTagsEventCopyWith<$Res> {
  factory $SearchExperiencesByTagsEventCopyWith(SearchExperiencesByTagsEvent value, $Res Function(SearchExperiencesByTagsEvent) then) = _$SearchExperiencesByTagsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchExperiencesByTagsEventCopyWithImpl<$Res>
  implements $SearchExperiencesByTagsEventCopyWith<$Res> {
  _$SearchExperiencesByTagsEventCopyWithImpl(this._value, this._then);
  
  final SearchExperiencesByTagsEvent _value;
  
  // ignore: unused_field
  final $Res Function(SearchExperiencesByTagsEvent) _then;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) =
  __$SubmittedCopyWithImpl<$Res>;
  
  $Res call({Set<Tag> tags});
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$SearchExperiencesByTagsEventCopyWithImpl<$Res>
  implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
    : super(_value, (v) => _then(v as _Submitted));
  
  @override
  _Submitted get _value => super._value as _Submitted;
  
  @override
  $Res call({
    Object tags = freezed,
  }) {
    return _then(_Submitted(
      tags == freezed ? _value.tags : tags as Set<Tag>,
    ));
  }
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted(this.tags) : assert(tags != null);

  @override
  final Set<Tag> tags;

  @override
  String toString() {
    return 'SearchExperiencesByTagsEvent.submitted(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Submitted &&
        (identical(other.tags, tags) ||
          const DeepCollectionEquality().equals(other.tags, tags)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @override
  _$SubmittedCopyWith<_Submitted> get copyWith =>
    __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(Set<Tag> tags),
    @required Result resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(submitted != null);
    assert(resultsReceived != null);
    return submitted(tags);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(Set<Tag> tags),
    Result resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(submitted != null);
    assert(resultsReceived != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    Result resultsReceived(_ResultsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SearchExperiencesByTagsEvent {
  const factory _Submitted(Set<Tag> tags) = _$_Submitted;

  Set<Tag> get tags;
  _$SubmittedCopyWith<_Submitted> get copyWith;
}

/// @nodoc
abstract class _$ResultsReceivedCopyWith<$Res> {
  factory _$ResultsReceivedCopyWith(_ResultsReceived value, $Res Function(_ResultsReceived) then) =
  __$ResultsReceivedCopyWithImpl<$Res>;
  
  $Res call({Either<Failure, KtList<Experience>> failureOrExperiences});
}

/// @nodoc
class __$ResultsReceivedCopyWithImpl<$Res> extends _$SearchExperiencesByTagsEventCopyWithImpl<$Res>
  implements _$ResultsReceivedCopyWith<$Res> {
  __$ResultsReceivedCopyWithImpl(_ResultsReceived _value, $Res Function(_ResultsReceived) _then)
    : super(_value, (v) => _then(v as _ResultsReceived));
  
  @override
  _ResultsReceived get _value => super._value as _ResultsReceived;
  
  @override
  $Res call({
    Object failureOrExperiences = freezed,
  }) {
    return _then(_ResultsReceived(
      failureOrExperiences == freezed
        ? _value.failureOrExperiences
        : failureOrExperiences as Either<Failure, KtList<Experience>>,
    ));
  }
}

/// @nodoc
class _$_ResultsReceived implements _ResultsReceived {
  const _$_ResultsReceived(this.failureOrExperiences)
    : assert(failureOrExperiences != null);
  
  @override
  final Either<Failure, KtList<Experience>> failureOrExperiences;
  
  @override
  String toString() {
    return 'SearchExperiencesByTagsEvent.resultsReceived(failureOrExperiences: $failureOrExperiences)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ResultsReceived &&
        (identical(other.failureOrExperiences, failureOrExperiences) ||
          const DeepCollectionEquality()
            .equals(other.failureOrExperiences, failureOrExperiences)));
  }
  
  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(failureOrExperiences);
  
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith =>
    __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(Set<Tag> tags),
    @required Result resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
  }) {
    assert(submitted != null);
    assert(resultsReceived != null);
    return resultsReceived(failureOrExperiences);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(Set<Tag> tags),
    Result resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resultsReceived != null) {
      return resultsReceived(failureOrExperiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
    @required Result resultsReceived(_ResultsReceived value),
  }) {
    assert(submitted != null);
    assert(resultsReceived != null);
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
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

abstract class _ResultsReceived implements SearchExperiencesByTagsEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) =
  _$_ResultsReceived;
  
  Either<Failure, KtList<Experience>> get failureOrExperiences;
  
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith;
}

/// @nodoc
class _$SearchExperiencesByTagsStateTearOff {
  const _$SearchExperiencesByTagsStateTearOff();

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

// ignore: unused_element
  _ValueFailure valueFailure(ValueFailure<KtSet<Tag>> failure) {
    return _ValueFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchExperiencesByTagsState = _$SearchExperiencesByTagsStateTearOff();

/// @nodoc
mixin _$SearchExperiencesByTagsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtList<Experience> experiencesFound),
    @required Result searchFailure(Failure<dynamic> failure),
    @required Result valueFailure(ValueFailure<KtSet<Tag>> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<KtSet<Tag>> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
    @required Result valueFailure(_ValueFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    Result valueFailure(_ValueFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchExperiencesByTagsStateCopyWith<$Res> {
  factory $SearchExperiencesByTagsStateCopyWith(SearchExperiencesByTagsState value,
    $Res Function(SearchExperiencesByTagsState) then) =
  _$SearchExperiencesByTagsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchExperiencesByTagsStateCopyWithImpl<$Res>
  implements $SearchExperiencesByTagsStateCopyWith<$Res> {
  _$SearchExperiencesByTagsStateCopyWithImpl(this._value, this._then);
  
  final SearchExperiencesByTagsState _value;
  
  // ignore: unused_field
  final $Res Function(SearchExperiencesByTagsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchExperiencesByTagsStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByTagsState.initial()';
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
    @required Result valueFailure(ValueFailure<KtSet<Tag>> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<KtSet<Tag>> failure),
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
    @required Result valueFailure(_ValueFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    Result valueFailure(_ValueFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchExperiencesByTagsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(_SearchInProgress value, $Res Function(_SearchInProgress) then) =
  __$SearchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchInProgressCopyWithImpl<$Res> extends _$SearchExperiencesByTagsStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByTagsState.searchInProgress()';
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
    @required Result valueFailure(ValueFailure<KtSet<Tag>> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<KtSet<Tag>> failure),
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
    @required Result valueFailure(_ValueFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    Result valueFailure(_ValueFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchInProgress implements SearchExperiencesByTagsState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

/// @nodoc
abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(_SearchSuccess value, $Res Function(_SearchSuccess) then) =
  __$SearchSuccessCopyWithImpl<$Res>;
  
  $Res call({KtList<Experience> experiencesFound});
}

/// @nodoc
class __$SearchSuccessCopyWithImpl<$Res> extends _$SearchExperiencesByTagsStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByTagsState.searchSuccess(experiencesFound: $experiencesFound)';
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
    @required Result valueFailure(ValueFailure<KtSet<Tag>> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return searchSuccess(experiencesFound);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<KtSet<Tag>> failure),
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
    @required Result valueFailure(_ValueFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    Result valueFailure(_ValueFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements SearchExperiencesByTagsState {
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
class __$SearchFailureCopyWithImpl<$Res> extends _$SearchExperiencesByTagsStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByTagsState.searchFailure(failure: $failure)';
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
    @required Result valueFailure(ValueFailure<KtSet<Tag>> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<KtSet<Tag>> failure),
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
    @required Result valueFailure(_ValueFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    Result valueFailure(_ValueFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements SearchExperiencesByTagsState {
  const factory _SearchFailure(Failure<dynamic> failure) = _$_SearchFailure;

  Failure<dynamic> get failure;
  _$SearchFailureCopyWith<_SearchFailure> get copyWith;
}

/// @nodoc
abstract class _$ValueFailureCopyWith<$Res> {
  factory _$ValueFailureCopyWith(_ValueFailure value, $Res Function(_ValueFailure) then) =
  __$ValueFailureCopyWithImpl<$Res>;
  
  $Res call({ValueFailure<KtSet<Tag>> failure});
  
  $ValueFailureCopyWith<KtSet<Tag>, $Res> get failure;
}

/// @nodoc
class __$ValueFailureCopyWithImpl<$Res> extends _$SearchExperiencesByTagsStateCopyWithImpl<$Res>
  implements _$ValueFailureCopyWith<$Res> {
  __$ValueFailureCopyWithImpl(_ValueFailure _value, $Res Function(_ValueFailure) _then)
    : super(_value, (v) => _then(v as _ValueFailure));
  
  @override
  _ValueFailure get _value => super._value as _ValueFailure;
  
  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ValueFailure(
      failure == freezed ? _value.failure : failure as ValueFailure<KtSet<Tag>>,
    ));
  }

  @override
  $ValueFailureCopyWith<KtSet<Tag>, $Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ValueFailureCopyWith<KtSet<Tag>, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_ValueFailure implements _ValueFailure {
  const _$_ValueFailure(this.failure) : assert(failure != null);

  @override
  final ValueFailure<KtSet<Tag>> failure;

  @override
  String toString() {
    return 'SearchExperiencesByTagsState.valueFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ValueFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ValueFailureCopyWith<_ValueFailure> get copyWith =>
    __$ValueFailureCopyWithImpl<_ValueFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtList<Experience> experiencesFound),
    @required Result searchFailure(Failure<dynamic> failure),
    @required Result valueFailure(ValueFailure<KtSet<Tag>> failure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return valueFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtList<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<KtSet<Tag>> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (valueFailure != null) {
      return valueFailure(failure);
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
    @required Result valueFailure(_ValueFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    assert(valueFailure != null);
    return valueFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    Result valueFailure(_ValueFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (valueFailure != null) {
      return valueFailure(this);
    }
    return orElse();
  }
}

abstract class _ValueFailure implements SearchExperiencesByTagsState {
  const factory _ValueFailure(ValueFailure<KtSet<Tag>> failure) =
  _$_ValueFailure;
  
  ValueFailure<KtSet<Tag>> get failure;
  
  _$ValueFailureCopyWith<_ValueFailure> get copyWith;
}
