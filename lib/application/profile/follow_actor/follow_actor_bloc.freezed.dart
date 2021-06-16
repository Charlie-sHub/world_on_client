// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'follow_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FollowActorEventTearOff {
  const _$FollowActorEventTearOff();

  _Initialized initialized(UniqueId userId) {
    return _Initialized(
      userId,
    );
  }

  _Followed followed(UniqueId userId) {
    return _Followed(
      userId,
    );
  }

  _UnFollowed unFollowed(UniqueId userId) {
    return _UnFollowed(
      userId,
    );
  }
}

/// @nodoc
const $FollowActorEvent = _$FollowActorEventTearOff();

/// @nodoc
mixin _$FollowActorEvent {
  UniqueId get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId userId) initialized,
    required TResult Function(UniqueId userId) followed,
    required TResult Function(UniqueId userId) unFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userId)? initialized,
    TResult Function(UniqueId userId)? followed,
    TResult Function(UniqueId userId)? unFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Followed value) followed,
    required TResult Function(_UnFollowed value) unFollowed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Followed value)? followed,
    TResult Function(_UnFollowed value)? unFollowed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowActorEventCopyWith<FollowActorEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowActorEventCopyWith<$Res> {
  factory $FollowActorEventCopyWith(FollowActorEvent value, $Res Function(FollowActorEvent) then) = _$FollowActorEventCopyWithImpl<$Res>;

  $Res call({UniqueId userId});
}

/// @nodoc
class _$FollowActorEventCopyWithImpl<$Res> implements $FollowActorEventCopyWith<$Res> {
  _$FollowActorEventCopyWithImpl(this._value, this._then);

  final FollowActorEvent _value;

  // ignore: unused_field
  final $Res Function(FollowActorEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> implements $FollowActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId userId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$FollowActorEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Initialized(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.userId);

  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'FollowActorEvent.initialized(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId userId) initialized,
    required TResult Function(UniqueId userId) followed,
    required TResult Function(UniqueId userId) unFollowed,
  }) {
    return initialized(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userId)? initialized,
    TResult Function(UniqueId userId)? followed,
    TResult Function(UniqueId userId)? unFollowed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Followed value) followed,
    required TResult Function(_UnFollowed value) unFollowed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Followed value)? followed,
    TResult Function(_UnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements FollowActorEvent {
  const factory _Initialized(UniqueId userId) = _$_Initialized;

  @override
  UniqueId get userId => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FollowedCopyWith<$Res> implements $FollowActorEventCopyWith<$Res> {
  factory _$FollowedCopyWith(_Followed value, $Res Function(_Followed) then) = __$FollowedCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId userId});
}

/// @nodoc
class __$FollowedCopyWithImpl<$Res> extends _$FollowActorEventCopyWithImpl<$Res> implements _$FollowedCopyWith<$Res> {
  __$FollowedCopyWithImpl(_Followed _value, $Res Function(_Followed) _then) : super(_value, (v) => _then(v as _Followed));

  @override
  _Followed get _value => super._value as _Followed;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Followed(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Followed implements _Followed {
  const _$_Followed(this.userId);

  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'FollowActorEvent.followed(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Followed && (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$FollowedCopyWith<_Followed> get copyWith => __$FollowedCopyWithImpl<_Followed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId userId) initialized,
    required TResult Function(UniqueId userId) followed,
    required TResult Function(UniqueId userId) unFollowed,
  }) {
    return followed(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userId)? initialized,
    TResult Function(UniqueId userId)? followed,
    TResult Function(UniqueId userId)? unFollowed,
    required TResult orElse(),
  }) {
    if (followed != null) {
      return followed(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Followed value) followed,
    required TResult Function(_UnFollowed value) unFollowed,
  }) {
    return followed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Followed value)? followed,
    TResult Function(_UnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (followed != null) {
      return followed(this);
    }
    return orElse();
  }
}

abstract class _Followed implements FollowActorEvent {
  const factory _Followed(UniqueId userId) = _$_Followed;

  @override
  UniqueId get userId => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$FollowedCopyWith<_Followed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnFollowedCopyWith<$Res> implements $FollowActorEventCopyWith<$Res> {
  factory _$UnFollowedCopyWith(_UnFollowed value, $Res Function(_UnFollowed) then) = __$UnFollowedCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId userId});
}

/// @nodoc
class __$UnFollowedCopyWithImpl<$Res> extends _$FollowActorEventCopyWithImpl<$Res> implements _$UnFollowedCopyWith<$Res> {
  __$UnFollowedCopyWithImpl(_UnFollowed _value, $Res Function(_UnFollowed) _then) : super(_value, (v) => _then(v as _UnFollowed));

  @override
  _UnFollowed get _value => super._value as _UnFollowed;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_UnFollowed(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_UnFollowed implements _UnFollowed {
  const _$_UnFollowed(this.userId);

  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'FollowActorEvent.unFollowed(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnFollowed && (identical(other.userId, userId) || const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UnFollowedCopyWith<_UnFollowed> get copyWith => __$UnFollowedCopyWithImpl<_UnFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId userId) initialized,
    required TResult Function(UniqueId userId) followed,
    required TResult Function(UniqueId userId) unFollowed,
  }) {
    return unFollowed(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userId)? initialized,
    TResult Function(UniqueId userId)? followed,
    TResult Function(UniqueId userId)? unFollowed,
    required TResult orElse(),
  }) {
    if (unFollowed != null) {
      return unFollowed(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Followed value) followed,
    required TResult Function(_UnFollowed value) unFollowed,
  }) {
    return unFollowed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Followed value)? followed,
    TResult Function(_UnFollowed value)? unFollowed,
    required TResult orElse(),
  }) {
    if (unFollowed != null) {
      return unFollowed(this);
    }
    return orElse();
  }
}

abstract class _UnFollowed implements FollowActorEvent {
  const factory _UnFollowed(UniqueId userId) = _$_UnFollowed;

  @override
  UniqueId get userId => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$UnFollowedCopyWith<_UnFollowed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FollowActorStateTearOff {
  const _$FollowActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _Follows follows() {
    return const _Follows();
  }

  _FollowsNot followsNot() {
    return const _FollowsNot();
  }

  _FollowSuccess followSuccess() {
    return const _FollowSuccess();
  }

  _FollowFailure followFailure(Failure<dynamic> failure) {
    return _FollowFailure(
      failure,
    );
  }

  _UnFollowSuccess unFollowSuccess() {
    return const _UnFollowSuccess();
  }

  _UnFollowFailure unFollowFailure(Failure<dynamic> failure) {
    return _UnFollowFailure(
      failure,
    );
  }
}

/// @nodoc
const $FollowActorState = _$FollowActorStateTearOff();

/// @nodoc
mixin _$FollowActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowActorStateCopyWith<$Res> {
  factory $FollowActorStateCopyWith(FollowActorState value, $Res Function(FollowActorState) then) = _$FollowActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowActorStateCopyWithImpl<$Res> implements $FollowActorStateCopyWith<$Res> {
  _$FollowActorStateCopyWithImpl(this._value, this._then);

  final FollowActorState _value;

  // ignore: unused_field
  final $Res Function(FollowActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FollowActorState.initial()';
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
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
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
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FollowActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'FollowActorState.actionInProgress()';
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
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
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
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements FollowActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$FollowsCopyWith<$Res> {
  factory _$FollowsCopyWith(_Follows value, $Res Function(_Follows) then) = __$FollowsCopyWithImpl<$Res>;
}

/// @nodoc
class __$FollowsCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$FollowsCopyWith<$Res> {
  __$FollowsCopyWithImpl(_Follows _value, $Res Function(_Follows) _then) : super(_value, (v) => _then(v as _Follows));

  @override
  _Follows get _value => super._value as _Follows;
}

/// @nodoc

class _$_Follows implements _Follows {
  const _$_Follows();

  @override
  String toString() {
    return 'FollowActorState.follows()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Follows);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return follows();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (follows != null) {
      return follows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return follows(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (follows != null) {
      return follows(this);
    }
    return orElse();
  }
}

abstract class _Follows implements FollowActorState {
  const factory _Follows() = _$_Follows;
}

/// @nodoc
abstract class _$FollowsNotCopyWith<$Res> {
  factory _$FollowsNotCopyWith(_FollowsNot value, $Res Function(_FollowsNot) then) = __$FollowsNotCopyWithImpl<$Res>;
}

/// @nodoc
class __$FollowsNotCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$FollowsNotCopyWith<$Res> {
  __$FollowsNotCopyWithImpl(_FollowsNot _value, $Res Function(_FollowsNot) _then) : super(_value, (v) => _then(v as _FollowsNot));

  @override
  _FollowsNot get _value => super._value as _FollowsNot;
}

/// @nodoc

class _$_FollowsNot implements _FollowsNot {
  const _$_FollowsNot();

  @override
  String toString() {
    return 'FollowActorState.followsNot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FollowsNot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return followsNot();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (followsNot != null) {
      return followsNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return followsNot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (followsNot != null) {
      return followsNot(this);
    }
    return orElse();
  }
}

abstract class _FollowsNot implements FollowActorState {
  const factory _FollowsNot() = _$_FollowsNot;
}

/// @nodoc
abstract class _$FollowSuccessCopyWith<$Res> {
  factory _$FollowSuccessCopyWith(_FollowSuccess value, $Res Function(_FollowSuccess) then) = __$FollowSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$FollowSuccessCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$FollowSuccessCopyWith<$Res> {
  __$FollowSuccessCopyWithImpl(_FollowSuccess _value, $Res Function(_FollowSuccess) _then) : super(_value, (v) => _then(v as _FollowSuccess));

  @override
  _FollowSuccess get _value => super._value as _FollowSuccess;
}

/// @nodoc

class _$_FollowSuccess implements _FollowSuccess {
  const _$_FollowSuccess();

  @override
  String toString() {
    return 'FollowActorState.followSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FollowSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return followSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (followSuccess != null) {
      return followSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return followSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (followSuccess != null) {
      return followSuccess(this);
    }
    return orElse();
  }
}

abstract class _FollowSuccess implements FollowActorState {
  const factory _FollowSuccess() = _$_FollowSuccess;
}

/// @nodoc
abstract class _$FollowFailureCopyWith<$Res> {
  factory _$FollowFailureCopyWith(_FollowFailure value, $Res Function(_FollowFailure) then) = __$FollowFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$FollowFailureCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$FollowFailureCopyWith<$Res> {
  __$FollowFailureCopyWithImpl(_FollowFailure _value, $Res Function(_FollowFailure) _then) : super(_value, (v) => _then(v as _FollowFailure));

  @override
  _FollowFailure get _value => super._value as _FollowFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_FollowFailure(
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

class _$_FollowFailure implements _FollowFailure {
  const _$_FollowFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'FollowActorState.followFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FollowFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FollowFailureCopyWith<_FollowFailure> get copyWith => __$FollowFailureCopyWithImpl<_FollowFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return followFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (followFailure != null) {
      return followFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return followFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (followFailure != null) {
      return followFailure(this);
    }
    return orElse();
  }
}

abstract class _FollowFailure implements FollowActorState {
  const factory _FollowFailure(Failure<dynamic> failure) = _$_FollowFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$FollowFailureCopyWith<_FollowFailure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnFollowSuccessCopyWith<$Res> {
  factory _$UnFollowSuccessCopyWith(_UnFollowSuccess value, $Res Function(_UnFollowSuccess) then) = __$UnFollowSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnFollowSuccessCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$UnFollowSuccessCopyWith<$Res> {
  __$UnFollowSuccessCopyWithImpl(_UnFollowSuccess _value, $Res Function(_UnFollowSuccess) _then) : super(_value, (v) => _then(v as _UnFollowSuccess));

  @override
  _UnFollowSuccess get _value => super._value as _UnFollowSuccess;
}

/// @nodoc

class _$_UnFollowSuccess implements _UnFollowSuccess {
  const _$_UnFollowSuccess();

  @override
  String toString() {
    return 'FollowActorState.unFollowSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnFollowSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return unFollowSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (unFollowSuccess != null) {
      return unFollowSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return unFollowSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (unFollowSuccess != null) {
      return unFollowSuccess(this);
    }
    return orElse();
  }
}

abstract class _UnFollowSuccess implements FollowActorState {
  const factory _UnFollowSuccess() = _$_UnFollowSuccess;
}

/// @nodoc
abstract class _$UnFollowFailureCopyWith<$Res> {
  factory _$UnFollowFailureCopyWith(_UnFollowFailure value, $Res Function(_UnFollowFailure) then) = __$UnFollowFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$UnFollowFailureCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res> implements _$UnFollowFailureCopyWith<$Res> {
  __$UnFollowFailureCopyWithImpl(_UnFollowFailure _value, $Res Function(_UnFollowFailure) _then) : super(_value, (v) => _then(v as _UnFollowFailure));

  @override
  _UnFollowFailure get _value => super._value as _UnFollowFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UnFollowFailure(
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

class _$_UnFollowFailure implements _UnFollowFailure {
  const _$_UnFollowFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'FollowActorState.unFollowFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnFollowFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$UnFollowFailureCopyWith<_UnFollowFailure> get copyWith => __$UnFollowFailureCopyWithImpl<_UnFollowFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() follows,
    required TResult Function() followsNot,
    required TResult Function() followSuccess,
    required TResult Function(Failure<dynamic> failure) followFailure,
    required TResult Function() unFollowSuccess,
    required TResult Function(Failure<dynamic> failure) unFollowFailure,
  }) {
    return unFollowFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? follows,
    TResult Function()? followsNot,
    TResult Function()? followSuccess,
    TResult Function(Failure<dynamic> failure)? followFailure,
    TResult Function()? unFollowSuccess,
    TResult Function(Failure<dynamic> failure)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (unFollowFailure != null) {
      return unFollowFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Follows value) follows,
    required TResult Function(_FollowsNot value) followsNot,
    required TResult Function(_FollowSuccess value) followSuccess,
    required TResult Function(_FollowFailure value) followFailure,
    required TResult Function(_UnFollowSuccess value) unFollowSuccess,
    required TResult Function(_UnFollowFailure value) unFollowFailure,
  }) {
    return unFollowFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Follows value)? follows,
    TResult Function(_FollowsNot value)? followsNot,
    TResult Function(_FollowSuccess value)? followSuccess,
    TResult Function(_FollowFailure value)? followFailure,
    TResult Function(_UnFollowSuccess value)? unFollowSuccess,
    TResult Function(_UnFollowFailure value)? unFollowFailure,
    required TResult orElse(),
  }) {
    if (unFollowFailure != null) {
      return unFollowFailure(this);
    }
    return orElse();
  }
}

abstract class _UnFollowFailure implements FollowActorState {
  const factory _UnFollowFailure(Failure<dynamic> failure) = _$_UnFollowFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$UnFollowFailureCopyWith<_UnFollowFailure> get copyWith => throw _privateConstructorUsedError;
}
