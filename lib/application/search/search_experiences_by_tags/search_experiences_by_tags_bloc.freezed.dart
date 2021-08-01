// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_experiences_by_tags_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchExperiencesByTagsEventTearOff {
  const _$SearchExperiencesByTagsEventTearOff();

  _Submitted submitted(Set<Tag> tags) {
    return _Submitted(
      tags,
    );
  }

  _ResultsReceived resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) {
    return _ResultsReceived(
      failureOrExperiences,
    );
  }
}

/// @nodoc
const $SearchExperiencesByTagsEvent = _$SearchExperiencesByTagsEventTearOff();

/// @nodoc
mixin _$SearchExperiencesByTagsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Tag> tags) submitted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Tag> tags)? submitted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchExperiencesByTagsEventCopyWith<$Res> {
  factory $SearchExperiencesByTagsEventCopyWith(
          SearchExperiencesByTagsEvent value, $Res Function(SearchExperiencesByTagsEvent) then) =
      _$SearchExperiencesByTagsEventCopyWithImpl<$Res>;
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
    Object? tags = freezed,
  }) {
    return _then(_Submitted(
      tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as Set<Tag>,
    ));
  }
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted(this.tags);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tags);

  @JsonKey(ignore: true)
  @override
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Tag> tags) submitted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) resultsReceived,
  }) {
    return submitted(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Tag> tags)? submitted,
    TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences)? resultsReceived,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SearchExperiencesByTagsEvent {
  const factory _Submitted(Set<Tag> tags) = _$_Submitted;

  Set<Tag> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SubmittedCopyWith<_Submitted> get copyWith => throw _privateConstructorUsedError;
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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrExperiences);

  @JsonKey(ignore: true)
  @override
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith =>
      __$ResultsReceivedCopyWithImpl<_ResultsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Tag> tags) submitted,
    required TResult Function(Either<Failure, KtList<Experience>> failureOrExperiences) resultsReceived,
  }) {
    return resultsReceived(failureOrExperiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Tag> tags)? submitted,
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
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_ResultsReceived value) resultsReceived,
  }) {
    return resultsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submitted value)? submitted,
    TResult Function(_ResultsReceived value)? resultsReceived,
    required TResult orElse(),
  }) {
    if (resultsReceived != null) {
      return resultsReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultsReceived implements SearchExperiencesByTagsEvent {
  const factory _ResultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) =
      _$_ResultsReceived;

  Either<Failure, KtList<Experience>> get failureOrExperiences => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ResultsReceivedCopyWith<_ResultsReceived> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchExperiencesByTagsStateTearOff {
  const _$SearchExperiencesByTagsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SearchInProgress searchInProgress() {
    return const _SearchInProgress();
  }

  _SearchSuccess searchSuccess(KtList<Experience> experiencesFound) {
    return _SearchSuccess(
      experiencesFound,
    );
  }

  _SearchFailure searchFailure(Failure<dynamic> failure) {
    return _SearchFailure(
      failure,
    );
  }

  _ValueFailure valueFailure(ValueFailure<KtSet<Tag>> failure) {
    return _ValueFailure(
      failure,
    );
  }
}

/// @nodoc
const $SearchExperiencesByTagsState = _$SearchExperiencesByTagsStateTearOff();

/// @nodoc
mixin _$SearchExperiencesByTagsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Experience> experiencesFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
    required TResult Function(ValueFailure<KtSet<Tag>> failure) valueFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Experience> experiencesFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    TResult Function(ValueFailure<KtSet<Tag>> failure)? valueFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SearchInProgress value) searchInProgress,
    required TResult Function(_SearchSuccess value) searchSuccess,
    required TResult Function(_SearchFailure value) searchFailure,
    required TResult Function(_ValueFailure value) valueFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    TResult Function(_ValueFailure value)? valueFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchExperiencesByTagsStateCopyWith<$Res> {
  factory $SearchExperiencesByTagsStateCopyWith(
          SearchExperiencesByTagsState value, $Res Function(SearchExperiencesByTagsState) then) =
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Experience> experiencesFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
    required TResult Function(ValueFailure<KtSet<Tag>> failure) valueFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Experience> experiencesFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    TResult Function(ValueFailure<KtSet<Tag>> failure)? valueFailure,
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
    required TResult Function(_ValueFailure value) valueFailure,
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
    TResult Function(_ValueFailure value)? valueFailure,
    required TResult orElse(),
  }) {
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
  factory _$SearchInProgressCopyWith(
          _SearchInProgress value, $Res Function(_SearchInProgress) then) =
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Experience> experiencesFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
    required TResult Function(ValueFailure<KtSet<Tag>> failure) valueFailure,
  }) {
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Experience> experiencesFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    TResult Function(ValueFailure<KtSet<Tag>> failure)? valueFailure,
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
    required TResult Function(_ValueFailure value) valueFailure,
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
    TResult Function(_ValueFailure value)? valueFailure,
    required TResult orElse(),
  }) {
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
    Object? experiencesFound = freezed,
  }) {
    return _then(_SearchSuccess(
      experiencesFound == freezed
          ? _value.experiencesFound
          : experiencesFound // ignore: cast_nullable_to_non_nullable
              as KtList<Experience>,
    ));
  }
}

/// @nodoc

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.experiencesFound);

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
                const DeepCollectionEquality().equals(other.experiencesFound, experiencesFound)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experiencesFound);

  @JsonKey(ignore: true)
  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
      __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Experience> experiencesFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
    required TResult Function(ValueFailure<KtSet<Tag>> failure) valueFailure,
  }) {
    return searchSuccess(experiencesFound);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Experience> experiencesFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    TResult Function(ValueFailure<KtSet<Tag>> failure)? valueFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(experiencesFound);
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
    required TResult Function(_ValueFailure value) valueFailure,
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
    TResult Function(_ValueFailure value)? valueFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements SearchExperiencesByTagsState {
  const factory _SearchSuccess(KtList<Experience> experiencesFound) = _$_SearchSuccess;

  KtList<Experience> get experiencesFound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith => throw _privateConstructorUsedError;
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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$SearchFailureCopyWith<_SearchFailure> get copyWith =>
      __$SearchFailureCopyWithImpl<_SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Experience> experiencesFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
    required TResult Function(ValueFailure<KtSet<Tag>> failure) valueFailure,
  }) {
    return searchFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Experience> experiencesFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    TResult Function(ValueFailure<KtSet<Tag>> failure)? valueFailure,
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
    required TResult Function(_ValueFailure value) valueFailure,
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
    TResult Function(_ValueFailure value)? valueFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements SearchExperiencesByTagsState {
  const factory _SearchFailure(Failure<dynamic> failure) = _$_SearchFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$SearchFailureCopyWith<_SearchFailure> get copyWith => throw _privateConstructorUsedError;
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
    Object? failure = freezed,
  }) {
    return _then(_ValueFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValueFailure<KtSet<Tag>>,
    ));
  }

  @override
  $ValueFailureCopyWith<KtSet<Tag>, $Res> get failure {
    return $ValueFailureCopyWith<KtSet<Tag>, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_ValueFailure implements _ValueFailure {
  const _$_ValueFailure(this.failure);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ValueFailureCopyWith<_ValueFailure> get copyWith =>
      __$ValueFailureCopyWithImpl<_ValueFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchInProgress,
    required TResult Function(KtList<Experience> experiencesFound) searchSuccess,
    required TResult Function(Failure<dynamic> failure) searchFailure,
    required TResult Function(ValueFailure<KtSet<Tag>> failure) valueFailure,
  }) {
    return valueFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchInProgress,
    TResult Function(KtList<Experience> experiencesFound)? searchSuccess,
    TResult Function(Failure<dynamic> failure)? searchFailure,
    TResult Function(ValueFailure<KtSet<Tag>> failure)? valueFailure,
    required TResult orElse(),
  }) {
    if (valueFailure != null) {
      return valueFailure(failure);
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
    required TResult Function(_ValueFailure value) valueFailure,
  }) {
    return valueFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SearchInProgress value)? searchInProgress,
    TResult Function(_SearchSuccess value)? searchSuccess,
    TResult Function(_SearchFailure value)? searchFailure,
    TResult Function(_ValueFailure value)? valueFailure,
    required TResult orElse(),
  }) {
    if (valueFailure != null) {
      return valueFailure(this);
    }
    return orElse();
  }
}

abstract class _ValueFailure implements SearchExperiencesByTagsState {
  const factory _ValueFailure(ValueFailure<KtSet<Tag>> failure) = _$_ValueFailure;

  ValueFailure<KtSet<Tag>> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$ValueFailureCopyWith<_ValueFailure> get copyWith => throw _privateConstructorUsedError;
}
