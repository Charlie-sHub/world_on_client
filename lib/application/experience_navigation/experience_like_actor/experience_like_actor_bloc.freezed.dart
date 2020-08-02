// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_like_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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
}

// ignore: unused_element
const $ExperienceLikeActorEvent = _$ExperienceLikeActorEventTearOff();

mixin _$ExperienceLikeActorEvent {
  Experience get experience;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
    @required Result liked(Experience experience),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    Result liked(Experience experience),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result liked(_Liked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result liked(_Liked value),
    @required Result orElse(),
  });

  $ExperienceLikeActorEventCopyWith<ExperienceLikeActorEvent> get copyWith;
}

abstract class $ExperienceLikeActorEventCopyWith<$Res> {
  factory $ExperienceLikeActorEventCopyWith(ExperienceLikeActorEvent value,
          $Res Function(ExperienceLikeActorEvent) then) =
      _$ExperienceLikeActorEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

class _$ExperienceLikeActorEventCopyWithImpl<$Res>
    implements $ExperienceLikeActorEventCopyWith<$Res> {
  _$ExperienceLikeActorEventCopyWithImpl(this._value, this._then);

  final ExperienceLikeActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceLikeActorEvent) _then;

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

abstract class _$InitializedCopyWith<$Res>
    implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$InitializedCopyWithImpl<$Res>
    extends _$ExperienceLikeActorEventCopyWithImpl<$Res>
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
    @required Result liked(Experience experience),
  }) {
    assert(initialized != null);
    assert(liked != null);
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    Result liked(Experience experience),
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
    @required Result liked(_Liked value),
  }) {
    assert(initialized != null);
    assert(liked != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result liked(_Liked value),
    @required Result orElse(),
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

abstract class _$LikedCopyWith<$Res>
    implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

class __$LikedCopyWithImpl<$Res>
    extends _$ExperienceLikeActorEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

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
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Experience experience),
    @required Result liked(Experience experience),
  }) {
    assert(initialized != null);
    assert(liked != null);
    return liked(experience);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Experience experience),
    Result liked(Experience experience),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (liked != null) {
      return liked(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result liked(_Liked value),
  }) {
    assert(initialized != null);
    assert(liked != null);
    return liked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result liked(_Liked value),
    @required Result orElse(),
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
}

// ignore: unused_element
const $ExperienceLikeActorState = _$ExperienceLikeActorStateTearOff();

mixin _$ExperienceLikeActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likes(),
    @required Result neutral(),
    @required Result likeSuccess(),
    @required Result likeFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likes(),
    Result neutral(),
    Result likeSuccess(),
    Result likeFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
    @required Result likeSuccess(_LikeSuccess value),
    @required Result likeFailure(_LikeFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    Result likeSuccess(_LikeSuccess value),
    Result likeFailure(_LikeFailure value),
    @required Result orElse(),
  });
}

abstract class $ExperienceLikeActorStateCopyWith<$Res> {
  factory $ExperienceLikeActorStateCopyWith(ExperienceLikeActorState value,
          $Res Function(ExperienceLikeActorState) then) =
      _$ExperienceLikeActorStateCopyWithImpl<$Res>;
}

class _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements $ExperienceLikeActorStateCopyWith<$Res> {
  _$ExperienceLikeActorStateCopyWithImpl(this._value, this._then);

  final ExperienceLikeActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceLikeActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likes(),
    @required Result neutral(),
    @required Result likeSuccess(),
    @required Result likeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likes(),
    Result neutral(),
    Result likeSuccess(),
    Result likeFailure(Failure<dynamic> failure),
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
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
    @required Result likeSuccess(_LikeSuccess value),
    @required Result likeFailure(_LikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    Result likeSuccess(_LikeSuccess value),
    Result likeFailure(_LikeFailure value),
    @required Result orElse(),
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

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likes(),
    @required Result neutral(),
    @required Result likeSuccess(),
    @required Result likeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likes(),
    Result neutral(),
    Result likeSuccess(),
    Result likeFailure(Failure<dynamic> failure),
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
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
    @required Result likeSuccess(_LikeSuccess value),
    @required Result likeFailure(_LikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    Result likeSuccess(_LikeSuccess value),
    Result likeFailure(_LikeFailure value),
    @required Result orElse(),
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

abstract class _$LikesCopyWith<$Res> {
  factory _$LikesCopyWith(_Likes value, $Res Function(_Likes) then) =
      __$LikesCopyWithImpl<$Res>;
}

class __$LikesCopyWithImpl<$Res>
    extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$LikesCopyWith<$Res> {
  __$LikesCopyWithImpl(_Likes _value, $Res Function(_Likes) _then)
      : super(_value, (v) => _then(v as _Likes));

  @override
  _Likes get _value => super._value as _Likes;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likes(),
    @required Result neutral(),
    @required Result likeSuccess(),
    @required Result likeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return likes();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likes(),
    Result neutral(),
    Result likeSuccess(),
    Result likeFailure(Failure<dynamic> failure),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
    @required Result likeSuccess(_LikeSuccess value),
    @required Result likeFailure(_LikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return likes(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    Result likeSuccess(_LikeSuccess value),
    Result likeFailure(_LikeFailure value),
    @required Result orElse(),
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

abstract class _$NeutralCopyWith<$Res> {
  factory _$NeutralCopyWith(_Neutral value, $Res Function(_Neutral) then) =
      __$NeutralCopyWithImpl<$Res>;
}

class __$NeutralCopyWithImpl<$Res>
    extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$NeutralCopyWith<$Res> {
  __$NeutralCopyWithImpl(_Neutral _value, $Res Function(_Neutral) _then)
      : super(_value, (v) => _then(v as _Neutral));

  @override
  _Neutral get _value => super._value as _Neutral;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likes(),
    @required Result neutral(),
    @required Result likeSuccess(),
    @required Result likeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return neutral();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likes(),
    Result neutral(),
    Result likeSuccess(),
    Result likeFailure(Failure<dynamic> failure),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
    @required Result likeSuccess(_LikeSuccess value),
    @required Result likeFailure(_LikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return neutral(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    Result likeSuccess(_LikeSuccess value),
    Result likeFailure(_LikeFailure value),
    @required Result orElse(),
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

abstract class _$LikeSuccessCopyWith<$Res> {
  factory _$LikeSuccessCopyWith(
          _LikeSuccess value, $Res Function(_LikeSuccess) then) =
      __$LikeSuccessCopyWithImpl<$Res>;
}

class __$LikeSuccessCopyWithImpl<$Res>
    extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$LikeSuccessCopyWith<$Res> {
  __$LikeSuccessCopyWithImpl(
      _LikeSuccess _value, $Res Function(_LikeSuccess) _then)
      : super(_value, (v) => _then(v as _LikeSuccess));

  @override
  _LikeSuccess get _value => super._value as _LikeSuccess;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likes(),
    @required Result neutral(),
    @required Result likeSuccess(),
    @required Result likeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return likeSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likes(),
    Result neutral(),
    Result likeSuccess(),
    Result likeFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSuccess != null) {
      return likeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
    @required Result likeSuccess(_LikeSuccess value),
    @required Result likeFailure(_LikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return likeSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    Result likeSuccess(_LikeSuccess value),
    Result likeFailure(_LikeFailure value),
    @required Result orElse(),
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

abstract class _$LikeFailureCopyWith<$Res> {
  factory _$LikeFailureCopyWith(
          _LikeFailure value, $Res Function(_LikeFailure) then) =
      __$LikeFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$LikeFailureCopyWithImpl<$Res>
    extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$LikeFailureCopyWith<$Res> {
  __$LikeFailureCopyWithImpl(
      _LikeFailure _value, $Res Function(_LikeFailure) _then)
      : super(_value, (v) => _then(v as _LikeFailure));

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
    return identical(this, other) ||
        (other is _LikeFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      __$LikeFailureCopyWithImpl<_LikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result likes(),
    @required Result neutral(),
    @required Result likeSuccess(),
    @required Result likeFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return likeFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result likes(),
    Result neutral(),
    Result likeSuccess(),
    Result likeFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeFailure != null) {
      return likeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result likes(_Likes value),
    @required Result neutral(_Neutral value),
    @required Result likeSuccess(_LikeSuccess value),
    @required Result likeFailure(_LikeFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(likes != null);
    assert(neutral != null);
    assert(likeSuccess != null);
    assert(likeFailure != null);
    return likeFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result likes(_Likes value),
    Result neutral(_Neutral value),
    Result likeSuccess(_LikeSuccess value),
    Result likeFailure(_LikeFailure value),
    @required Result orElse(),
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
