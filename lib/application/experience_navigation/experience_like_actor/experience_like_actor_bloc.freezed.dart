// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_like_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceLikeActorEventTearOff {
  const _$ExperienceLikeActorEventTearOff();

// ignore: unused_element
  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }

// ignore: unused_element
  _Liked liked(Experience experience) {
    return _Liked(
      experience,
    );
  }

// ignore: unused_element
  _Disliked disliked(Experience experience) {
    return _Disliked(
      experience,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceLikeActorEvent = _$ExperienceLikeActorEventTearOff();

/// @nodoc
mixin _$ExperienceLikeActorEvent {
  Experience get experience;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult liked(Experience experience),
    @required TResult disliked(Experience experience),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult liked(Experience experience),
    TResult disliked(Experience experience),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult liked(_Liked value),
    @required TResult disliked(_Disliked value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult liked(_Liked value),
    TResult disliked(_Disliked value),
    @required TResult orElse(),
  });

  $ExperienceLikeActorEventCopyWith<ExperienceLikeActorEvent> get copyWith;
}

/// @nodoc
abstract class $ExperienceLikeActorEventCopyWith<$Res> {
  factory $ExperienceLikeActorEventCopyWith(ExperienceLikeActorEvent value, $Res Function(ExperienceLikeActorEvent) then) = _$ExperienceLikeActorEventCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceLikeActorEventCopyWithImpl<$Res> implements $ExperienceLikeActorEventCopyWith<$Res> {
  _$ExperienceLikeActorEventCopyWithImpl(this._value, this._then);

  final ExperienceLikeActorEvent _value;

  // ignore: unused_field
  final $Res Function(ExperienceLikeActorEvent) _then;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed ? _value.experience : experience as Experience,
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
abstract class _$InitializedCopyWith<$Res> implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceLikeActorEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

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
    return 'ExperienceLikeActorEvent.initialized(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult liked(Experience experience),
    @required TResult disliked(Experience experience),
  }) {
    assert(initialized != null);
    assert(liked != null);
    assert(disliked != null);
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult liked(Experience experience),
    TResult disliked(Experience experience),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult liked(_Liked value),
    @required TResult disliked(_Disliked value),
  }) {
    assert(initialized != null);
    assert(liked != null);
    assert(disliked != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult liked(_Liked value),
    TResult disliked(_Disliked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceLikeActorEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  @override
  Experience get experience;
  @override
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) = __$LikedCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$ExperienceLikeActorEventCopyWithImpl<$Res> implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then) : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_Liked(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

/// @nodoc
class _$_Liked implements _Liked {
  const _$_Liked(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceLikeActorEvent.liked(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Liked && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$LikedCopyWith<_Liked> get copyWith => __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult liked(Experience experience),
    @required TResult disliked(Experience experience),
  }) {
    assert(initialized != null);
    assert(liked != null);
    assert(disliked != null);
    return liked(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult liked(Experience experience),
    TResult disliked(Experience experience),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult liked(_Liked value),
    @required TResult disliked(_Disliked value),
  }) {
    assert(initialized != null);
    assert(liked != null);
    assert(disliked != null);
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult liked(_Liked value),
    TResult disliked(_Disliked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements ExperienceLikeActorEvent {
  const factory _Liked(Experience experience) = _$_Liked;

  @override
  Experience get experience;
  @override
  _$LikedCopyWith<_Liked> get copyWith;
}

/// @nodoc
abstract class _$DislikedCopyWith<$Res> implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$DislikedCopyWith(_Disliked value, $Res Function(_Disliked) then) = __$DislikedCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$DislikedCopyWithImpl<$Res> extends _$ExperienceLikeActorEventCopyWithImpl<$Res> implements _$DislikedCopyWith<$Res> {
  __$DislikedCopyWithImpl(_Disliked _value, $Res Function(_Disliked) _then) : super(_value, (v) => _then(v as _Disliked));

  @override
  _Disliked get _value => super._value as _Disliked;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_Disliked(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

/// @nodoc
class _$_Disliked implements _Disliked {
  const _$_Disliked(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceLikeActorEvent.disliked(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Disliked && (identical(other.experience, experience) || const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$DislikedCopyWith<_Disliked> get copyWith => __$DislikedCopyWithImpl<_Disliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult liked(Experience experience),
    @required TResult disliked(Experience experience),
  }) {
    assert(initialized != null);
    assert(liked != null);
    assert(disliked != null);
    return disliked(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult liked(Experience experience),
    TResult disliked(Experience experience),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (disliked != null) {
      return disliked(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult liked(_Liked value),
    @required TResult disliked(_Disliked value),
  }) {
    assert(initialized != null);
    assert(liked != null);
    assert(disliked != null);
    return disliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult liked(_Liked value),
    TResult disliked(_Disliked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (disliked != null) {
      return disliked(this);
    }
    return orElse();
  }
}

abstract class _Disliked implements ExperienceLikeActorEvent {
  const factory _Disliked(Experience experience) = _$_Disliked;

  @override
  Experience get experience;
  @override
  _$DislikedCopyWith<_Disliked> get copyWith;
}

/// @nodoc
class _$ExperienceLikeActorStateTearOff {
  const _$ExperienceLikeActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _Likes likes() {
    return const _Likes();
  }

// ignore: unused_element
  _Neutral neutral() {
    return const _Neutral();
  }

// ignore: unused_element
  _LikeSuccess likeSuccess() {
    return const _LikeSuccess();
  }

// ignore: unused_element
  _LikeFailure likeFailure(Failure<dynamic> failure) {
    return _LikeFailure(
      failure,
    );
  }

// ignore: unused_element
  _DislikeSuccess dislikeSuccess() {
    return const _DislikeSuccess();
  }

// ignore: unused_element
  _DislikeFailure dislikeFailure(Failure<dynamic> failure) {
    return _DislikeFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceLikeActorState = _$ExperienceLikeActorStateTearOff();

/// @nodoc
mixin _$ExperienceLikeActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExperienceLikeActorStateCopyWith<$Res> {
  factory $ExperienceLikeActorStateCopyWith(ExperienceLikeActorState value, $Res Function(ExperienceLikeActorState) then) = _$ExperienceLikeActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceLikeActorStateCopyWithImpl<$Res> implements $ExperienceLikeActorStateCopyWith<$Res> {
  _$ExperienceLikeActorStateCopyWithImpl(this._value, this._then);

  final ExperienceLikeActorState _value;

  // ignore: unused_field
  final $Res Function(ExperienceLikeActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExperienceLikeActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceLikeActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ExperienceLikeActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceLikeActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$LikesCopyWith<$Res> {
  factory _$LikesCopyWith(_Likes value, $Res Function(_Likes) then) = __$LikesCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikesCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$LikesCopyWith<$Res> {
  __$LikesCopyWithImpl(_Likes _value, $Res Function(_Likes) _then) : super(_value, (v) => _then(v as _Likes));

  @override
  _Likes get _value => super._value as _Likes;
}

/// @nodoc
class _$_Likes implements _Likes {
  const _$_Likes();

  @override
  String toString() {
    return 'ExperienceLikeActorState.likes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Likes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return likes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likes != null) {
      return likes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return likes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likes != null) {
      return likes(this);
    }
    return orElse();
  }
}

abstract class _Likes implements ExperienceLikeActorState {
  const factory _Likes() = _$_Likes;
}

/// @nodoc
abstract class _$NeutralCopyWith<$Res> {
  factory _$NeutralCopyWith(_Neutral value, $Res Function(_Neutral) then) = __$NeutralCopyWithImpl<$Res>;
}

/// @nodoc
class __$NeutralCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$NeutralCopyWith<$Res> {
  __$NeutralCopyWithImpl(_Neutral _value, $Res Function(_Neutral) _then) : super(_value, (v) => _then(v as _Neutral));

  @override
  _Neutral get _value => super._value as _Neutral;
}

/// @nodoc
class _$_Neutral implements _Neutral {
  const _$_Neutral();

  @override
  String toString() {
    return 'ExperienceLikeActorState.neutral()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Neutral);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return neutral();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (neutral != null) {
      return neutral();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return neutral(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (neutral != null) {
      return neutral(this);
    }
    return orElse();
  }
}

abstract class _Neutral implements ExperienceLikeActorState {
  const factory _Neutral() = _$_Neutral;
}

/// @nodoc
abstract class _$LikeSuccessCopyWith<$Res> {
  factory _$LikeSuccessCopyWith(_LikeSuccess value, $Res Function(_LikeSuccess) then) = __$LikeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikeSuccessCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$LikeSuccessCopyWith<$Res> {
  __$LikeSuccessCopyWithImpl(_LikeSuccess _value, $Res Function(_LikeSuccess) _then) : super(_value, (v) => _then(v as _LikeSuccess));

  @override
  _LikeSuccess get _value => super._value as _LikeSuccess;
}

/// @nodoc
class _$_LikeSuccess implements _LikeSuccess {
  const _$_LikeSuccess();

  @override
  String toString() {
    return 'ExperienceLikeActorState.likeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LikeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return likeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeSuccess != null) {
      return likeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return likeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeSuccess != null) {
      return likeSuccess(this);
    }
    return orElse();
  }
}

abstract class _LikeSuccess implements ExperienceLikeActorState {
  const factory _LikeSuccess() = _$_LikeSuccess;
}

/// @nodoc
abstract class _$LikeFailureCopyWith<$Res> {
  factory _$LikeFailureCopyWith(_LikeFailure value, $Res Function(_LikeFailure) then) = __$LikeFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LikeFailureCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$LikeFailureCopyWith<$Res> {
  __$LikeFailureCopyWithImpl(_LikeFailure _value, $Res Function(_LikeFailure) _then) : super(_value, (v) => _then(v as _LikeFailure));

  @override
  _LikeFailure get _value => super._value as _LikeFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LikeFailure(
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

/// @nodoc
class _$_LikeFailure implements _LikeFailure {
  const _$_LikeFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceLikeActorState.likeFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LikeFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LikeFailureCopyWith<_LikeFailure> get copyWith => __$LikeFailureCopyWithImpl<_LikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return likeFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeFailure != null) {
      return likeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return likeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likeFailure != null) {
      return likeFailure(this);
    }
    return orElse();
  }
}

abstract class _LikeFailure implements ExperienceLikeActorState {
  const factory _LikeFailure(Failure<dynamic> failure) = _$_LikeFailure;

  Failure<dynamic> get failure;
  _$LikeFailureCopyWith<_LikeFailure> get copyWith;
}

/// @nodoc
abstract class _$DislikeSuccessCopyWith<$Res> {
  factory _$DislikeSuccessCopyWith(_DislikeSuccess value, $Res Function(_DislikeSuccess) then) = __$DislikeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DislikeSuccessCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$DislikeSuccessCopyWith<$Res> {
  __$DislikeSuccessCopyWithImpl(_DislikeSuccess _value, $Res Function(_DislikeSuccess) _then) : super(_value, (v) => _then(v as _DislikeSuccess));

  @override
  _DislikeSuccess get _value => super._value as _DislikeSuccess;
}

/// @nodoc
class _$_DislikeSuccess implements _DislikeSuccess {
  const _$_DislikeSuccess();

  @override
  String toString() {
    return 'ExperienceLikeActorState.dislikeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DislikeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return dislikeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dislikeSuccess != null) {
      return dislikeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return dislikeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dislikeSuccess != null) {
      return dislikeSuccess(this);
    }
    return orElse();
  }
}

abstract class _DislikeSuccess implements ExperienceLikeActorState {
  const factory _DislikeSuccess() = _$_DislikeSuccess;
}

/// @nodoc
abstract class _$DislikeFailureCopyWith<$Res> {
  factory _$DislikeFailureCopyWith(_DislikeFailure value, $Res Function(_DislikeFailure) then) = __$DislikeFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DislikeFailureCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res> implements _$DislikeFailureCopyWith<$Res> {
  __$DislikeFailureCopyWithImpl(_DislikeFailure _value, $Res Function(_DislikeFailure) _then) : super(_value, (v) => _then(v as _DislikeFailure));

  @override
  _DislikeFailure get _value => super._value as _DislikeFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DislikeFailure(
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

/// @nodoc
class _$_DislikeFailure implements _DislikeFailure {
  const _$_DislikeFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceLikeActorState.dislikeFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DislikeFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DislikeFailureCopyWith<_DislikeFailure> get copyWith => __$DislikeFailureCopyWithImpl<_DislikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult likes(),
    @required TResult neutral(),
    @required TResult likeSuccess(),
    @required TResult likeFailure(Failure<dynamic> failure),
    @required TResult dislikeSuccess(),
    @required TResult dislikeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return dislikeFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult likes(),
    TResult neutral(),
    TResult likeSuccess(),
    TResult likeFailure(Failure<dynamic> failure),
    TResult dislikeSuccess(),
    TResult dislikeFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dislikeFailure != null) {
      return dislikeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult likes(_Likes value),
    @required TResult neutral(_Neutral value),
    @required TResult likeSuccess(_LikeSuccess value),
    @required TResult likeFailure(_LikeFailure value),
    @required TResult dislikeSuccess(_DislikeSuccess value),
    @required TResult dislikeFailure(_DislikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    assert(dislikeSuccess != null);
    assert(dislikeFailure != null);
    return dislikeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult likes(_Likes value),
    TResult neutral(_Neutral value),
    TResult likeSuccess(_LikeSuccess value),
    TResult likeFailure(_LikeFailure value),
    TResult dislikeSuccess(_DislikeSuccess value),
    TResult dislikeFailure(_DislikeFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dislikeFailure != null) {
      return dislikeFailure(this);
    }
    return orElse();
  }
}

abstract class _DislikeFailure implements ExperienceLikeActorState {
  const factory _DislikeFailure(Failure<dynamic> failure) = _$_DislikeFailure;

  Failure<dynamic> get failure;
  _$DislikeFailureCopyWith<_DislikeFailure> get copyWith;
}
