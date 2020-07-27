// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rate_experience_difficulty_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RateExperienceDifficultyActorEventTearOff {
  const _$RateExperienceDifficultyActorEventTearOff();

// ignore: unused_element
  _DifficultyRated difficultyRated({@required Experience experience, @required int difficultyRating}) {
    return _DifficultyRated(
      experience: experience,
      difficultyRating: difficultyRating,
    );
  }
}

// ignore: unused_element
const $RateExperienceDifficultyActorEvent = _$RateExperienceDifficultyActorEventTearOff();

mixin _$RateExperienceDifficultyActorEvent {
  Experience get experience;

  int get difficultyRating;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result difficultyRated(Experience experience, int difficultyRating),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result difficultyRated(Experience experience, int difficultyRating),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result difficultyRated(_DifficultyRated value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result difficultyRated(_DifficultyRated value),
    @required Result orElse(),
  });

  $RateExperienceDifficultyActorEventCopyWith<RateExperienceDifficultyActorEvent> get copyWith;
}

abstract class $RateExperienceDifficultyActorEventCopyWith<$Res> {
  factory $RateExperienceDifficultyActorEventCopyWith(RateExperienceDifficultyActorEvent value, $Res Function(RateExperienceDifficultyActorEvent) then) =
      _$RateExperienceDifficultyActorEventCopyWithImpl<$Res>;

  $Res call({Experience experience, int difficultyRating});

  $ExperienceCopyWith<$Res> get experience;
}

class _$RateExperienceDifficultyActorEventCopyWithImpl<$Res> implements $RateExperienceDifficultyActorEventCopyWith<$Res> {
  _$RateExperienceDifficultyActorEventCopyWithImpl(this._value, this._then);

  final RateExperienceDifficultyActorEvent _value;

  // ignore: unused_field
  final $Res Function(RateExperienceDifficultyActorEvent) _then;

  @override
  $Res call({
    Object experience = freezed,
    Object difficultyRating = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed ? _value.experience : experience as Experience,
      difficultyRating: difficultyRating == freezed ? _value.difficultyRating : difficultyRating as int,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    if (_value.experience == null) {
      return null;
    }
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

abstract class _$DifficultyRatedCopyWith<$Res> implements $RateExperienceDifficultyActorEventCopyWith<$Res> {
  factory _$DifficultyRatedCopyWith(_DifficultyRated value, $Res Function(_DifficultyRated) then) = __$DifficultyRatedCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience, int difficultyRating});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$DifficultyRatedCopyWithImpl<$Res> extends _$RateExperienceDifficultyActorEventCopyWithImpl<$Res> implements _$DifficultyRatedCopyWith<$Res> {
  __$DifficultyRatedCopyWithImpl(_DifficultyRated _value, $Res Function(_DifficultyRated) _then) : super(_value, (v) => _then(v as _DifficultyRated));

  @override
  _DifficultyRated get _value => super._value as _DifficultyRated;

  @override
  $Res call({
    Object experience = freezed,
    Object difficultyRating = freezed,
  }) {
    return _then(_DifficultyRated(
      experience: experience == freezed ? _value.experience : experience as Experience,
      difficultyRating: difficultyRating == freezed ? _value.difficultyRating : difficultyRating as int,
    ));
  }
}

class _$_DifficultyRated implements _DifficultyRated {
  const _$_DifficultyRated({@required this.experience, @required this.difficultyRating})
      : assert(experience != null),
        assert(difficultyRating != null);

  @override
  final Experience experience;
  @override
  final int difficultyRating;

  @override
  String toString() {
    return 'RateExperienceDifficultyActorEvent.difficultyRated(experience: $experience, difficultyRating: $difficultyRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DifficultyRated &&
            (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)) &&
            (identical(other.difficultyRating, difficultyRating) || const DeepCollectionEquality().equals(other.difficultyRating, difficultyRating)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience) ^ const DeepCollectionEquality().hash(difficultyRating);

  @override
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith => __$DifficultyRatedCopyWithImpl<_DifficultyRated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result difficultyRated(Experience experience, int difficultyRating),
  }) {
    assert(difficultyRated != null);
    return difficultyRated(experience, difficultyRating);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result difficultyRated(Experience experience, int difficultyRating),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyRated != null) {
      return difficultyRated(experience, difficultyRating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result difficultyRated(_DifficultyRated value),
  }) {
    assert(difficultyRated != null);
    return difficultyRated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result difficultyRated(_DifficultyRated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyRated != null) {
      return difficultyRated(this);
    }
    return orElse();
  }
}

abstract class _DifficultyRated implements RateExperienceDifficultyActorEvent {
  const factory _DifficultyRated({@required Experience experience, @required int difficultyRating}) = _$_DifficultyRated;

  @override
  Experience get experience;

  @override
  int get difficultyRating;

  @override
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith;
}

class _$RateExperienceDifficultyActorStateTearOff {
  const _$RateExperienceDifficultyActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _RatingSuccess ratingSuccess() {
    return const _RatingSuccess();
  }

// ignore: unused_element
  _RatingFailure ratingFailure(Failure<dynamic> failure) {
    return _RatingFailure(
      failure,
    );
  }
}

// ignore: unused_element
const $RateExperienceDifficultyActorState = _$RateExperienceDifficultyActorStateTearOff();

mixin _$RateExperienceDifficultyActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result ratingSuccess(),
    @required Result ratingFailure(Failure<dynamic> failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result ratingSuccess(),
    Result ratingFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result ratingSuccess(_RatingSuccess value),
    @required Result ratingFailure(_RatingFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result ratingSuccess(_RatingSuccess value),
    Result ratingFailure(_RatingFailure value),
    @required Result orElse(),
  });
}

abstract class $RateExperienceDifficultyActorStateCopyWith<$Res> {
  factory $RateExperienceDifficultyActorStateCopyWith(RateExperienceDifficultyActorState value, $Res Function(RateExperienceDifficultyActorState) then) =
      _$RateExperienceDifficultyActorStateCopyWithImpl<$Res>;
}

class _$RateExperienceDifficultyActorStateCopyWithImpl<$Res> implements $RateExperienceDifficultyActorStateCopyWith<$Res> {
  _$RateExperienceDifficultyActorStateCopyWithImpl(this._value, this._then);

  final RateExperienceDifficultyActorState _value;

  // ignore: unused_field
  final $Res Function(RateExperienceDifficultyActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$RateExperienceDifficultyActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RateExperienceDifficultyActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result ratingSuccess(),
    @required Result ratingFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result ratingSuccess(),
    Result ratingFailure(Failure<dynamic> failure),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result ratingSuccess(_RatingSuccess value),
    @required Result ratingFailure(_RatingFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result ratingSuccess(_RatingSuccess value),
    Result ratingFailure(_RatingFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RateExperienceDifficultyActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$RateExperienceDifficultyActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'RateExperienceDifficultyActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result ratingSuccess(),
    @required Result ratingFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result ratingSuccess(),
    Result ratingFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result ratingSuccess(_RatingSuccess value),
    @required Result ratingFailure(_RatingFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result ratingSuccess(_RatingSuccess value),
    Result ratingFailure(_RatingFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements RateExperienceDifficultyActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$RatingSuccessCopyWith<$Res> {
  factory _$RatingSuccessCopyWith(_RatingSuccess value, $Res Function(_RatingSuccess) then) = __$RatingSuccessCopyWithImpl<$Res>;
}

class __$RatingSuccessCopyWithImpl<$Res> extends _$RateExperienceDifficultyActorStateCopyWithImpl<$Res> implements _$RatingSuccessCopyWith<$Res> {
  __$RatingSuccessCopyWithImpl(_RatingSuccess _value, $Res Function(_RatingSuccess) _then) : super(_value, (v) => _then(v as _RatingSuccess));

  @override
  _RatingSuccess get _value => super._value as _RatingSuccess;
}

class _$_RatingSuccess implements _RatingSuccess {
  const _$_RatingSuccess();

  @override
  String toString() {
    return 'RateExperienceDifficultyActorState.ratingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RatingSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result ratingSuccess(),
    @required Result ratingFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return ratingSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result ratingSuccess(),
    Result ratingFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingSuccess != null) {
      return ratingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result ratingSuccess(_RatingSuccess value),
    @required Result ratingFailure(_RatingFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return ratingSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result ratingSuccess(_RatingSuccess value),
    Result ratingFailure(_RatingFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingSuccess != null) {
      return ratingSuccess(this);
    }
    return orElse();
  }
}

abstract class _RatingSuccess implements RateExperienceDifficultyActorState {
  const factory _RatingSuccess() = _$_RatingSuccess;
}

abstract class _$RatingFailureCopyWith<$Res> {
  factory _$RatingFailureCopyWith(_RatingFailure value, $Res Function(_RatingFailure) then) = __$RatingFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$RatingFailureCopyWithImpl<$Res> extends _$RateExperienceDifficultyActorStateCopyWithImpl<$Res> implements _$RatingFailureCopyWith<$Res> {
  __$RatingFailureCopyWithImpl(_RatingFailure _value, $Res Function(_RatingFailure) _then) : super(_value, (v) => _then(v as _RatingFailure));

  @override
  _RatingFailure get _value => super._value as _RatingFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_RatingFailure(
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

class _$_RatingFailure implements _RatingFailure {
  const _$_RatingFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'RateExperienceDifficultyActorState.ratingFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RatingFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$RatingFailureCopyWith<_RatingFailure> get copyWith => __$RatingFailureCopyWithImpl<_RatingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result ratingSuccess(),
    @required Result ratingFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return ratingFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result ratingSuccess(),
    Result ratingFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingFailure != null) {
      return ratingFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result ratingSuccess(_RatingSuccess value),
    @required Result ratingFailure(_RatingFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(ratingSuccess != null);
    assert(ratingFailure != null);
    return ratingFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result ratingSuccess(_RatingSuccess value),
    Result ratingFailure(_RatingFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ratingFailure != null) {
      return ratingFailure(this);
    }
    return orElse();
  }
}

abstract class _RatingFailure implements RateExperienceDifficultyActorState {
  const factory _RatingFailure(Failure<dynamic> failure) = _$_RatingFailure;

  Failure<dynamic> get failure;

  _$RatingFailureCopyWith<_RatingFailure> get copyWith;
}
