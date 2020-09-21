// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_card_like_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceCardLikeCheckEventTearOff {
  const _$ExperienceCardLikeCheckEventTearOff();

// ignore: unused_element
  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceCardLikeCheckEvent = _$ExperienceCardLikeCheckEventTearOff();

/// @nodoc
mixin _$ExperienceCardLikeCheckEvent {
  Experience get experience;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    @required Result orElse(),
  });

  $ExperienceCardLikeCheckEventCopyWith<ExperienceCardLikeCheckEvent>
      get copyWith;
}

/// @nodoc
abstract class $ExperienceCardLikeCheckEventCopyWith<$Res> {
  factory $ExperienceCardLikeCheckEventCopyWith(
          ExperienceCardLikeCheckEvent value,
          $Res Function(ExperienceCardLikeCheckEvent) then) =
      _$ExperienceCardLikeCheckEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceCardLikeCheckEventCopyWithImpl<$Res>
    implements $ExperienceCardLikeCheckEventCopyWith<$Res> {
  _$ExperienceCardLikeCheckEventCopyWithImpl(this._value, this._then);

  final ExperienceCardLikeCheckEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceCardLikeCheckEvent) _then;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience:
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

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $ExperienceCardLikeCheckEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ExperienceCardLikeCheckEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_Initialized(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardLikeCheckEvent.initialized(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
  }) {
    assert(initialized != null);
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
  }) {
    assert(initialized != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceCardLikeCheckEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  @override
  Experience get experience;
  @override
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
class _$ExperienceCardLikeCheckStateTearOff {
  const _$ExperienceCardLikeCheckStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Likes likes() {
    return const _Likes();
  }

// ignore: unused_element
  _Neutral neutral() {
    return const _Neutral();
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceCardLikeCheckState = _$ExperienceCardLikeCheckStateTearOff();

/// @nodoc
mixin _$ExperienceCardLikeCheckState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result likes(),
    @required Result neutral(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result likes(),
    Result neutral(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ExperienceCardLikeCheckStateCopyWith<$Res> {
  factory $ExperienceCardLikeCheckStateCopyWith(
          ExperienceCardLikeCheckState value,
          $Res Function(ExperienceCardLikeCheckState) then) =
      _$ExperienceCardLikeCheckStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceCardLikeCheckStateCopyWithImpl<$Res>
    implements $ExperienceCardLikeCheckStateCopyWith<$Res> {
  _$ExperienceCardLikeCheckStateCopyWithImpl(this._value, this._then);

  final ExperienceCardLikeCheckState _value;
  // ignore: unused_field
  final $Res Function(ExperienceCardLikeCheckState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ExperienceCardLikeCheckStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result likes(),
    @required Result neutral(),
  }) {
    assert(initial != null);
    assert(likes != null);
    assert(neutral != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result likes(),
    Result neutral(),
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
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
  }) {
    assert(initial != null);
    assert(likes != null);
    assert(neutral != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  factory _$LikesCopyWith(_Likes value, $Res Function(_Likes) then) =
      __$LikesCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikesCopyWithImpl<$Res>
    extends _$ExperienceCardLikeCheckStateCopyWithImpl<$Res>
    implements _$LikesCopyWith<$Res> {
  __$LikesCopyWithImpl(_Likes _value, $Res Function(_Likes) _then)
      : super(_value, (v) => _then(v as _Likes));

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result likes(),
    @required Result neutral(),
  }) {
    assert(initial != null);
    assert(likes != null);
    assert(neutral != null);
    return likes();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result likes(),
    Result neutral(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likes != null) {
      return likes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
  }) {
    assert(initial != null);
    assert(likes != null);
    assert(neutral != null);
    return likes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
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
  factory _$NeutralCopyWith(_Neutral value, $Res Function(_Neutral) then) =
      __$NeutralCopyWithImpl<$Res>;
}

/// @nodoc
class __$NeutralCopyWithImpl<$Res>
    extends _$ExperienceCardLikeCheckStateCopyWithImpl<$Res>
    implements _$NeutralCopyWith<$Res> {
  __$NeutralCopyWithImpl(_Neutral _value, $Res Function(_Neutral) _then)
      : super(_value, (v) => _then(v as _Neutral));

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result likes(),
    @required Result neutral(),
  }) {
    assert(initial != null);
    assert(likes != null);
    assert(neutral != null);
    return neutral();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result likes(),
    Result neutral(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (neutral != null) {
      return neutral();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
  }) {
    assert(initial != null);
    assert(likes != null);
    assert(neutral != null);
    return neutral(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (neutral != null) {
      return neutral(this);
    }
    return orElse();
  }
}

abstract class _Neutral implements ExperienceCardLikeCheckState {
  const factory _Neutral() = _$_Neutral;
}
