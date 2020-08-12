// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_navigation_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ExperienceNavigationWatcherEventTearOff {
  const _$ExperienceNavigationWatcherEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Experience> experienceOption) {
    return _Initialized(
      experienceOption,
    );
  }

// ignore: unused_element
  _AllObjectivesAccomplished allObjectivesAccomplished(Experience experience) {
    return _AllObjectivesAccomplished(
      experience,
    );
  }
}

// ignore: unused_element
const $ExperienceNavigationWatcherEvent = _$ExperienceNavigationWatcherEventTearOff();

mixin _$ExperienceNavigationWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result allObjectivesAccomplished(Experience experience),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result allObjectivesAccomplished(Experience experience),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result allObjectivesAccomplished(_AllObjectivesAccomplished value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result allObjectivesAccomplished(_AllObjectivesAccomplished value),
    @required Result orElse(),
  });
}

abstract class $ExperienceNavigationWatcherEventCopyWith<$Res> {
  factory $ExperienceNavigationWatcherEventCopyWith(ExperienceNavigationWatcherEvent value, $Res Function(ExperienceNavigationWatcherEvent) then) =
      _$ExperienceNavigationWatcherEventCopyWithImpl<$Res>;
}

class _$ExperienceNavigationWatcherEventCopyWithImpl<$Res> implements $ExperienceNavigationWatcherEventCopyWith<$Res> {
  _$ExperienceNavigationWatcherEventCopyWithImpl(this._value, this._then);

  final ExperienceNavigationWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(ExperienceNavigationWatcherEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

class __$InitializedCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experienceOption = freezed,
  }) {
    return _then(_Initialized(
      experienceOption == freezed ? _value.experienceOption : experienceOption as Option<Experience>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceOption) : assert(experienceOption != null);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherEvent.initialized(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized && (identical(other.experienceOption, experienceOption) || const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result allObjectivesAccomplished(Experience experience),
  }) {
    assert(initialized != null);
    assert(allObjectivesAccomplished != null);
    return initialized(experienceOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result allObjectivesAccomplished(Experience experience),
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
    @required Result allObjectivesAccomplished(_AllObjectivesAccomplished value),
  }) {
    assert(initialized != null);
    assert(allObjectivesAccomplished != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result allObjectivesAccomplished(_AllObjectivesAccomplished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceNavigationWatcherEvent {
  const factory _Initialized(Option<Experience> experienceOption) = _$_Initialized;

  Option<Experience> get experienceOption;

  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$AllObjectivesAccomplishedCopyWith<$Res> {
  factory _$AllObjectivesAccomplishedCopyWith(_AllObjectivesAccomplished value, $Res Function(_AllObjectivesAccomplished) then) = __$AllObjectivesAccomplishedCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class __$AllObjectivesAccomplishedCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherEventCopyWithImpl<$Res> implements _$AllObjectivesAccomplishedCopyWith<$Res> {
  __$AllObjectivesAccomplishedCopyWithImpl(_AllObjectivesAccomplished _value, $Res Function(_AllObjectivesAccomplished) _then) : super(_value, (v) => _then(v as _AllObjectivesAccomplished));

  @override
  _AllObjectivesAccomplished get _value => super._value as _AllObjectivesAccomplished;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_AllObjectivesAccomplished(
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

class _$_AllObjectivesAccomplished implements _AllObjectivesAccomplished {
  const _$_AllObjectivesAccomplished(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherEvent.allObjectivesAccomplished(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AllObjectivesAccomplished && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$AllObjectivesAccomplishedCopyWith<_AllObjectivesAccomplished> get copyWith => __$AllObjectivesAccomplishedCopyWithImpl<_AllObjectivesAccomplished>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Experience> experienceOption),
    @required Result allObjectivesAccomplished(Experience experience),
  }) {
    assert(initialized != null);
    assert(allObjectivesAccomplished != null);
    return allObjectivesAccomplished(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Experience> experienceOption),
    Result allObjectivesAccomplished(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allObjectivesAccomplished != null) {
      return allObjectivesAccomplished(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result allObjectivesAccomplished(_AllObjectivesAccomplished value),
  }) {
    assert(initialized != null);
    assert(allObjectivesAccomplished != null);
    return allObjectivesAccomplished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result allObjectivesAccomplished(_AllObjectivesAccomplished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allObjectivesAccomplished != null) {
      return allObjectivesAccomplished(this);
    }
    return orElse();
  }
}

abstract class _AllObjectivesAccomplished implements ExperienceNavigationWatcherEvent {
  const factory _AllObjectivesAccomplished(Experience experience) = _$_AllObjectivesAccomplished;

  Experience get experience;

  _$AllObjectivesAccomplishedCopyWith<_AllObjectivesAccomplished> get copyWith;
}

class _$ExperienceNavigationWatcherStateTearOff {
  const _$ExperienceNavigationWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _NoExperience noExperience() {
    return const _NoExperience();
  }

// ignore: unused_element
  _NavigatingExperience navigatingExperience(Experience experience) {
    return _NavigatingExperience(
      experience,
    );
  }

// ignore: unused_element
  _FinishExperience finishExperience(Experience experience) {
    return _FinishExperience(
      experience,
    );
  }
}

// ignore: unused_element
const $ExperienceNavigationWatcherState = _$ExperienceNavigationWatcherStateTearOff();

mixin _$ExperienceNavigationWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result noExperience(),
    @required Result navigatingExperience(Experience experience),
    @required Result finishExperience(Experience experience),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result noExperience(),
    Result navigatingExperience(Experience experience),
    Result finishExperience(Experience experience),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result noExperience(_NoExperience value),
    @required Result navigatingExperience(_NavigatingExperience value),
    @required Result finishExperience(_FinishExperience value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result noExperience(_NoExperience value),
    Result navigatingExperience(_NavigatingExperience value),
    Result finishExperience(_FinishExperience value),
    @required Result orElse(),
  });
}

abstract class $ExperienceNavigationWatcherStateCopyWith<$Res> {
  factory $ExperienceNavigationWatcherStateCopyWith(ExperienceNavigationWatcherState value, $Res Function(ExperienceNavigationWatcherState) then) =
      _$ExperienceNavigationWatcherStateCopyWithImpl<$Res>;
}

class _$ExperienceNavigationWatcherStateCopyWithImpl<$Res> implements $ExperienceNavigationWatcherStateCopyWith<$Res> {
  _$ExperienceNavigationWatcherStateCopyWithImpl(this._value, this._then);

  final ExperienceNavigationWatcherState _value;

  // ignore: unused_field
  final $Res Function(ExperienceNavigationWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExperienceNavigationWatcherState.initial()';
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
    @required Result noExperience(),
    @required Result navigatingExperience(Experience experience),
    @required Result finishExperience(Experience experience),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result noExperience(),
    Result navigatingExperience(Experience experience),
    Result finishExperience(Experience experience),
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
    @required Result noExperience(_NoExperience value),
    @required Result navigatingExperience(_NavigatingExperience value),
    @required Result finishExperience(_FinishExperience value),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result noExperience(_NoExperience value),
    Result navigatingExperience(_NavigatingExperience value),
    Result finishExperience(_FinishExperience value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceNavigationWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$NoExperienceCopyWith<$Res> {
  factory _$NoExperienceCopyWith(_NoExperience value, $Res Function(_NoExperience) then) = __$NoExperienceCopyWithImpl<$Res>;
}

class __$NoExperienceCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res> implements _$NoExperienceCopyWith<$Res> {
  __$NoExperienceCopyWithImpl(_NoExperience _value, $Res Function(_NoExperience) _then) : super(_value, (v) => _then(v as _NoExperience));

  @override
  _NoExperience get _value => super._value as _NoExperience;
}

class _$_NoExperience implements _NoExperience {
  const _$_NoExperience();

  @override
  String toString() {
    return 'ExperienceNavigationWatcherState.noExperience()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoExperience);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result noExperience(),
    @required Result navigatingExperience(Experience experience),
    @required Result finishExperience(Experience experience),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return noExperience();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result noExperience(),
    Result navigatingExperience(Experience experience),
    Result finishExperience(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noExperience != null) {
      return noExperience();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result noExperience(_NoExperience value),
    @required Result navigatingExperience(_NavigatingExperience value),
    @required Result finishExperience(_FinishExperience value),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return noExperience(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result noExperience(_NoExperience value),
    Result navigatingExperience(_NavigatingExperience value),
    Result finishExperience(_FinishExperience value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noExperience != null) {
      return noExperience(this);
    }
    return orElse();
  }
}

abstract class _NoExperience implements ExperienceNavigationWatcherState {
  const factory _NoExperience() = _$_NoExperience;
}

abstract class _$NavigatingExperienceCopyWith<$Res> {
  factory _$NavigatingExperienceCopyWith(_NavigatingExperience value, $Res Function(_NavigatingExperience) then) = __$NavigatingExperienceCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class __$NavigatingExperienceCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res> implements _$NavigatingExperienceCopyWith<$Res> {
  __$NavigatingExperienceCopyWithImpl(_NavigatingExperience _value, $Res Function(_NavigatingExperience) _then) : super(_value, (v) => _then(v as _NavigatingExperience));

  @override
  _NavigatingExperience get _value => super._value as _NavigatingExperience;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_NavigatingExperience(
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

class _$_NavigatingExperience implements _NavigatingExperience {
  const _$_NavigatingExperience(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherState.navigatingExperience(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavigatingExperience && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$NavigatingExperienceCopyWith<_NavigatingExperience> get copyWith => __$NavigatingExperienceCopyWithImpl<_NavigatingExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result noExperience(),
    @required Result navigatingExperience(Experience experience),
    @required Result finishExperience(Experience experience),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return navigatingExperience(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result noExperience(),
    Result navigatingExperience(Experience experience),
    Result finishExperience(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (navigatingExperience != null) {
      return navigatingExperience(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result noExperience(_NoExperience value),
    @required Result navigatingExperience(_NavigatingExperience value),
    @required Result finishExperience(_FinishExperience value),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return navigatingExperience(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result noExperience(_NoExperience value),
    Result navigatingExperience(_NavigatingExperience value),
    Result finishExperience(_FinishExperience value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (navigatingExperience != null) {
      return navigatingExperience(this);
    }
    return orElse();
  }
}

abstract class _NavigatingExperience implements ExperienceNavigationWatcherState {
  const factory _NavigatingExperience(Experience experience) = _$_NavigatingExperience;

  Experience get experience;

  _$NavigatingExperienceCopyWith<_NavigatingExperience> get copyWith;
}

abstract class _$FinishExperienceCopyWith<$Res> {
  factory _$FinishExperienceCopyWith(_FinishExperience value, $Res Function(_FinishExperience) then) = __$FinishExperienceCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class __$FinishExperienceCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res> implements _$FinishExperienceCopyWith<$Res> {
  __$FinishExperienceCopyWithImpl(_FinishExperience _value, $Res Function(_FinishExperience) _then) : super(_value, (v) => _then(v as _FinishExperience));

  @override
  _FinishExperience get _value => super._value as _FinishExperience;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_FinishExperience(
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

class _$_FinishExperience implements _FinishExperience {
  const _$_FinishExperience(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherState.finishExperience(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FinishExperience && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$FinishExperienceCopyWith<_FinishExperience> get copyWith => __$FinishExperienceCopyWithImpl<_FinishExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result noExperience(),
    @required Result navigatingExperience(Experience experience),
    @required Result finishExperience(Experience experience),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return finishExperience(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result noExperience(),
    Result navigatingExperience(Experience experience),
    Result finishExperience(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishExperience != null) {
      return finishExperience(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result noExperience(_NoExperience value),
    @required Result navigatingExperience(_NavigatingExperience value),
    @required Result finishExperience(_FinishExperience value),
  }) {
    assert(initial != null);
    assert(noExperience != null);
    assert(navigatingExperience != null);
    assert(finishExperience != null);
    return finishExperience(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result noExperience(_NoExperience value),
    Result navigatingExperience(_NavigatingExperience value),
    Result finishExperience(_FinishExperience value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishExperience != null) {
      return finishExperience(this);
    }
    return orElse();
  }
}

abstract class _FinishExperience implements ExperienceNavigationWatcherState {
  const factory _FinishExperience(Experience experience) = _$_FinishExperience;

  Experience get experience;
  _$FinishExperienceCopyWith<_FinishExperience> get copyWith;
}
