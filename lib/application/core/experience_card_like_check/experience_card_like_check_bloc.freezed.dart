// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_card_like_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceCardLikeCheckEventTearOff {
  const _$ExperienceCardLikeCheckEventTearOff();

  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }
}

/// @nodoc
const $ExperienceCardLikeCheckEvent = _$ExperienceCardLikeCheckEventTearOff();

/// @nodoc
mixin _$ExperienceCardLikeCheckEvent {
  Experience get experience => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) initialized,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceCardLikeCheckEventCopyWith<ExperienceCardLikeCheckEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceCardLikeCheckEventCopyWith<$Res> {
  factory $ExperienceCardLikeCheckEventCopyWith(ExperienceCardLikeCheckEvent value, $Res Function(ExperienceCardLikeCheckEvent) then) = _$ExperienceCardLikeCheckEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceCardLikeCheckEventCopyWithImpl<$Res> implements $ExperienceCardLikeCheckEventCopyWith<$Res> {
  _$ExperienceCardLikeCheckEventCopyWithImpl(this._value, this._then);

  final ExperienceCardLikeCheckEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceCardLikeCheckEvent) _then;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed
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
abstract class _$InitializedCopyWith<$Res> implements $ExperienceCardLikeCheckEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceCardLikeCheckEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_Initialized(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardLikeCheckEvent.initialized(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) initialized,
  }) {
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceCardLikeCheckEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  @override
  Experience get experience => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceCardLikeCheckStateTearOff {
  const _$ExperienceCardLikeCheckStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Likes likes() {
    return const _Likes();
  }

  _Neutral neutral() {
    return const _Neutral();
  }
}

/// @nodoc
const $ExperienceCardLikeCheckState = _$ExperienceCardLikeCheckStateTearOff();

/// @nodoc
mixin _$ExperienceCardLikeCheckState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() likes,
    required TResult Function() neutral,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? likes,
    TResult Function()? neutral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceCardLikeCheckStateCopyWith<$Res> {
  factory $ExperienceCardLikeCheckStateCopyWith(ExperienceCardLikeCheckState value, $Res Function(ExperienceCardLikeCheckState) then) = _$ExperienceCardLikeCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceCardLikeCheckStateCopyWithImpl<$Res> implements $ExperienceCardLikeCheckStateCopyWith<$Res> {
  _$ExperienceCardLikeCheckStateCopyWithImpl(this._value, this._then);

  final ExperienceCardLikeCheckState _value;
  // ignore: unused_field
  final $Res Function(ExperienceCardLikeCheckState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ExperienceCardLikeCheckStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExperienceCardLikeCheckState.initial()';
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
    required TResult Function() likes,
    required TResult Function() neutral,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? likes,
    TResult Function()? neutral,
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
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceCardLikeCheckState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LikesCopyWith<$Res> {
  factory _$LikesCopyWith(_Likes value, $Res Function(_Likes) then) = __$LikesCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikesCopyWithImpl<$Res> extends _$ExperienceCardLikeCheckStateCopyWithImpl<$Res> implements _$LikesCopyWith<$Res> {
  __$LikesCopyWithImpl(_Likes _value, $Res Function(_Likes) _then) : super(_value, (v) => _then(v as _Likes));

  @override
  _Likes get _value => super._value as _Likes;
}

/// @nodoc
class _$_Likes implements _Likes {
  const _$_Likes();

  @override
  String toString() {
    return 'ExperienceCardLikeCheckState.likes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Likes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() likes,
    required TResult Function() neutral,
  }) {
    return likes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? likes,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (likes != null) {
      return likes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
  }) {
    return likes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    required TResult orElse(),
  }) {
    if (likes != null) {
      return likes(this);
    }
    return orElse();
  }
}

abstract class _Likes implements ExperienceCardLikeCheckState {
  const factory _Likes() = _$_Likes;
}

/// @nodoc
abstract class _$NeutralCopyWith<$Res> {
  factory _$NeutralCopyWith(_Neutral value, $Res Function(_Neutral) then) = __$NeutralCopyWithImpl<$Res>;
}

/// @nodoc
class __$NeutralCopyWithImpl<$Res> extends _$ExperienceCardLikeCheckStateCopyWithImpl<$Res> implements _$NeutralCopyWith<$Res> {
  __$NeutralCopyWithImpl(_Neutral _value, $Res Function(_Neutral) _then) : super(_value, (v) => _then(v as _Neutral));

  @override
  _Neutral get _value => super._value as _Neutral;
}

/// @nodoc
class _$_Neutral implements _Neutral {
  const _$_Neutral();

  @override
  String toString() {
    return 'ExperienceCardLikeCheckState.neutral()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Neutral);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() likes,
    required TResult Function() neutral,
  }) {
    return neutral();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? likes,
    TResult Function()? neutral,
    required TResult orElse(),
  }) {
    if (neutral != null) {
      return neutral();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
  }) {
    return neutral(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    required TResult orElse(),
  }) {
    if (neutral != null) {
      return neutral(this);
    }
    return orElse();
  }
}

abstract class _Neutral implements ExperienceCardLikeCheckState {
  const factory _Neutral() = _$_Neutral;
}
