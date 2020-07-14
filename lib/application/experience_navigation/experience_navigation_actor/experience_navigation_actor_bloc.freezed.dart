// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience_navigation_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceNavigationActorEventTearOff {
  const _$ExperienceNavigationActorEventTearOff();

  _Initialized initialized(Option<Experience> experienceOption) {
    return _Initialized(
      experienceOption,
    );
  }

  _ObjectiveAccomplished objectiveAccomplished(Objective objective) {
    return _ObjectiveAccomplished(
      objective,
    );
  }

  _Liked liked() {
    return const _Liked();
  }

  _GotCurrentLocation gotCurrentLocation() {
    return const _GotCurrentLocation();
  }

  _DifficultyRated difficultyRated(int difficulty) {
    return _DifficultyRated(
      difficulty,
    );
  }

  _ExperienceFinished experienceFinished() {
    return const _ExperienceFinished();
  }

  _UserRewarded userRewarded() {
    return const _UserRewarded();
  }
}

// ignore: unused_element
const $ExperienceNavigationActorEvent = _$ExperienceNavigationActorEventTearOff();

mixin _$ExperienceNavigationActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  });
}

abstract class $ExperienceNavigationActorEventCopyWith<$Res> {
  factory $ExperienceNavigationActorEventCopyWith(ExperienceNavigationActorEvent value, $Res Function(ExperienceNavigationActorEvent) then) = _$ExperienceNavigationActorEventCopyWithImpl<$Res>;
}

class _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements $ExperienceNavigationActorEventCopyWith<$Res> {
  _$ExperienceNavigationActorEventCopyWithImpl(this._value, this._then);

  final ExperienceNavigationActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceNavigationActorEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
  __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Experience> experienceOption});
}

class __$InitializedCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res>
  implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
    : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experienceOption = freezed,
  }) {
    return _then(_Initialized(
      experienceOption == freezed
        ? _value.experienceOption
        : experienceOption as Option<Experience>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceOption)
    : assert(experienceOption != null);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.initialized(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Initialized &&
        (identical(other.experienceOption, experienceOption) ||
          const DeepCollectionEquality()
            .equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(experienceOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
    __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return initialized(experienceOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceNavigationActorEvent {
  const factory _Initialized(Option<Experience> experienceOption) =
  _$_Initialized;

  Option<Experience> get experienceOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$ObjectiveAccomplishedCopyWith<$Res> {
  factory _$ObjectiveAccomplishedCopyWith(_ObjectiveAccomplished value,
    $Res Function(_ObjectiveAccomplished) then) =
  __$ObjectiveAccomplishedCopyWithImpl<$Res>;
  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

class __$ObjectiveAccomplishedCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res>
  implements _$ObjectiveAccomplishedCopyWith<$Res> {
  __$ObjectiveAccomplishedCopyWithImpl(_ObjectiveAccomplished _value,
    $Res Function(_ObjectiveAccomplished) _then)
    : super(_value, (v) => _then(v as _ObjectiveAccomplished));

  @override
  _ObjectiveAccomplished get _value => super._value as _ObjectiveAccomplished;

  @override
  $Res call({
    Object objective = freezed,
  }) {
    return _then(_ObjectiveAccomplished(
      objective == freezed ? _value.objective : objective as Objective,
    ));
  }

  @override
  $ObjectiveCopyWith<$Res> get objective {
    if (_value.objective == null) {
      return null;
    }
    return $ObjectiveCopyWith<$Res>(_value.objective, (value) {
      return _then(_value.copyWith(objective: value));
    });
  }
}

class _$_ObjectiveAccomplished implements _ObjectiveAccomplished {
  const _$_ObjectiveAccomplished(this.objective) : assert(objective != null);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.objectiveAccomplished(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _ObjectiveAccomplished &&
        (identical(other.objective, objective) ||
          const DeepCollectionEquality()
            .equals(other.objective, objective)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @override
  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith =>
    __$ObjectiveAccomplishedCopyWithImpl<_ObjectiveAccomplished>(
      this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return objectiveAccomplished(objective);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectiveAccomplished != null) {
      return objectiveAccomplished(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return objectiveAccomplished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectiveAccomplished != null) {
      return objectiveAccomplished(this);
    }
    return orElse();
  }
}

abstract class _ObjectiveAccomplished
  implements ExperienceNavigationActorEvent {
  const factory _ObjectiveAccomplished(Objective objective) =
  _$_ObjectiveAccomplished;

  Objective get objective;
  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith;
}

abstract class _$LikedCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
  __$LikedCopyWithImpl<$Res>;
}

class __$LikedCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res>
  implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
    : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;
}

class _$_Liked implements _Liked {
  const _$_Liked();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.liked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Liked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return liked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return liked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements ExperienceNavigationActorEvent {
  const factory _Liked() = _$_Liked;
}

abstract class _$GotCurrentLocationCopyWith<$Res> {
  factory _$GotCurrentLocationCopyWith(_GotCurrentLocation value, $Res Function(_GotCurrentLocation) then) =
  __$GotCurrentLocationCopyWithImpl<$Res>;
}

class __$GotCurrentLocationCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res>
  implements _$GotCurrentLocationCopyWith<$Res> {
  __$GotCurrentLocationCopyWithImpl(_GotCurrentLocation _value, $Res Function(_GotCurrentLocation) _then)
    : super(_value, (v) => _then(v as _GotCurrentLocation));

  @override
  _GotCurrentLocation get _value => super._value as _GotCurrentLocation;
}

class _$_GotCurrentLocation implements _GotCurrentLocation {
  const _$_GotCurrentLocation();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.gotCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GotCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return gotCurrentLocation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gotCurrentLocation != null) {
      return gotCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return gotCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gotCurrentLocation != null) {
      return gotCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GotCurrentLocation implements ExperienceNavigationActorEvent {
  const factory _GotCurrentLocation() = _$_GotCurrentLocation;
}

abstract class _$DifficultyRatedCopyWith<$Res> {
  factory _$DifficultyRatedCopyWith(_DifficultyRated value, $Res Function(_DifficultyRated) then) =
  __$DifficultyRatedCopyWithImpl<$Res>;
  $Res call({int difficulty});
}

class __$DifficultyRatedCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res>
  implements _$DifficultyRatedCopyWith<$Res> {
  __$DifficultyRatedCopyWithImpl(_DifficultyRated _value, $Res Function(_DifficultyRated) _then)
    : super(_value, (v) => _then(v as _DifficultyRated));

  @override
  _DifficultyRated get _value => super._value as _DifficultyRated;

  @override
  $Res call({
    Object difficulty = freezed,
  }) {
    return _then(_DifficultyRated(
      difficulty == freezed ? _value.difficulty : difficulty as int,
    ));
  }
}

class _$_DifficultyRated implements _DifficultyRated {
  const _$_DifficultyRated(this.difficulty) : assert(difficulty != null);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.difficultyRated(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _DifficultyRated &&
        (identical(other.difficulty, difficulty) ||
          const DeepCollectionEquality()
            .equals(other.difficulty, difficulty)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(difficulty);

  @override
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith =>
    __$DifficultyRatedCopyWithImpl<_DifficultyRated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return difficultyRated(difficulty);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyRated != null) {
      return difficultyRated(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return difficultyRated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (difficultyRated != null) {
      return difficultyRated(this);
    }
    return orElse();
  }
}

abstract class _DifficultyRated implements ExperienceNavigationActorEvent {
  const factory _DifficultyRated(int difficulty) = _$_DifficultyRated;

  int get difficulty;
  _$DifficultyRatedCopyWith<_DifficultyRated> get copyWith;
}

abstract class _$ExperienceFinishedCopyWith<$Res> {
  factory _$ExperienceFinishedCopyWith(_ExperienceFinished value, $Res Function(_ExperienceFinished) then) =
  __$ExperienceFinishedCopyWithImpl<$Res>;
}

class __$ExperienceFinishedCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res>
  implements _$ExperienceFinishedCopyWith<$Res> {
  __$ExperienceFinishedCopyWithImpl(_ExperienceFinished _value, $Res Function(_ExperienceFinished) _then)
    : super(_value, (v) => _then(v as _ExperienceFinished));

  @override
  _ExperienceFinished get _value => super._value as _ExperienceFinished;
}

class _$_ExperienceFinished implements _ExperienceFinished {
  const _$_ExperienceFinished();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.experienceFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExperienceFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return experienceFinished();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (experienceFinished != null) {
      return experienceFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return experienceFinished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (experienceFinished != null) {
      return experienceFinished(this);
    }
    return orElse();
  }
}

abstract class _ExperienceFinished implements ExperienceNavigationActorEvent {
  const factory _ExperienceFinished() = _$_ExperienceFinished;
}

abstract class _$UserRewardedCopyWith<$Res> {
  factory _$UserRewardedCopyWith(_UserRewarded value, $Res Function(_UserRewarded) then) =
  __$UserRewardedCopyWithImpl<$Res>;
}

class __$UserRewardedCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res>
  implements _$UserRewardedCopyWith<$Res> {
  __$UserRewardedCopyWithImpl(_UserRewarded _value, $Res Function(_UserRewarded) _then)
    : super(_value, (v) => _then(v as _UserRewarded));

  @override
  _UserRewarded get _value => super._value as _UserRewarded;
}

class _$_UserRewarded implements _UserRewarded {
  const _$_UserRewarded();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.userRewarded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UserRewarded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result liked(),
    @required Result gotCurrentLocation(),
    @required Result difficultyRated(int difficulty),
    @required Result experienceFinished(),
    @required Result userRewarded(),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return userRewarded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result liked(),
    Result gotCurrentLocation(),
    Result difficultyRated(int difficulty),
    Result experienceFinished(),
    Result userRewarded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userRewarded != null) {
      return userRewarded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result liked(_Liked value),
    @required Result gotCurrentLocation(_GotCurrentLocation value),
    @required Result difficultyRated(_DifficultyRated value),
    @required Result experienceFinished(_ExperienceFinished value),
    @required Result userRewarded(_UserRewarded value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    assert(liked != null);
    assert(gotCurrentLocation != null);
    assert(difficultyRated != null);
    assert(experienceFinished != null);
    assert(userRewarded != null);
    return userRewarded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result liked(_Liked value),
    Result gotCurrentLocation(_GotCurrentLocation value),
    Result difficultyRated(_DifficultyRated value),
    Result experienceFinished(_ExperienceFinished value),
    Result userRewarded(_UserRewarded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userRewarded != null) {
      return userRewarded(this);
    }
    return orElse();
  }
}

abstract class _UserRewarded implements ExperienceNavigationActorEvent {
  const factory _UserRewarded() = _$_UserRewarded;
}

class _$ExperienceNavigationActorStateTearOff {
  const _$ExperienceNavigationActorStateTearOff();

  _ExperienceNavigationActorState call(
      {@required Experience experience,
      @required Map<int, bool> objectiveTracker,
        @required Option<KtSet<Experience>> surroundingExperiences,
      @required Coordinates currentLocation,
      @required bool isFinished,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ExperienceNavigationActorState(
      experience: experience,
      objectiveTracker: objectiveTracker,
      surroundingExperiences: surroundingExperiences,
      currentLocation: currentLocation,
      isFinished: isFinished,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ExperienceNavigationActorState =
_$ExperienceNavigationActorStateTearOff();

mixin _$ExperienceNavigationActorState {
  Experience get experience;
  Map<int, bool> get objectiveTracker;

  Option<KtSet<Experience>> get surroundingExperiences;
  Coordinates get currentLocation;
  bool get isFinished;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $ExperienceNavigationActorStateCopyWith<ExperienceNavigationActorState>
  get copyWith;
}

abstract class $ExperienceNavigationActorStateCopyWith<$Res> {
  factory $ExperienceNavigationActorStateCopyWith(ExperienceNavigationActorState value,
    $Res Function(ExperienceNavigationActorState) then) =
  _$ExperienceNavigationActorStateCopyWithImpl<$Res>;
  $Res call(
      {Experience experience,
      Map<int, bool> objectiveTracker,
        Option<KtSet<Experience>> surroundingExperiences,
      Coordinates currentLocation,
      bool isFinished,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  $ExperienceCopyWith<$Res> get experience;
  $CoordinatesCopyWith<$Res> get currentLocation;
}

class _$ExperienceNavigationActorStateCopyWithImpl<$Res>
  implements $ExperienceNavigationActorStateCopyWith<$Res> {
  _$ExperienceNavigationActorStateCopyWithImpl(this._value, this._then);

  final ExperienceNavigationActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceNavigationActorState) _then;

  @override
  $Res call({
    Object experience = freezed,
    Object objectiveTracker = freezed,
    Object surroundingExperiences = freezed,
    Object currentLocation = freezed,
    Object isFinished = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      experience:
      experience == freezed ? _value.experience : experience as Experience,
      objectiveTracker: objectiveTracker == freezed
        ? _value.objectiveTracker
        : objectiveTracker as Map<int, bool>,
      surroundingExperiences: surroundingExperiences == freezed
        ? _value.surroundingExperiences
        : surroundingExperiences as Option<KtSet<Experience>>,
      currentLocation: currentLocation == freezed
        ? _value.currentLocation
        : currentLocation as Coordinates,
      isFinished:
      isFinished == freezed ? _value.isFinished : isFinished as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
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

  @override
  $CoordinatesCopyWith<$Res> get currentLocation {
    if (_value.currentLocation == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.currentLocation, (value) {
      return _then(_value.copyWith(currentLocation: value));
    });
  }
}

abstract class _$ExperienceNavigationActorStateCopyWith<$Res>
  implements $ExperienceNavigationActorStateCopyWith<$Res> {
  factory _$ExperienceNavigationActorStateCopyWith(_ExperienceNavigationActorState value,
    $Res Function(_ExperienceNavigationActorState) then) =
  __$ExperienceNavigationActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Experience experience,
      Map<int, bool> objectiveTracker,
        Option<KtSet<Experience>> surroundingExperiences,
      Coordinates currentLocation,
      bool isFinished,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  @override
  $ExperienceCopyWith<$Res> get experience;
  @override
  $CoordinatesCopyWith<$Res> get currentLocation;
}

class __$ExperienceNavigationActorStateCopyWithImpl<$Res> extends _$ExperienceNavigationActorStateCopyWithImpl<$Res>
  implements _$ExperienceNavigationActorStateCopyWith<$Res> {
  __$ExperienceNavigationActorStateCopyWithImpl(_ExperienceNavigationActorState _value,
    $Res Function(_ExperienceNavigationActorState) _then)
      : super(_value, (v) => _then(v as _ExperienceNavigationActorState));

  @override
  _ExperienceNavigationActorState get _value =>
    super._value as _ExperienceNavigationActorState;

  @override
  $Res call({
    Object experience = freezed,
    Object objectiveTracker = freezed,
    Object surroundingExperiences = freezed,
    Object currentLocation = freezed,
    Object isFinished = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_ExperienceNavigationActorState(
      experience:
      experience == freezed ? _value.experience : experience as Experience,
      objectiveTracker: objectiveTracker == freezed
        ? _value.objectiveTracker
        : objectiveTracker as Map<int, bool>,
      surroundingExperiences: surroundingExperiences == freezed
        ? _value.surroundingExperiences
        : surroundingExperiences as Option<KtSet<Experience>>,
      currentLocation: currentLocation == freezed
        ? _value.currentLocation
        : currentLocation as Coordinates,
      isFinished:
      isFinished == freezed ? _value.isFinished : isFinished as bool,
      isSubmitting:
      isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
        ? _value.showErrorMessages
        : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
        ? _value.failureOrSuccessOption
        : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_ExperienceNavigationActorState
  implements _ExperienceNavigationActorState {
  const _$_ExperienceNavigationActorState(
      {@required this.experience,
      @required this.objectiveTracker,
      @required this.surroundingExperiences,
      @required this.currentLocation,
      @required this.isFinished,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.failureOrSuccessOption})
      : assert(experience != null),
        assert(objectiveTracker != null),
        assert(surroundingExperiences != null),
        assert(currentLocation != null),
        assert(isFinished != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(failureOrSuccessOption != null);

  @override
  final Experience experience;
  @override
  final Map<int, bool> objectiveTracker;
  @override
  final Option<KtSet<Experience>> surroundingExperiences;
  @override
  final Coordinates currentLocation;
  @override
  final bool isFinished;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExperienceNavigationActorState(experience: $experience, objectiveTracker: $objectiveTracker, surroundingExperiences: $surroundingExperiences, currentLocation: $currentLocation, isFinished: $isFinished, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceNavigationActorState &&
          (identical(other.experience, experience) ||
            const DeepCollectionEquality()
              .equals(other.experience, experience)) &&
          (identical(other.objectiveTracker, objectiveTracker) ||
            const DeepCollectionEquality()
              .equals(other.objectiveTracker, objectiveTracker)) &&
          (identical(other.surroundingExperiences, surroundingExperiences) ||
            const DeepCollectionEquality().equals(
              other.surroundingExperiences, surroundingExperiences)) &&
          (identical(other.currentLocation, currentLocation) ||
            const DeepCollectionEquality()
              .equals(other.currentLocation, currentLocation)) &&
          (identical(other.isFinished, isFinished) ||
            const DeepCollectionEquality()
              .equals(other.isFinished, isFinished)) &&
          (identical(other.isSubmitting, isSubmitting) ||
            const DeepCollectionEquality()
              .equals(other.isSubmitting, isSubmitting)) &&
          (identical(other.showErrorMessages, showErrorMessages) ||
            const DeepCollectionEquality()
              .equals(other.showErrorMessages, showErrorMessages)) &&
          (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
            const DeepCollectionEquality().equals(
              other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experience) ^
      const DeepCollectionEquality().hash(objectiveTracker) ^
      const DeepCollectionEquality().hash(surroundingExperiences) ^
      const DeepCollectionEquality().hash(currentLocation) ^
      const DeepCollectionEquality().hash(isFinished) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$ExperienceNavigationActorStateCopyWith<_ExperienceNavigationActorState>
  get copyWith =>
    __$ExperienceNavigationActorStateCopyWithImpl<
      _ExperienceNavigationActorState>(this, _$identity);
}

abstract class _ExperienceNavigationActorState
  implements ExperienceNavigationActorState {
  const factory _ExperienceNavigationActorState({@required Experience experience,
    @required Map<int, bool> objectiveTracker,
    @required Option<KtSet<Experience>> surroundingExperiences,
    @required Coordinates currentLocation,
    @required bool isFinished,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
  _$_ExperienceNavigationActorState;

  @override
  Experience get experience;
  @override
  Map<int, bool> get objectiveTracker;
  @override
  Option<KtSet<Experience>> get surroundingExperiences;
  @override
  Coordinates get currentLocation;
  @override
  bool get isFinished;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption;
  @override
  _$ExperienceNavigationActorStateCopyWith<_ExperienceNavigationActorState>
  get copyWith;
}
