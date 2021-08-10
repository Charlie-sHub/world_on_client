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

  _Initialized initialized(UniqueId experienceId,
      Set<UniqueId> experiencesLikedIds, int likesAmount) {
    return _Initialized(
      experienceId,
      experiencesLikedIds,
      likesAmount,
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
    required TResult Function(UniqueId experienceId,
            Set<UniqueId> experiencesLikedIds, int likesAmount)
        initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds,
            int likesAmount)?
        initialized,
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
  factory $ExperienceLikeActorEventCopyWith(ExperienceLikeActorEvent value,
          $Res Function(ExperienceLikeActorEvent) then) =
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
abstract class _$InitializedCopyWith<$Res>
    implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId experienceId,
      Set<UniqueId> experiencesLikedIds,
      int likesAmount});
}

/// @nodoc
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
    Object? experienceId = freezed,
    Object? experiencesLikedIds = freezed,
    Object? likesAmount = freezed,
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
      likesAmount == freezed
          ? _value.likesAmount
          : likesAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(
      this.experienceId, this.experiencesLikedIds, this.likesAmount);

  @override
  final UniqueId experienceId;
  @override
  final Set<UniqueId> experiencesLikedIds;
  @override
  final int likesAmount;

  @override
  String toString() {
    return 'ExperienceLikeActorEvent.initialized(experienceId: $experienceId, experiencesLikedIds: $experiencesLikedIds, likesAmount: $likesAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality()
                    .equals(other.experienceId, experienceId)) &&
            (identical(other.experiencesLikedIds, experiencesLikedIds) ||
                const DeepCollectionEquality()
                    .equals(other.experiencesLikedIds, experiencesLikedIds)) &&
            (identical(other.likesAmount, likesAmount) ||
                const DeepCollectionEquality()
                    .equals(other.likesAmount, likesAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(experiencesLikedIds) ^
      const DeepCollectionEquality().hash(likesAmount);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId experienceId,
            Set<UniqueId> experiencesLikedIds, int likesAmount)
        initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) {
    return initialized(experienceId, experiencesLikedIds, likesAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds,
            int likesAmount)?
        initialized,
    TResult Function(UniqueId experienceId)? liked,
    TResult Function(UniqueId experienceId)? disliked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experienceId, experiencesLikedIds, likesAmount);
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
  const factory _Initialized(UniqueId experienceId,
      Set<UniqueId> experiencesLikedIds, int likesAmount) = _$_Initialized;

  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;
  Set<UniqueId> get experiencesLikedIds => throw _privateConstructorUsedError;
  int get likesAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LikedCopyWith<$Res>
    implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$LikedCopyWith(_Liked value, $Res Function(_Liked) then) =
      __$LikedCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId experienceId});
}

/// @nodoc
class __$LikedCopyWithImpl<$Res>
    extends _$ExperienceLikeActorEventCopyWithImpl<$Res>
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
                const DeepCollectionEquality()
                    .equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$LikedCopyWith<_Liked> get copyWith =>
      __$LikedCopyWithImpl<_Liked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId experienceId,
            Set<UniqueId> experiencesLikedIds, int likesAmount)
        initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) {
    return liked(experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds,
            int likesAmount)?
        initialized,
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
abstract class _$DislikedCopyWith<$Res>
    implements $ExperienceLikeActorEventCopyWith<$Res> {
  factory _$DislikedCopyWith(_Disliked value, $Res Function(_Disliked) then) =
      __$DislikedCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId experienceId});
}

/// @nodoc
class __$DislikedCopyWithImpl<$Res>
    extends _$ExperienceLikeActorEventCopyWithImpl<$Res>
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
                const DeepCollectionEquality()
                    .equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$DislikedCopyWith<_Disliked> get copyWith =>
      __$DislikedCopyWithImpl<_Disliked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId experienceId,
            Set<UniqueId> experiencesLikedIds, int likesAmount)
        initialized,
    required TResult Function(UniqueId experienceId) liked,
    required TResult Function(UniqueId experienceId) disliked,
  }) {
    return disliked(experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId experienceId, Set<UniqueId> experiencesLikedIds,
            int likesAmount)?
        initialized,
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
  _$DislikedCopyWith<_Disliked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceLikeActorStateTearOff {
  const _$ExperienceLikeActorStateTearOff();

  _ExperienceLikeActorState call(
      {required bool likes,
      required int likesAmount,
      required Option<Either<Failure, Unit>> failureOrSuccessOption}) {
    return _ExperienceLikeActorState(
      likes: likes,
      likesAmount: likesAmount,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ExperienceLikeActorState = _$ExperienceLikeActorStateTearOff();

/// @nodoc
mixin _$ExperienceLikeActorState {
  bool get likes => throw _privateConstructorUsedError;
  int get likesAmount => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceLikeActorStateCopyWith<ExperienceLikeActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceLikeActorStateCopyWith<$Res> {
  factory $ExperienceLikeActorStateCopyWith(ExperienceLikeActorState value,
          $Res Function(ExperienceLikeActorState) then) =
      _$ExperienceLikeActorStateCopyWithImpl<$Res>;
  $Res call(
      {bool likes,
      int likesAmount,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements $ExperienceLikeActorStateCopyWith<$Res> {
  _$ExperienceLikeActorStateCopyWithImpl(this._value, this._then);

  final ExperienceLikeActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceLikeActorState) _then;

  @override
  $Res call({
    Object? likes = freezed,
    Object? likesAmount = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as bool,
      likesAmount: likesAmount == freezed
          ? _value.likesAmount
          : likesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$ExperienceLikeActorStateCopyWith<$Res>
    implements $ExperienceLikeActorStateCopyWith<$Res> {
  factory _$ExperienceLikeActorStateCopyWith(_ExperienceLikeActorState value,
          $Res Function(_ExperienceLikeActorState) then) =
      __$ExperienceLikeActorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool likes,
      int likesAmount,
      Option<Either<Failure, Unit>> failureOrSuccessOption});
}

/// @nodoc
class __$ExperienceLikeActorStateCopyWithImpl<$Res>
    extends _$ExperienceLikeActorStateCopyWithImpl<$Res>
    implements _$ExperienceLikeActorStateCopyWith<$Res> {
  __$ExperienceLikeActorStateCopyWithImpl(_ExperienceLikeActorState _value,
      $Res Function(_ExperienceLikeActorState) _then)
      : super(_value, (v) => _then(v as _ExperienceLikeActorState));

  @override
  _ExperienceLikeActorState get _value =>
      super._value as _ExperienceLikeActorState;

  @override
  $Res call({
    Object? likes = freezed,
    Object? likesAmount = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_ExperienceLikeActorState(
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as bool,
      likesAmount: likesAmount == freezed
          ? _value.likesAmount
          : likesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ExperienceLikeActorState implements _ExperienceLikeActorState {
  const _$_ExperienceLikeActorState(
      {required this.likes,
      required this.likesAmount,
      required this.failureOrSuccessOption});

  @override
  final bool likes;
  @override
  final int likesAmount;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExperienceLikeActorState(likes: $likes, likesAmount: $likesAmount, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceLikeActorState &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.likesAmount, likesAmount) ||
                const DeepCollectionEquality()
                    .equals(other.likesAmount, likesAmount)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(likesAmount) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ExperienceLikeActorStateCopyWith<_ExperienceLikeActorState> get copyWith =>
      __$ExperienceLikeActorStateCopyWithImpl<_ExperienceLikeActorState>(
          this, _$identity);
}

abstract class _ExperienceLikeActorState implements ExperienceLikeActorState {
  const factory _ExperienceLikeActorState(
          {required bool likes,
          required int likesAmount,
          required Option<Either<Failure, Unit>> failureOrSuccessOption}) =
      _$_ExperienceLikeActorState;

  @override
  bool get likes => throw _privateConstructorUsedError;
  @override
  int get likesAmount => throw _privateConstructorUsedError;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExperienceLikeActorStateCopyWith<_ExperienceLikeActorState> get copyWith =>
      throw _privateConstructorUsedError;
}
