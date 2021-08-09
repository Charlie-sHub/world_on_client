// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_navigation_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceNavigationWatcherEventTearOff {
  const _$ExperienceNavigationWatcherEventTearOff();

  _Initialized initialized(Option<Experience> experienceOption) {
    return _Initialized(
      experienceOption,
    );
  }

  _AllObjectivesAccomplished allObjectivesAccomplished(Experience experience) {
    return _AllObjectivesAccomplished(
      experience,
    );
  }
}

/// @nodoc
const $ExperienceNavigationWatcherEvent = _$ExperienceNavigationWatcherEventTearOff();

/// @nodoc
mixin _$ExperienceNavigationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(Experience experience) allObjectivesAccomplished,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(Experience experience)? allObjectivesAccomplished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AllObjectivesAccomplished value) allObjectivesAccomplished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AllObjectivesAccomplished value)? allObjectivesAccomplished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceNavigationWatcherEventCopyWith<$Res> {
  factory $ExperienceNavigationWatcherEventCopyWith(
          ExperienceNavigationWatcherEvent value, $Res Function(ExperienceNavigationWatcherEvent) then) =
      _$ExperienceNavigationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceNavigationWatcherEventCopyWithImpl<$Res>
    implements $ExperienceNavigationWatcherEventCopyWith<$Res> {
  _$ExperienceNavigationWatcherEventCopyWithImpl(this._value, this._then);

  final ExperienceNavigationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceNavigationWatcherEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;

  $Res call({Option<Experience> experienceOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? experienceOption = freezed,
  }) {
    return _then(_Initialized(
      experienceOption == freezed
          ? _value.experienceOption
          : experienceOption // ignore: cast_nullable_to_non_nullable
              as Option<Experience>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceOption);

  @override
  final Option<Experience> experienceOption;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherEvent.initialized(experienceOption: $experienceOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.experienceOption, experienceOption) ||
                const DeepCollectionEquality().equals(other.experienceOption, experienceOption)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(Experience experience) allObjectivesAccomplished,
  }) {
    return initialized(experienceOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(Experience experience)? allObjectivesAccomplished,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experienceOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AllObjectivesAccomplished value) allObjectivesAccomplished,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AllObjectivesAccomplished value)? allObjectivesAccomplished,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceNavigationWatcherEvent {
  const factory _Initialized(Option<Experience> experienceOption) = _$_Initialized;

  Option<Experience> get experienceOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AllObjectivesAccomplishedCopyWith<$Res> {
  factory _$AllObjectivesAccomplishedCopyWith(
          _AllObjectivesAccomplished value, $Res Function(_AllObjectivesAccomplished) then) =
      __$AllObjectivesAccomplishedCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$AllObjectivesAccomplishedCopyWithImpl<$Res>
    extends _$ExperienceNavigationWatcherEventCopyWithImpl<$Res>
    implements _$AllObjectivesAccomplishedCopyWith<$Res> {
  __$AllObjectivesAccomplishedCopyWithImpl(
      _AllObjectivesAccomplished _value, $Res Function(_AllObjectivesAccomplished) _then)
      : super(_value, (v) => _then(v as _AllObjectivesAccomplished));

  @override
  _AllObjectivesAccomplished get _value => super._value as _AllObjectivesAccomplished;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_AllObjectivesAccomplished(
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

class _$_AllObjectivesAccomplished implements _AllObjectivesAccomplished {
  const _$_AllObjectivesAccomplished(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherEvent.allObjectivesAccomplished(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllObjectivesAccomplished &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$AllObjectivesAccomplishedCopyWith<_AllObjectivesAccomplished> get copyWith =>
      __$AllObjectivesAccomplishedCopyWithImpl<_AllObjectivesAccomplished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Experience> experienceOption) initialized,
    required TResult Function(Experience experience) allObjectivesAccomplished,
  }) {
    return allObjectivesAccomplished(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Experience> experienceOption)? initialized,
    TResult Function(Experience experience)? allObjectivesAccomplished,
    required TResult orElse(),
  }) {
    if (allObjectivesAccomplished != null) {
      return allObjectivesAccomplished(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AllObjectivesAccomplished value) allObjectivesAccomplished,
  }) {
    return allObjectivesAccomplished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AllObjectivesAccomplished value)? allObjectivesAccomplished,
    required TResult orElse(),
  }) {
    if (allObjectivesAccomplished != null) {
      return allObjectivesAccomplished(this);
    }
    return orElse();
  }
}

abstract class _AllObjectivesAccomplished implements ExperienceNavigationWatcherEvent {
  const factory _AllObjectivesAccomplished(Experience experience) = _$_AllObjectivesAccomplished;

  Experience get experience => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$AllObjectivesAccomplishedCopyWith<_AllObjectivesAccomplished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceNavigationWatcherStateTearOff {
  const _$ExperienceNavigationWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _NoExperience noExperience() {
    return const _NoExperience();
  }

  _NavigatingExperience navigatingExperience(Experience experience) {
    return _NavigatingExperience(
      experience,
    );
  }

  _FinishExperience finishExperience(Experience experience) {
    return _FinishExperience(
      experience,
    );
  }
}

/// @nodoc
const $ExperienceNavigationWatcherState = _$ExperienceNavigationWatcherStateTearOff();

/// @nodoc
mixin _$ExperienceNavigationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noExperience,
    required TResult Function(Experience experience) navigatingExperience,
    required TResult Function(Experience experience) finishExperience,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noExperience,
    TResult Function(Experience experience)? navigatingExperience,
    TResult Function(Experience experience)? finishExperience,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoExperience value) noExperience,
    required TResult Function(_NavigatingExperience value) navigatingExperience,
    required TResult Function(_FinishExperience value) finishExperience,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoExperience value)? noExperience,
    TResult Function(_NavigatingExperience value)? navigatingExperience,
    TResult Function(_FinishExperience value)? finishExperience,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceNavigationWatcherStateCopyWith<$Res> {
  factory $ExperienceNavigationWatcherStateCopyWith(
          ExperienceNavigationWatcherState value, $Res Function(ExperienceNavigationWatcherState) then) =
      _$ExperienceNavigationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceNavigationWatcherStateCopyWithImpl<$Res>
    implements $ExperienceNavigationWatcherStateCopyWith<$Res> {
  _$ExperienceNavigationWatcherStateCopyWithImpl(this._value, this._then);

  final ExperienceNavigationWatcherState _value;
  // ignore: unused_field
  final $Res Function(ExperienceNavigationWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noExperience,
    required TResult Function(Experience experience) navigatingExperience,
    required TResult Function(Experience experience) finishExperience,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noExperience,
    TResult Function(Experience experience)? navigatingExperience,
    TResult Function(Experience experience)? finishExperience,
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
    required TResult Function(_NoExperience value) noExperience,
    required TResult Function(_NavigatingExperience value) navigatingExperience,
    required TResult Function(_FinishExperience value) finishExperience,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoExperience value)? noExperience,
    TResult Function(_NavigatingExperience value)? navigatingExperience,
    TResult Function(_FinishExperience value)? finishExperience,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceNavigationWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$NoExperienceCopyWith<$Res> {
  factory _$NoExperienceCopyWith(_NoExperience value, $Res Function(_NoExperience) then) =
      __$NoExperienceCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoExperienceCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res>
    implements _$NoExperienceCopyWith<$Res> {
  __$NoExperienceCopyWithImpl(_NoExperience _value, $Res Function(_NoExperience) _then)
      : super(_value, (v) => _then(v as _NoExperience));

  @override
  _NoExperience get _value => super._value as _NoExperience;
}

/// @nodoc

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noExperience,
    required TResult Function(Experience experience) navigatingExperience,
    required TResult Function(Experience experience) finishExperience,
  }) {
    return noExperience();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noExperience,
    TResult Function(Experience experience)? navigatingExperience,
    TResult Function(Experience experience)? finishExperience,
    required TResult orElse(),
  }) {
    if (noExperience != null) {
      return noExperience();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoExperience value) noExperience,
    required TResult Function(_NavigatingExperience value) navigatingExperience,
    required TResult Function(_FinishExperience value) finishExperience,
  }) {
    return noExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoExperience value)? noExperience,
    TResult Function(_NavigatingExperience value)? navigatingExperience,
    TResult Function(_FinishExperience value)? finishExperience,
    required TResult orElse(),
  }) {
    if (noExperience != null) {
      return noExperience(this);
    }
    return orElse();
  }
}

abstract class _NoExperience implements ExperienceNavigationWatcherState {
  const factory _NoExperience() = _$_NoExperience;
}

/// @nodoc
abstract class _$NavigatingExperienceCopyWith<$Res> {
  factory _$NavigatingExperienceCopyWith(
          _NavigatingExperience value, $Res Function(_NavigatingExperience) then) =
      __$NavigatingExperienceCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$NavigatingExperienceCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res>
    implements _$NavigatingExperienceCopyWith<$Res> {
  __$NavigatingExperienceCopyWithImpl(
      _NavigatingExperience _value, $Res Function(_NavigatingExperience) _then)
      : super(_value, (v) => _then(v as _NavigatingExperience));

  @override
  _NavigatingExperience get _value => super._value as _NavigatingExperience;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_NavigatingExperience(
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

class _$_NavigatingExperience implements _NavigatingExperience {
  const _$_NavigatingExperience(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherState.navigatingExperience(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigatingExperience &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$NavigatingExperienceCopyWith<_NavigatingExperience> get copyWith =>
      __$NavigatingExperienceCopyWithImpl<_NavigatingExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noExperience,
    required TResult Function(Experience experience) navigatingExperience,
    required TResult Function(Experience experience) finishExperience,
  }) {
    return navigatingExperience(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noExperience,
    TResult Function(Experience experience)? navigatingExperience,
    TResult Function(Experience experience)? finishExperience,
    required TResult orElse(),
  }) {
    if (navigatingExperience != null) {
      return navigatingExperience(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoExperience value) noExperience,
    required TResult Function(_NavigatingExperience value) navigatingExperience,
    required TResult Function(_FinishExperience value) finishExperience,
  }) {
    return navigatingExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoExperience value)? noExperience,
    TResult Function(_NavigatingExperience value)? navigatingExperience,
    TResult Function(_FinishExperience value)? finishExperience,
    required TResult orElse(),
  }) {
    if (navigatingExperience != null) {
      return navigatingExperience(this);
    }
    return orElse();
  }
}

abstract class _NavigatingExperience implements ExperienceNavigationWatcherState {
  const factory _NavigatingExperience(Experience experience) = _$_NavigatingExperience;

  Experience get experience => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$NavigatingExperienceCopyWith<_NavigatingExperience> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishExperienceCopyWith<$Res> {
  factory _$FinishExperienceCopyWith(_FinishExperience value, $Res Function(_FinishExperience) then) =
      __$FinishExperienceCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$FinishExperienceCopyWithImpl<$Res> extends _$ExperienceNavigationWatcherStateCopyWithImpl<$Res>
    implements _$FinishExperienceCopyWith<$Res> {
  __$FinishExperienceCopyWithImpl(_FinishExperience _value, $Res Function(_FinishExperience) _then)
      : super(_value, (v) => _then(v as _FinishExperience));

  @override
  _FinishExperience get _value => super._value as _FinishExperience;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_FinishExperience(
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

class _$_FinishExperience implements _FinishExperience {
  const _$_FinishExperience(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceNavigationWatcherState.finishExperience(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishExperience &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$FinishExperienceCopyWith<_FinishExperience> get copyWith =>
      __$FinishExperienceCopyWithImpl<_FinishExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noExperience,
    required TResult Function(Experience experience) navigatingExperience,
    required TResult Function(Experience experience) finishExperience,
  }) {
    return finishExperience(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noExperience,
    TResult Function(Experience experience)? navigatingExperience,
    TResult Function(Experience experience)? finishExperience,
    required TResult orElse(),
  }) {
    if (finishExperience != null) {
      return finishExperience(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NoExperience value) noExperience,
    required TResult Function(_NavigatingExperience value) navigatingExperience,
    required TResult Function(_FinishExperience value) finishExperience,
  }) {
    return finishExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NoExperience value)? noExperience,
    TResult Function(_NavigatingExperience value)? navigatingExperience,
    TResult Function(_FinishExperience value)? finishExperience,
    required TResult orElse(),
  }) {
    if (finishExperience != null) {
      return finishExperience(this);
    }
    return orElse();
  }
}

abstract class _FinishExperience implements ExperienceNavigationWatcherState {
  const factory _FinishExperience(Experience experience) = _$_FinishExperience;

  Experience get experience => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$FinishExperienceCopyWith<_FinishExperience> get copyWith => throw _privateConstructorUsedError;
}
