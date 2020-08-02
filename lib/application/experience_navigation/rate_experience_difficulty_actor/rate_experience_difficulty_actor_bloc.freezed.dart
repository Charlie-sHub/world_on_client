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
  _DifficultyChanged difficultyChanged(int difficultyRating) {
    return _DifficultyChanged(
      difficultyRating,
    );
  }

// ignore: unused_element
  _DifficultyRated difficultyRated(Experience experience) {
    return _DifficultyRated(
      experience,
    );
  }
}

// ignore: unused_element
const $RateExperienceDifficultyActorEvent =
    _$RateExperienceDifficultyActorEventTearOff();

mixin _$RateExperienceDifficultyActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result difficultyChanged(int difficultyRating),
    @required Result difficultyRated(Experience experience),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result difficultyChanged(int difficultyRating),
    Result difficultyRated(Experience experience),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result difficultyRated(_DifficultyRated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result difficultyChanged(_DifficultyChanged value),
    Result difficultyRated(_DifficultyRated value),
    @required Result orElse(),
  });
}

abstract class $RateExperienceDifficultyActorEventCopyWith<$Res> {
  factory $RateExperienceDifficultyActorEventCopyWith(
          RateExperienceDifficultyActorEvent value,
          $Res Function(RateExperienceDifficultyActorEvent) then) =
      _$RateExperienceDifficultyActorEventCopyWithImpl<$Res>;
}

class _$RateExperienceDifficultyActorEventCopyWithImpl<$Res>
    implements $RateExperienceDifficultyActorEventCopyWith<$Res> {
  _$RateExperienceDifficultyActorEventCopyWithImpl(this._value, this._then);

  final RateExperienceDifficultyActorEvent _value;
  // ignore: unused_field
  final $Res Function(RateExperienceDifficultyActorEvent) _then;
}

abstract class _$DifficultyChangedCopyWith<$Res> {
  factory _$DifficultyChangedCopyWith(
          _DifficultyChanged value, $Res Function(_DifficultyChanged) then) =
      __$DifficultyChangedCopyWithImpl<$Res>;
  $Res call({int difficultyRating});
}

class __$DifficultyChangedCopyWithImpl<$Res>
    extends _$RateExperienceDifficultyActorEventCopyWithImpl<$Res>
    implements _$DifficultyChangedCopyWith<$Res> {
  __$DifficultyChangedCopyWithImpl(
      _DifficultyChanged _value, $Res Function(_DifficultyChanged) _then)
      : super(_value, (v) => _then(v as _DifficultyChanged));

  @override
  _DifficultyChanged get _value => super._value as _DifficultyChanged;

  @override
  $Res call({
    Object difficultyRating = freezed,
  }) {
    return _then(_DifficultyChanged(
      difficultyRating == freezed
          ? _value.difficultyRating
          : difficultyRating as int,
    ));
  }
}

class _$_DifficultyChanged implements _DifficultyChanged {
  const _$_DifficultyChanged(this.difficultyRating)
      : assert(difficultyRating != null);

  @override
  final int difficultyRating;

  @override
  String toString() {
    return 'RateExperienceDifficultyActorEvent.difficultyChanged(difficultyRating: $difficultyRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DifficultyChanged &&
            (identical(other.difficultyRating, difficultyRating) ||
                const DeepCollectionEquality()
                    .equals(other.difficultyRating, difficultyRating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(difficultyRating);

  @override
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith =>
      __$DifficultyChangedCopyWithImpl<_DifficultyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result difficultyChanged(int difficultyRating),
    @required Result difficultyRated(Experience experience),
  }) {
    assert(difficultyChanged != null);
    assert(difficultyRated != null);
    return difficultyChanged(difficultyRating);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result difficultyChanged(int difficultyRating),
    Result difficultyRated(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChanged != null) {
      return difficultyChanged(difficultyRating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result difficultyRated(_DifficultyRated value),
  }) {
    assert(difficultyChanged != null);
    assert(difficultyRated != null);
    return difficultyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result difficultyChanged(_DifficultyChanged value),
    Result difficultyRated(_DifficultyRated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyChanged != null) {
      return difficultyChanged(this);
    }
    return orElse();
  }
}

abstract class _DifficultyChanged
    implements RateExperienceDifficultyActorEvent {
  const factory _DifficultyChanged(int difficultyRating) = _$_DifficultyChanged;

  int get difficultyRating;
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith;
}

abstract class _$DifficultyRatedCopyWith<$Res> {
  factory _$DifficultyRatedCopyWith(
          _DifficultyRated value, $Res Function(_DifficultyRated) then) =
      __$DifficultyRatedCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class __$DifficultyRatedCopyWithImpl<$Res>
    extends _$RateExperienceDifficultyActorEventCopyWithImpl<$Res>
    implements _$DifficultyRatedCopyWith<$Res> {
  __$DifficultyRatedCopyWithImpl(
      _DifficultyRated _value, $Res Function(_DifficultyRated) _then)
      : super(_value, (v) => _then(v as _DifficultyRated));

  @override
  _DifficultyRated get _value => super._value as _DifficultyRated;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_DifficultyRated(
      experience == freezed ? _value.experience : experience as Experience,
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

class _$_DifficultyRated implements _DifficultyRated {
  const _$_DifficultyRated(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'RateExperienceDifficultyActorEvent.difficultyRated(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DifficultyRated &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith =>
      __$DifficultyRatedCopyWithImpl<_DifficultyRated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result difficultyChanged(int difficultyRating),
    @required Result difficultyRated(Experience experience),
  }) {
    assert(difficultyChanged != null);
    assert(difficultyRated != null);
    return difficultyRated(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result difficultyChanged(int difficultyRating),
    Result difficultyRated(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyRated != null) {
      return difficultyRated(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result difficultyChanged(_DifficultyChanged value),
    @required Result difficultyRated(_DifficultyRated value),
  }) {
    assert(difficultyChanged != null);
    assert(difficultyRated != null);
    return difficultyRated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result difficultyChanged(_DifficultyChanged value),
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
  const factory _DifficultyRated(Experience experience) = _$_DifficultyRated;

  Experience get experience;
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith;
}

class _$RateExperienceDifficultyActorStateTearOff {
  const _$RateExperienceDifficultyActorStateTearOff();

// ignore: unused_element
  _RateExperienceDifficultyActorState call(
      {@required int difficulty,
      @required bool isSubmitting,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _RateExperienceDifficultyActorState(
      difficulty: difficulty,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $RateExperienceDifficultyActorState =
    _$RateExperienceDifficultyActorStateTearOff();

mixin _$RateExperienceDifficultyActorState {
  int get difficulty;
  bool get isSubmitting;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $RateExperienceDifficultyActorStateCopyWith<
      RateExperienceDifficultyActorState> get copyWith;
}

abstract class $RateExperienceDifficultyActorStateCopyWith<$Res> {
  factory $RateExperienceDifficultyActorStateCopyWith(
          RateExperienceDifficultyActorState value,
          $Res Function(RateExperienceDifficultyActorState) then) =
      _$RateExperienceDifficultyActorStateCopyWithImpl<$Res>;
  $Res call(
      {int difficulty,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

class _$RateExperienceDifficultyActorStateCopyWithImpl<$Res>
    implements $RateExperienceDifficultyActorStateCopyWith<$Res> {
  _$RateExperienceDifficultyActorStateCopyWithImpl(this._value, this._then);

  final RateExperienceDifficultyActorState _value;
  // ignore: unused_field
  final $Res Function(RateExperienceDifficultyActorState) _then;

  @override
  $Res call({
    Object difficulty = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      difficulty: difficulty == freezed ? _value.difficulty : difficulty as int,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

abstract class _$RateExperienceDifficultyActorStateCopyWith<$Res>
    implements $RateExperienceDifficultyActorStateCopyWith<$Res> {
  factory _$RateExperienceDifficultyActorStateCopyWith(
          _RateExperienceDifficultyActorState value,
          $Res Function(_RateExperienceDifficultyActorState) then) =
      __$RateExperienceDifficultyActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int difficulty,
      bool isSubmitting,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

class __$RateExperienceDifficultyActorStateCopyWithImpl<$Res>
    extends _$RateExperienceDifficultyActorStateCopyWithImpl<$Res>
    implements _$RateExperienceDifficultyActorStateCopyWith<$Res> {
  __$RateExperienceDifficultyActorStateCopyWithImpl(
      _RateExperienceDifficultyActorState _value,
      $Res Function(_RateExperienceDifficultyActorState) _then)
      : super(_value, (v) => _then(v as _RateExperienceDifficultyActorState));

  @override
  _RateExperienceDifficultyActorState get _value =>
      super._value as _RateExperienceDifficultyActorState;

  @override
  $Res call({
    Object difficulty = freezed,
    Object isSubmitting = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_RateExperienceDifficultyActorState(
      difficulty: difficulty == freezed ? _value.difficulty : difficulty as int,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_RateExperienceDifficultyActorState
    implements _RateExperienceDifficultyActorState {
  const _$_RateExperienceDifficultyActorState(
      {@required this.difficulty,
      @required this.isSubmitting,
      @required this.failureOrSuccessOption})
      : assert(difficulty != null),
        assert(isSubmitting != null),
        assert(failureOrSuccessOption != null);

  @override
  final int difficulty;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'RateExperienceDifficultyActorState(difficulty: $difficulty, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RateExperienceDifficultyActorState &&
            (identical(other.difficulty, difficulty) ||
                const DeepCollectionEquality()
                    .equals(other.difficulty, difficulty)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(difficulty) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$RateExperienceDifficultyActorStateCopyWith<
          _RateExperienceDifficultyActorState>
      get copyWith => __$RateExperienceDifficultyActorStateCopyWithImpl<
          _RateExperienceDifficultyActorState>(this, _$identity);
}

abstract class _RateExperienceDifficultyActorState
    implements RateExperienceDifficultyActorState {
  const factory _RateExperienceDifficultyActorState(
          {@required int difficulty,
          @required bool isSubmitting,
          @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_RateExperienceDifficultyActorState;

  @override
  int get difficulty;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$RateExperienceDifficultyActorStateCopyWith<
      _RateExperienceDifficultyActorState> get copyWith;
}
