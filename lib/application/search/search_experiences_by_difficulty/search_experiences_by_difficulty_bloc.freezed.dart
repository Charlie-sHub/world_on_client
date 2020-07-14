// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_experiences_by_difficulty_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchExperiencesByDifficultyEventTearOff {
  const _$SearchExperiencesByDifficultyEventTearOff();

  _Submitted submitted(int difficulty) {
    return _Submitted(
      difficulty,
    );
  }
}

// ignore: unused_element
const $SearchExperiencesByDifficultyEvent = _$SearchExperiencesByDifficultyEventTearOff();

mixin _$SearchExperiencesByDifficultyEvent {
  int get difficulty;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(int difficulty),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(int difficulty),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    @required Result orElse(),
  });

  $SearchExperiencesByDifficultyEventCopyWith<SearchExperiencesByDifficultyEvent> get copyWith;
}

abstract class $SearchExperiencesByDifficultyEventCopyWith<$Res> {
  factory $SearchExperiencesByDifficultyEventCopyWith(SearchExperiencesByDifficultyEvent value,
    $Res Function(SearchExperiencesByDifficultyEvent) then) =
      _$SearchExperiencesByDifficultyEventCopyWithImpl<$Res>;
  $Res call({int difficulty});
}

class _$SearchExperiencesByDifficultyEventCopyWithImpl<$Res>
  implements $SearchExperiencesByDifficultyEventCopyWith<$Res> {
  _$SearchExperiencesByDifficultyEventCopyWithImpl(this._value, this._then);

  final SearchExperiencesByDifficultyEvent _value;
  // ignore: unused_field
  final $Res Function(SearchExperiencesByDifficultyEvent) _then;

  @override
  $Res call({
    Object difficulty = freezed,
  }) {
    return _then(_value.copyWith(
      difficulty: difficulty == freezed ? _value.difficulty : difficulty as int,
    ));
  }
}

abstract class _$SubmittedCopyWith<$Res>
  implements $SearchExperiencesByDifficultyEventCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) =
  __$SubmittedCopyWithImpl<$Res>;
  @override
  $Res call({int difficulty});
}

class __$SubmittedCopyWithImpl<$Res> extends _$SearchExperiencesByDifficultyEventCopyWithImpl<$Res>
  implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
    : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;

  @override
  $Res call({
    Object difficulty = freezed,
  }) {
    return _then(_Submitted(
      difficulty == freezed ? _value.difficulty : difficulty as int,
    ));
  }
}

class _$_Submitted implements _Submitted {
  const _$_Submitted(this.difficulty) : assert(difficulty != null);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'SearchExperiencesByDifficultyEvent.submitted(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Submitted &&
        (identical(other.difficulty, difficulty) ||
          const DeepCollectionEquality()
            .equals(other.difficulty, difficulty)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(difficulty);

  @override
  _$SubmittedCopyWith<_Submitted> get copyWith =>
    __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result submitted(int difficulty),
  }) {
    assert(submitted != null);
    return submitted(difficulty);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result submitted(int difficulty),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result submitted(_Submitted value),
  }) {
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SearchExperiencesByDifficultyEvent {
  const factory _Submitted(int difficulty) = _$_Submitted;

  @override
  int get difficulty;
  @override
  _$SubmittedCopyWith<_Submitted> get copyWith;
}

class _$SearchExperiencesByDifficultyStateTearOff {
  const _$SearchExperiencesByDifficultyStateTearOff();

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

  _ValueFailure valueFailure(ValueFailure<int> failure) {
    return _ValueFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $SearchExperiencesByDifficultyState =
_$SearchExperiencesByDifficultyStateTearOff();

mixin _$SearchExperiencesByDifficultyState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(KtSet<Experience> experiencesFound),
    @required Result searchFailure(Failure<dynamic> failure),
    @required Result valueFailure(ValueFailure<int> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(KtSet<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<int> failure),
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

abstract class $SearchExperiencesByDifficultyStateCopyWith<$Res> {
  factory $SearchExperiencesByDifficultyStateCopyWith(SearchExperiencesByDifficultyState value,
    $Res Function(SearchExperiencesByDifficultyState) then) =
      _$SearchExperiencesByDifficultyStateCopyWithImpl<$Res>;
}

class _$SearchExperiencesByDifficultyStateCopyWithImpl<$Res>
  implements $SearchExperiencesByDifficultyStateCopyWith<$Res> {
  _$SearchExperiencesByDifficultyStateCopyWithImpl(this._value, this._then);

  final SearchExperiencesByDifficultyState _value;
  // ignore: unused_field
  final $Res Function(SearchExperiencesByDifficultyState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$SearchExperiencesByDifficultyStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByDifficultyState.initial()';
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
    @required Result valueFailure(ValueFailure<int> failure),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<int> failure),
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

abstract class _Initial implements SearchExperiencesByDifficultyState {
  const factory _Initial() = _$_Initial;
}

abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(_SearchInProgress value, $Res Function(_SearchInProgress) then) =
  __$SearchInProgressCopyWithImpl<$Res>;
}

class __$SearchInProgressCopyWithImpl<$Res> extends _$SearchExperiencesByDifficultyStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByDifficultyState.searchInProgress()';
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
    @required Result valueFailure(ValueFailure<int> failure),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<int> failure),
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

abstract class _SearchInProgress implements SearchExperiencesByDifficultyState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(_SearchSuccess value, $Res Function(_SearchSuccess) then) =
  __$SearchSuccessCopyWithImpl<$Res>;
  $Res call({KtSet<Experience> experiencesFound});
}

class __$SearchSuccessCopyWithImpl<$Res> extends _$SearchExperiencesByDifficultyStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByDifficultyState.searchSuccess(experiencesFound: $experiencesFound)';
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
    @required Result valueFailure(ValueFailure<int> failure),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<int> failure),
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

abstract class _SearchSuccess implements SearchExperiencesByDifficultyState {
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

class __$SearchFailureCopyWithImpl<$Res> extends _$SearchExperiencesByDifficultyStateCopyWithImpl<$Res>
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
    return 'SearchExperiencesByDifficultyState.searchFailure(failure: $failure)';
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
    @required Result valueFailure(ValueFailure<int> failure),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<int> failure),
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

abstract class _SearchFailure implements SearchExperiencesByDifficultyState {
  const factory _SearchFailure(Failure<dynamic> failure) = _$_SearchFailure;

  Failure<dynamic> get failure;
  _$SearchFailureCopyWith<_SearchFailure> get copyWith;
}

abstract class _$ValueFailureCopyWith<$Res> {
  factory _$ValueFailureCopyWith(_ValueFailure value, $Res Function(_ValueFailure) then) =
  __$ValueFailureCopyWithImpl<$Res>;
  $Res call({ValueFailure<int> failure});

  $ValueFailureCopyWith<int, $Res> get failure;
}

class __$ValueFailureCopyWithImpl<$Res> extends _$SearchExperiencesByDifficultyStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as ValueFailure<int>,
    ));
  }

  @override
  $ValueFailureCopyWith<int, $Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ValueFailureCopyWith<int, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$_ValueFailure implements _ValueFailure {
  const _$_ValueFailure(this.failure) : assert(failure != null);

  @override
  final ValueFailure<int> failure;

  @override
  String toString() {
    return 'SearchExperiencesByDifficultyState.valueFailure(failure: $failure)';
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
    @required Result searchSuccess(KtSet<Experience> experiencesFound),
    @required Result searchFailure(Failure<dynamic> failure),
    @required Result valueFailure(ValueFailure<int> failure),
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
    Result searchSuccess(KtSet<Experience> experiencesFound),
    Result searchFailure(Failure<dynamic> failure),
    Result valueFailure(ValueFailure<int> failure),
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

abstract class _ValueFailure implements SearchExperiencesByDifficultyState {
  const factory _ValueFailure(ValueFailure<int> failure) = _$_ValueFailure;

  ValueFailure<int> get failure;
  _$ValueFailureCopyWith<_ValueFailure> get copyWith;
}
