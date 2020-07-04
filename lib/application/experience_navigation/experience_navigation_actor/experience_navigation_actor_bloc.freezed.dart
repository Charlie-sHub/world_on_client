// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'experience_navigation_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceNavigationActorEventTearOff {
  const _$ExperienceNavigationActorEventTearOff();

  _Initialize initialize(Option<Experience> experienceOption) {
    return _Initialize(
      experienceOption,
    );
  }

  _ObjectiveAccomplished objectiveAccomplished(Objective objective) {
    return _ObjectiveAccomplished(
      objective,
    );
  }

  _Like like() {
    return const _Like();
  }

  _GetCurrentLocation getCurrentLocation() {
    return const _GetCurrentLocation();
  }

  _RateDifficulty rateDifficulty(int difficulty) {
    return _RateDifficulty(
      difficulty,
    );
  }

  _FinishExperience finishExperience() {
    return const _FinishExperience();
  }

  _RewardUser rewardUser() {
    return const _RewardUser();
  }
}

// ignore: unused_element
const $ExperienceNavigationActorEvent = _$ExperienceNavigationActorEventTearOff();

mixin _$ExperienceNavigationActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
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

abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(_Initialize value, $Res Function(_Initialize) then) = __$InitializeCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

class __$InitializeCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(_Initialize _value, $Res Function(_Initialize) _then) : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;

  @override
  $Res call({
    Object experienceOption = freezed,
  }) {
    return _then(_Initialize(
      experienceOption == freezed ? _value.experienceOption : experienceOption as Option<Experience>,
    ));
  }
}

class _$_Initialize implements _Initialize {
  const _$_Initialize(this.experienceOption) : assert(experienceOption != null);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.initialize(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialize && (identical(other.experienceOption, experienceOption) || const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @override
  _$InitializeCopyWith<_Initialize> get copyWith => __$InitializeCopyWithImpl<_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return initialize(experienceOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements ExperienceNavigationActorEvent {
  const factory _Initialize(Option<Experience> experienceOption) = _$_Initialize;

  Option<Experience> get experienceOption;

  _$InitializeCopyWith<_Initialize> get copyWith;
}

abstract class _$ObjectiveAccomplishedCopyWith<$Res> {
  factory _$ObjectiveAccomplishedCopyWith(_ObjectiveAccomplished value, $Res Function(_ObjectiveAccomplished) then) = __$ObjectiveAccomplishedCopyWithImpl<$Res>;

  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

class __$ObjectiveAccomplishedCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements _$ObjectiveAccomplishedCopyWith<$Res> {
  __$ObjectiveAccomplishedCopyWithImpl(_ObjectiveAccomplished _value, $Res Function(_ObjectiveAccomplished) _then) : super(_value, (v) => _then(v as _ObjectiveAccomplished));

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
    return identical(this, other) || (other is _ObjectiveAccomplished && (identical(other.objective, objective) || const DeepCollectionEquality().equals(other.objective, objective)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @override
  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith => __$ObjectiveAccomplishedCopyWithImpl<_ObjectiveAccomplished>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return objectiveAccomplished(objective);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
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
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return objectiveAccomplished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectiveAccomplished != null) {
      return objectiveAccomplished(this);
    }
    return orElse();
  }
}

abstract class _ObjectiveAccomplished implements ExperienceNavigationActorEvent {
  const factory _ObjectiveAccomplished(Objective objective) = _$_ObjectiveAccomplished;

  Objective get objective;

  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith;
}

abstract class _$LikeCopyWith<$Res> {
  factory _$LikeCopyWith(_Like value, $Res Function(_Like) then) = __$LikeCopyWithImpl<$Res>;
}

class __$LikeCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements _$LikeCopyWith<$Res> {
  __$LikeCopyWithImpl(_Like _value, $Res Function(_Like) _then) : super(_value, (v) => _then(v as _Like));

  @override
  _Like get _value => super._value as _Like;
}

class _$_Like implements _Like {
  const _$_Like();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.like()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Like);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return like();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (like != null) {
      return like();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return like(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (like != null) {
      return like(this);
    }
    return orElse();
  }
}

abstract class _Like implements ExperienceNavigationActorEvent {
  const factory _Like() = _$_Like;
}

abstract class _$GetCurrentLocationCopyWith<$Res> {
  factory _$GetCurrentLocationCopyWith(_GetCurrentLocation value, $Res Function(_GetCurrentLocation) then) = __$GetCurrentLocationCopyWithImpl<$Res>;
}

class __$GetCurrentLocationCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements _$GetCurrentLocationCopyWith<$Res> {
  __$GetCurrentLocationCopyWithImpl(_GetCurrentLocation _value, $Res Function(_GetCurrentLocation) _then) : super(_value, (v) => _then(v as _GetCurrentLocation));

  @override
  _GetCurrentLocation get _value => super._value as _GetCurrentLocation;
}

class _$_GetCurrentLocation implements _GetCurrentLocation {
  const _$_GetCurrentLocation();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentLocation implements ExperienceNavigationActorEvent {
  const factory _GetCurrentLocation() = _$_GetCurrentLocation;
}

abstract class _$RateDifficultyCopyWith<$Res> {
  factory _$RateDifficultyCopyWith(_RateDifficulty value, $Res Function(_RateDifficulty) then) = __$RateDifficultyCopyWithImpl<$Res>;

  $Res call({int difficulty});
}

class __$RateDifficultyCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements _$RateDifficultyCopyWith<$Res> {
  __$RateDifficultyCopyWithImpl(_RateDifficulty _value, $Res Function(_RateDifficulty) _then) : super(_value, (v) => _then(v as _RateDifficulty));

  @override
  _RateDifficulty get _value => super._value as _RateDifficulty;

  @override
  $Res call({
    Object difficulty = freezed,
  }) {
    return _then(_RateDifficulty(
      difficulty == freezed ? _value.difficulty : difficulty as int,
    ));
  }
}

class _$_RateDifficulty implements _RateDifficulty {
  const _$_RateDifficulty(this.difficulty) : assert(difficulty != null);

  @override
  final int difficulty;

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.rateDifficulty(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RateDifficulty && (identical(other.difficulty, difficulty) || const DeepCollectionEquality().equals(other.difficulty, difficulty)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(difficulty);

  @override
  _$RateDifficultyCopyWith<_RateDifficulty> get copyWith => __$RateDifficultyCopyWithImpl<_RateDifficulty>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return rateDifficulty(difficulty);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rateDifficulty != null) {
      return rateDifficulty(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return rateDifficulty(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rateDifficulty != null) {
      return rateDifficulty(this);
    }
    return orElse();
  }
}

abstract class _RateDifficulty implements ExperienceNavigationActorEvent {
  const factory _RateDifficulty(int difficulty) = _$_RateDifficulty;

  int get difficulty;

  _$RateDifficultyCopyWith<_RateDifficulty> get copyWith;
}

abstract class _$FinishExperienceCopyWith<$Res> {
  factory _$FinishExperienceCopyWith(_FinishExperience value, $Res Function(_FinishExperience) then) = __$FinishExperienceCopyWithImpl<$Res>;
}

class __$FinishExperienceCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements _$FinishExperienceCopyWith<$Res> {
  __$FinishExperienceCopyWithImpl(_FinishExperience _value, $Res Function(_FinishExperience) _then) : super(_value, (v) => _then(v as _FinishExperience));

  @override
  _FinishExperience get _value => super._value as _FinishExperience;
}

class _$_FinishExperience implements _FinishExperience {
  const _$_FinishExperience();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.finishExperience()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FinishExperience);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return finishExperience();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishExperience != null) {
      return finishExperience();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return finishExperience(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishExperience != null) {
      return finishExperience(this);
    }
    return orElse();
  }
}

abstract class _FinishExperience implements ExperienceNavigationActorEvent {
  const factory _FinishExperience() = _$_FinishExperience;
}

abstract class _$RewardUserCopyWith<$Res> {
  factory _$RewardUserCopyWith(_RewardUser value, $Res Function(_RewardUser) then) = __$RewardUserCopyWithImpl<$Res>;
}

class __$RewardUserCopyWithImpl<$Res> extends _$ExperienceNavigationActorEventCopyWithImpl<$Res> implements _$RewardUserCopyWith<$Res> {
  __$RewardUserCopyWithImpl(_RewardUser _value, $Res Function(_RewardUser) _then) : super(_value, (v) => _then(v as _RewardUser));

  @override
  _RewardUser get _value => super._value as _RewardUser;
}

class _$_RewardUser implements _RewardUser {
  const _$_RewardUser();

  @override
  String toString() {
    return 'ExperienceNavigationActorEvent.rewardUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RewardUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(Option<Experience> experienceOption),
    @required Result objectiveAccomplished(Objective objective),
    @required Result like(),
    @required Result getCurrentLocation(),
    @required Result rateDifficulty(int difficulty),
    @required Result finishExperience(),
    @required Result rewardUser(),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return rewardUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(Option<Experience> experienceOption),
    Result objectiveAccomplished(Objective objective),
    Result like(),
    Result getCurrentLocation(),
    Result rateDifficulty(int difficulty),
    Result finishExperience(),
    Result rewardUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardUser != null) {
      return rewardUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(_Initialize value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result like(_Like value),
    @required Result getCurrentLocation(_GetCurrentLocation value),
    @required Result rateDifficulty(_RateDifficulty value),
    @required Result finishExperience(_FinishExperience value),
    @required Result rewardUser(_RewardUser value),
  }) {
    assert(initialize != null);
    assert(objectiveAccomplished != null);
    assert(like != null);
    assert(getCurrentLocation != null);
    assert(rateDifficulty != null);
    assert(finishExperience != null);
    assert(rewardUser != null);
    return rewardUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(_Initialize value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    Result like(_Like value),
    Result getCurrentLocation(_GetCurrentLocation value),
    Result rateDifficulty(_RateDifficulty value),
    Result finishExperience(_FinishExperience value),
    Result rewardUser(_RewardUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewardUser != null) {
      return rewardUser(this);
    }
    return orElse();
  }
}

abstract class _RewardUser implements ExperienceNavigationActorEvent {
  const factory _RewardUser() = _$_RewardUser;
}

class _$ExperienceNavigationActorStateTearOff {
  const _$ExperienceNavigationActorStateTearOff();

  _ExperienceNavigationActorState call(
      {@required Experience experience,
      @required Map<int, bool> objectiveTracker,
      @required Option<Set<Experience>> surroundingExperiences,
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
const $ExperienceNavigationActorState = _$ExperienceNavigationActorStateTearOff();

mixin _$ExperienceNavigationActorState {
  Experience get experience;

  Map<int, bool> get objectiveTracker;

  Option<Set<Experience>> get surroundingExperiences;

  Coordinates get currentLocation;

  bool get isFinished;

  bool get isSubmitting;

  bool get showErrorMessages;

  Option<Either<Failure, Unit>> get failureOrSuccessOption;

  $ExperienceNavigationActorStateCopyWith<ExperienceNavigationActorState> get copyWith;
}

abstract class $ExperienceNavigationActorStateCopyWith<$Res> {
  factory $ExperienceNavigationActorStateCopyWith(ExperienceNavigationActorState value, $Res Function(ExperienceNavigationActorState) then) = _$ExperienceNavigationActorStateCopyWithImpl<$Res>;

  $Res call(
      {Experience experience,
      Map<int, bool> objectiveTracker,
      Option<Set<Experience>> surroundingExperiences,
      Coordinates currentLocation,
      bool isFinished,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<Failure, Unit>> failureOrSuccessOption});

  $ExperienceCopyWith<$Res> get experience;

  $CoordinatesCopyWith<$Res> get currentLocation;
}

class _$ExperienceNavigationActorStateCopyWithImpl<$Res> implements $ExperienceNavigationActorStateCopyWith<$Res> {
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
      experience: experience == freezed ? _value.experience : experience as Experience,
      objectiveTracker: objectiveTracker == freezed ? _value.objectiveTracker : objectiveTracker as Map<int, bool>,
      surroundingExperiences: surroundingExperiences == freezed ? _value.surroundingExperiences : surroundingExperiences as Option<Set<Experience>>,
      currentLocation: currentLocation == freezed ? _value.currentLocation : currentLocation as Coordinates,
      isFinished: isFinished == freezed ? _value.isFinished : isFinished as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
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

abstract class _$ExperienceNavigationActorStateCopyWith<$Res> implements $ExperienceNavigationActorStateCopyWith<$Res> {
  factory _$ExperienceNavigationActorStateCopyWith(_ExperienceNavigationActorState value, $Res Function(_ExperienceNavigationActorState) then) = __$ExperienceNavigationActorStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {Experience experience,
      Map<int, bool> objectiveTracker,
      Option<Set<Experience>> surroundingExperiences,
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

class __$ExperienceNavigationActorStateCopyWithImpl<$Res> extends _$ExperienceNavigationActorStateCopyWithImpl<$Res> implements _$ExperienceNavigationActorStateCopyWith<$Res> {
  __$ExperienceNavigationActorStateCopyWithImpl(_ExperienceNavigationActorState _value, $Res Function(_ExperienceNavigationActorState) _then)
      : super(_value, (v) => _then(v as _ExperienceNavigationActorState));

  @override
  _ExperienceNavigationActorState get _value => super._value as _ExperienceNavigationActorState;

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
      experience: experience == freezed ? _value.experience : experience as Experience,
      objectiveTracker: objectiveTracker == freezed ? _value.objectiveTracker : objectiveTracker as Map<int, bool>,
      surroundingExperiences: surroundingExperiences == freezed ? _value.surroundingExperiences : surroundingExperiences as Option<Set<Experience>>,
      currentLocation: currentLocation == freezed ? _value.currentLocation : currentLocation as Coordinates,
      isFinished: isFinished == freezed ? _value.isFinished : isFinished as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed ? _value.failureOrSuccessOption : failureOrSuccessOption as Option<Either<Failure, Unit>>,
    ));
  }
}

class _$_ExperienceNavigationActorState implements _ExperienceNavigationActorState {
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
  final Option<Set<Experience>> surroundingExperiences;
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
            (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)) &&
            (identical(other.objectiveTracker, objectiveTracker) || const DeepCollectionEquality().equals(other.objectiveTracker, objectiveTracker)) &&
            (identical(other.surroundingExperiences, surroundingExperiences) || const DeepCollectionEquality().equals(other.surroundingExperiences, surroundingExperiences)) &&
            (identical(other.currentLocation, currentLocation) || const DeepCollectionEquality().equals(other.currentLocation, currentLocation)) &&
            (identical(other.isFinished, isFinished) || const DeepCollectionEquality().equals(other.isFinished, isFinished)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) || const DeepCollectionEquality().equals(other.failureOrSuccessOption, failureOrSuccessOption)));
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
  _$ExperienceNavigationActorStateCopyWith<_ExperienceNavigationActorState> get copyWith => __$ExperienceNavigationActorStateCopyWithImpl<_ExperienceNavigationActorState>(this, _$identity);
}

abstract class _ExperienceNavigationActorState implements ExperienceNavigationActorState {
  const factory _ExperienceNavigationActorState(
      {@required Experience experience,
      @required Map<int, bool> objectiveTracker,
      @required Option<Set<Experience>> surroundingExperiences,
      @required Coordinates currentLocation,
      @required bool isFinished,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required Option<Either<Failure, Unit>> failureOrSuccessOption}) = _$_ExperienceNavigationActorState;

  @override
  Experience get experience;

  @override
  Map<int, bool> get objectiveTracker;

  @override
  Option<Set<Experience>> get surroundingExperiences;

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
  _$ExperienceNavigationActorStateCopyWith<_ExperienceNavigationActorState> get copyWith;
}
