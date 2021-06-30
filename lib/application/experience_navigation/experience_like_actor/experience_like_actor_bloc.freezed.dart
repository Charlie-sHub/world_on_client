// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_like_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceLikeActorEventTearOff {
  const _$ExperienceLikeActorEventTearOff();

  _Initialized initialized(UniqueId experienceId, Set<UniqueId> experiencesLikedIds) {
    return _Initialized(
      experienceId,
      experiencesLikedIds,
    );
  }

  _Liked liked(UniqueId experienceId) {
    return _Liked(
      experienceId,
    );
  }

  _Disliked disliked(UniqueId experienceId) {
    return _Disliked(
      experienceId,
    );
  }
}

/// @nodoc
const $ExperienceLikeActorEvent = _$ExperienceLikeActorEventTearOff();

/// @nodoc
mixin _$ExperienceLikeActorEvent {
  UniqueId get experienceId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds) initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds)? initialized,
    TResult Function(UniqueId experienceId)? liked,
    TResult Function(UniqueId experienceId)? disliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceLikeActorEventCopyWith<ExperienceLikeActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceLikeActorEventCopyWith<$Res> {
  factory $ExperienceLikeActorEventCopyWith(
          ExperienceLikeActorEvent value, $Res Function(ExperienceLikeActorEvent) then) =
      _$ExperienceLikeActorEventCopyWithImpl<$Res>;

  $Res call({UniqueId experienceId});
}

/// @nodoc
class _$ExperienceLikeActorEventCopyWithImpl<$Res>
    implements $ExperienceLikeActorEventCopyWith<$Res> {
  _$ExperienceLikeActorEventCopyWithImpl(this._value, this._then);

  final ExperienceLikeActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceLikeActorEvent) _then;

  @override
  $Res call({
    Object? experienceId = freezed,
  }) {
    return _then(_value.copyWith(
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId experienceId, Set<UniqueId> experiencesLikedIds});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceLikeActorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? experienceId = freezed,
    Object? experiencesLikedIds = freezed,
  }) {
    return _then(_Initialized(
      experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      experiencesLikedIds == freezed
          ? _value.experiencesLikedIds
          : experiencesLikedIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experienceId, this.experiencesLikedIds);

  @override
  final UniqueId experienceId;
  @override
  final Set<UniqueId> experiencesLikedIds;

  @override
  String toString() {
    return 'ExperienceLikeActorEvent.initialized(experienceId: $experienceId, experiencesLikedIds: $experiencesLikedIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality().equals(other.experienceId, experienceId)) &&
            (identical(other.experiencesLikedIds, experiencesLikedIds) ||
                const DeepCollectionEquality()
                    .equals(other.experiencesLikedIds, experiencesLikedIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(experiencesLikedIds);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds) initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) {
    return initialized(experienceId, experiencesLikedIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds)? initialized,
    TResult Function(UniqueId experienceId)? liked,
    TResult Function(UniqueId experienceId)? disliked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experienceId, experiencesLikedIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceLikeActorEvent {
  const factory _Initialized(UniqueId experienceId, Set<UniqueId> experiencesLikedIds) =
      _$_Initialized;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;

  Set<UniqueId> get experiencesLikedIds => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res> implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) = __$LikedCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId experienceId});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res> extends _$ExperienceLikeActorEventCopyWithImpl<$Res>
    implements _$LikedCopyWith<$Res> {
  __$LikedCopyWithImpl(_Liked _value, $Res Function(_Liked) _then)
      : super(_value, (v) => _then(v as _Liked));

  @override
  _Liked get _value => super._value as _Liked;

  @override
  $Res call({
    Object? experienceId = freezed,
  }) {
    return _then(_Liked(
      experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Liked implements _Liked {
  const _$_Liked(this.experienceId);

  @override
  final UniqueId experienceId;

  @override
  String toString() {
    return 'ExperienceLikeActorEvent.liked(experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Liked &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality().equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith => __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds) initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) {
    return liked(experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds)? initialized,
    TResult Function(UniqueId experienceId)? liked,
    TResult Function(UniqueId experienceId)? disliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
  }) {
    return liked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    required TResult orElse(),
  }) {
    if (liked != null) {
      return liked(this);
    }
    return orElse();
  }
}

abstract class _Liked implements ExperienceLikeActorEvent {
  const factory _Liked(UniqueId experienceId) = _$_Liked;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LikedCopyWith<_Liked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikedCopyWith<$Res> implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$DislikedCopyWith(_Disliked value, $Res Function(_Disliked) then) =
      __$DislikedCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId experienceId});
}

/// @nodoc
class __$DislikedCopyWithImpl<$Res> extends _$ExperienceLikeActorEventCopyWithImpl<$Res>
    implements _$DislikedCopyWith<$Res> {
  __$DislikedCopyWithImpl(_Disliked _value, $Res Function(_Disliked) _then)
      : super(_value, (v) => _then(v as _Disliked));

  @override
  _Disliked get _value => super._value as _Disliked;

  @override
  $Res call({
    Object? experienceId = freezed,
  }) {
    return _then(_Disliked(
      experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Disliked implements _Disliked {
  const _$_Disliked(this.experienceId);

  @override
  final UniqueId experienceId;

  @override
  String toString() {
    return 'ExperienceLikeActorEvent.disliked(experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Disliked &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality().equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$DislikedCopyWith<_Disliked> get copyWith =>
      __$DislikedCopyWithImpl<_Disliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds) initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) {
    return disliked(experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds)? initialized,
    TResult Function(UniqueId experienceId)? liked,
    TResult Function(UniqueId experienceId)? disliked,
    required TResult orElse(),
  }) {
    if (disliked != null) {
      return disliked(experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Liked value) liked,
    required TResult Function(_Disliked value) disliked,
  }) {
    return disliked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Liked value)? liked,
    TResult Function(_Disliked value)? disliked,
    required TResult orElse(),
  }) {
    if (disliked != null) {
      return disliked(this);
    }
    return orElse();
  }
}

abstract class _Disliked implements ExperienceLikeActorEvent {
  const factory _Disliked(UniqueId experienceId) = _$_Disliked;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$DislikedCopyWith<_Disliked> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceLikeActorStateTearOff {
  const _$ExperienceLikeActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _Likes likes() {
    return const _Likes();
  }

  _Neutral neutral() {
    return const _Neutral();
  }

  _LikeSuccess likeSuccess() {
    return const _LikeSuccess();
  }

  _LikeFailure likeFailure(Failure<dynamic> failure) {
    return _LikeFailure(
      failure,
    );
  }

  _DislikeSuccess dislikeSuccess() {
    return const _DislikeSuccess();
  }

  _DislikeFailure dislikeFailure(Failure<dynamic> failure) {
    return _DislikeFailure(
      failure,
    );
  }
}

/// @nodoc
const $ExperienceLikeActorState = _$ExperienceLikeActorStateTearOff();

/// @nodoc
mixin _$ExperienceLikeActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceLikeActorStateCopyWith<$Res> {
  factory $ExperienceLikeActorStateCopyWith(
          ExperienceLikeActorState value, $Res Function(ExperienceLikeActorState) then) =
      _$ExperienceLikeActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements $ExperienceLikeActorStateCopyWith<$Res> {
  _$ExperienceLikeActorStateCopyWithImpl(this._value, this._then);

  final ExperienceLikeActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceLikeActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
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
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
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
class __$LikesCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return likes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return likes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
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
  factory _$NeutralCopyWith(_Neutral value, $Res Function(_Neutral) then) =
      __$NeutralCopyWithImpl<$Res>;
}

/// @nodoc
class __$NeutralCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return neutral();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return neutral(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
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
  factory _$LikeSuccessCopyWith(_LikeSuccess value, $Res Function(_LikeSuccess) then) =
      __$LikeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikeSuccessCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$LikeSuccessCopyWith<$Res> {
  __$LikeSuccessCopyWithImpl(_LikeSuccess _value, $Res Function(_LikeSuccess) _then)
      : super(_value, (v) => _then(v as _LikeSuccess));

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return likeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
    required TResult orElse(),
  }) {
    if (likeSuccess != null) {
      return likeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return likeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
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
  factory _$LikeFailureCopyWith(_LikeFailure value, $Res Function(_LikeFailure) then) =
      __$LikeFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LikeFailureCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$LikeFailureCopyWith<$Res> {
  __$LikeFailureCopyWithImpl(_LikeFailure _value, $Res Function(_LikeFailure) _then)
      : super(_value, (v) => _then(v as _LikeFailure));

  @override
  _LikeFailure get _value => super._value as _LikeFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LikeFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<dynamic>,
    ));
  }

  @override
  $FailureCopyWith<dynamic, $Res> get failure {
    return $FailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LikeFailure implements _LikeFailure {
  const _$_LikeFailure(this.failure);

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
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LikeFailureCopyWith<_LikeFailure> get copyWith =>
      __$LikeFailureCopyWithImpl<_LikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return likeFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
    required TResult orElse(),
  }) {
    if (likeFailure != null) {
      return likeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return likeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
    if (likeFailure != null) {
      return likeFailure(this);
    }
    return orElse();
  }
}

abstract class _LikeFailure implements ExperienceLikeActorState {
  const factory _LikeFailure(Failure<dynamic> failure) = _$_LikeFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$LikeFailureCopyWith<_LikeFailure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DislikeSuccessCopyWith<$Res> {
  factory _$DislikeSuccessCopyWith(_DislikeSuccess value, $Res Function(_DislikeSuccess) then) =
      __$DislikeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DislikeSuccessCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$DislikeSuccessCopyWith<$Res> {
  __$DislikeSuccessCopyWithImpl(_DislikeSuccess _value, $Res Function(_DislikeSuccess) _then)
      : super(_value, (v) => _then(v as _DislikeSuccess));

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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return dislikeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
    required TResult orElse(),
  }) {
    if (dislikeSuccess != null) {
      return dislikeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return dislikeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
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
  factory _$DislikeFailureCopyWith(_DislikeFailure value, $Res Function(_DislikeFailure) then) =
      __$DislikeFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DislikeFailureCopyWithImpl<$Res> extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$DislikeFailureCopyWith<$Res> {
  __$DislikeFailureCopyWithImpl(_DislikeFailure _value, $Res Function(_DislikeFailure) _then)
      : super(_value, (v) => _then(v as _DislikeFailure));

  @override
  _DislikeFailure get _value => super._value as _DislikeFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_DislikeFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure<dynamic>,
    ));
  }

  @override
  $FailureCopyWith<dynamic, $Res> get failure {
    return $FailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_DislikeFailure implements _DislikeFailure {
  const _$_DislikeFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceLikeActorState.dislikeFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DislikeFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DislikeFailureCopyWith<_DislikeFailure> get copyWith =>
      __$DislikeFailureCopyWithImpl<_DislikeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() likes,
    required TResult Function() neutral,
    required TResult Function() likeSuccess,
    required TResult Function(Failure<dynamic> failure) likeFailure,
    required TResult Function() dislikeSuccess,
    required TResult Function(Failure<dynamic> failure) dislikeFailure,
  }) {
    return dislikeFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? likes,
    TResult Function()? neutral,
    TResult Function()? likeSuccess,
    TResult Function(Failure<dynamic> failure)? likeFailure,
    TResult Function()? dislikeSuccess,
    TResult Function(Failure<dynamic> failure)? dislikeFailure,
    required TResult orElse(),
  }) {
    if (dislikeFailure != null) {
      return dislikeFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Likes value) likes,
    required TResult Function(_Neutral value) neutral,
    required TResult Function(_LikeSuccess value) likeSuccess,
    required TResult Function(_LikeFailure value) likeFailure,
    required TResult Function(_DislikeSuccess value) dislikeSuccess,
    required TResult Function(_DislikeFailure value) dislikeFailure,
  }) {
    return dislikeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Likes value)? likes,
    TResult Function(_Neutral value)? neutral,
    TResult Function(_LikeSuccess value)? likeSuccess,
    TResult Function(_LikeFailure value)? likeFailure,
    TResult Function(_DislikeSuccess value)? dislikeSuccess,
    TResult Function(_DislikeFailure value)? dislikeFailure,
    required TResult orElse(),
  }) {
    if (dislikeFailure != null) {
      return dislikeFailure(this);
    }
    return orElse();
  }
}

abstract class _DislikeFailure implements ExperienceLikeActorState {
  const factory _DislikeFailure(Failure<dynamic> failure) = _$_DislikeFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DislikeFailureCopyWith<_DislikeFailure> get copyWith => throw _privateConstructorUsedError;
}
