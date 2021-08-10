// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rate_experience_difficulty_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RateExperienceDifficultyActorEventTearOff {
  const _$RateExperienceDifficultyActorEventTearOff();

  _DifficultyChanged difficultyChanged(int difficultyRating) {
    return _DifficultyChanged(
      difficultyRating,
    );
  }

  _DifficultyRated difficultyRated(Experience experience) {
    return _DifficultyRated(
      experience,
    );
  }
}

/// @nodoc
const $RateExperienceDifficultyActorEvent =
    _$RateExperienceDifficultyActorEventTearOff();

/// @nodoc
mixin _$RateExperienceDifficultyActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int difficultyRating) difficultyChanged,
    required TResult Function(Experience experience) difficultyRated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int difficultyRating)? difficultyChanged,
    TResult Function(Experience experience)? difficultyRated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_DifficultyRated value) difficultyRated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_DifficultyRated value)? difficultyRated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateExperienceDifficultyActorEventCopyWith<$Res> {
  factory $RateExperienceDifficultyActorEventCopyWith(
          RateExperienceDifficultyActorEvent value,
          $Res Function(RateExperienceDifficultyActorEvent) then) =
      _$RateExperienceDifficultyActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RateExperienceDifficultyActorEventCopyWithImpl<$Res>
    implements $RateExperienceDifficultyActorEventCopyWith<$Res> {
  _$RateExperienceDifficultyActorEventCopyWithImpl(this._value, this._then);

  final RateExperienceDifficultyActorEvent _value;
  // ignore: unused_field
  final $Res Function(RateExperienceDifficultyActorEvent) _then;
}

/// @nodoc
abstract class _$DifficultyChangedCopyWith<$Res> {
  factory _$DifficultyChangedCopyWith(
          _DifficultyChanged value, $Res Function(_DifficultyChanged) then) =
      __$DifficultyChangedCopyWithImpl<$Res>;
  $Res call({int difficultyRating});
}

/// @nodoc
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
    Object? difficultyRating = freezed,
  }) {
    return _then(_DifficultyChanged(
      difficultyRating == freezed
          ? _value.difficultyRating
          : difficultyRating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DifficultyChanged implements _DifficultyChanged {
  const _$_DifficultyChanged(this.difficultyRating);

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

  @JsonKey(ignore: true)
  @override
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith =>
      __$DifficultyChangedCopyWithImpl<_DifficultyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int difficultyRating) difficultyChanged,
    required TResult Function(Experience experience) difficultyRated,
  }) {
    return difficultyChanged(difficultyRating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int difficultyRating)? difficultyChanged,
    TResult Function(Experience experience)? difficultyRated,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(difficultyRating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_DifficultyRated value) difficultyRated,
  }) {
    return difficultyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_DifficultyRated value)? difficultyRated,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(this);
    }
    return orElse();
  }
}

abstract class _DifficultyChanged
    implements RateExperienceDifficultyActorEvent {
  const factory _DifficultyChanged(int difficultyRating) = _$_DifficultyChanged;

  int get difficultyRating => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DifficultyChangedCopyWith<_DifficultyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DifficultyRatedCopyWith<$Res> {
  factory _$DifficultyRatedCopyWith(
          _DifficultyRated value, $Res Function(_DifficultyRated) then) =
      __$DifficultyRatedCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
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
    Object? experience = freezed,
  }) {
    return _then(_DifficultyRated(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

/// @nodoc

class _$_DifficultyRated implements _DifficultyRated {
  const _$_DifficultyRated(this.experience);

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

  @JsonKey(ignore: true)
  @override
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith =>
      __$DifficultyRatedCopyWithImpl<_DifficultyRated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int difficultyRating) difficultyChanged,
    required TResult Function(Experience experience) difficultyRated,
  }) {
    return difficultyRated(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int difficultyRating)? difficultyChanged,
    TResult Function(Experience experience)? difficultyRated,
    required TResult orElse(),
  }) {
    if (difficultyRated != null) {
      return difficultyRated(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DifficultyChanged value) difficultyChanged,
    required TResult Function(_DifficultyRated value) difficultyRated,
  }) {
    return difficultyRated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DifficultyChanged value)? difficultyChanged,
    TResult Function(_DifficultyRated value)? difficultyRated,
    required TResult orElse(),
  }) {
    if (difficultyRated != null) {
      return difficultyRated(this);
    }
    return orElse();
  }
}

abstract class _DifficultyRated implements RateExperienceDifficultyActorEvent {
  const factory _DifficultyRated(Experience experience) = _$_DifficultyRated;

  Experience get experience => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RateExperienceDifficultyActorStateTearOff {
  const _$RateExperienceDifficultyActorStateTearOff();

  _RateExperienceDifficultyActorState call(
      {required int difficulty,
      required bool isSubmitting,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _RateExperienceDifficultyActorState(
      difficulty: difficulty,
      isSubmitting: isSubmitting,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RateExperienceDifficultyActorState =
    _$RateExperienceDifficultyActorStateTearOff();

/// @nodoc
mixin _$RateExperienceDifficultyActorState {
  int get difficulty => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateExperienceDifficultyActorStateCopyWith<
          RateExperienceDifficultyActorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
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

/// @nodoc
class _$RateExperienceDifficultyActorStateCopyWithImpl<$Res>
    implements $RateExperienceDifficultyActorStateCopyWith<$Res> {
  _$RateExperienceDifficultyActorStateCopyWithImpl(this._value, this._then);

  final RateExperienceDifficultyActorState _value;
  // ignore: unused_field
  final $Res Function(RateExperienceDifficultyActorState) _then;

  @override
  $Res call({
    Object? difficulty = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
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

/// @nodoc
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
    Object? difficulty = freezed,
    Object? isSubmitting = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_RateExperienceDifficultyActorState(
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RateExperienceDifficultyActorState
    implements _RateExperienceDifficultyActorState {
  const _$_RateExperienceDifficultyActorState(
      {required this.difficulty,
      required this.isSubmitting,
      required this.failureOrSuccessOption});

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

  @JsonKey(ignore: true)
  @override
  _$RateExperienceDifficultyActorStateCopyWith<
          _RateExperienceDifficultyActorState>
      get copyWith => __$RateExperienceDifficultyActorStateCopyWithImpl<
          _RateExperienceDifficultyActorState>(this, _$identity);
}

abstract class _RateExperienceDifficultyActorState
    implements RateExperienceDifficultyActorState {
  const factory _RateExperienceDifficultyActorState(
          {required int difficulty,
          required bool isSubmitting,
          required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_RateExperienceDifficultyActorState;

  @override
  int get difficulty => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RateExperienceDifficultyActorStateCopyWith<
          _RateExperienceDifficultyActorState>
      get copyWith => throw _privateConstructorUsedError;
}
