// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'block_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BlockActorEventTearOff {
  const _$BlockActorEventTearOff();

  _Initialized initialized(
      UniqueId userToCheckId, Set<UniqueId> blockedUsersIds) {
    return _Initialized(
      userToCheckId,
      blockedUsersIds,
    );
  }

  _Blocked blocked(UniqueId userToBlockId, SimpleUser currentUser) {
    return _Blocked(
      userToBlockId,
      currentUser,
    );
  }

  _UnBlocked unBlocked(UniqueId userToUnBlockId, SimpleUser currentUser) {
    return _UnBlocked(
      userToUnBlockId,
      currentUser,
    );
  }
}

/// @nodoc
const $BlockActorEvent = _$BlockActorEventTearOff();

/// @nodoc
mixin _$BlockActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)
        initialized,
    required TResult Function(UniqueId userToBlockId, SimpleUser currentUser)
        blocked,
    required TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)
        unBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Blocked value) blocked,
    required TResult Function(_UnBlocked value) unBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockActorEventCopyWith<$Res> {
  factory $BlockActorEventCopyWith(
          BlockActorEvent value, $Res Function(BlockActorEvent) then) =
      _$BlockActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlockActorEventCopyWithImpl<$Res>
    implements $BlockActorEventCopyWith<$Res> {
  _$BlockActorEventCopyWithImpl(this._value, this._then);

  final BlockActorEvent _value;
  // ignore: unused_field
  final $Res Function(BlockActorEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({UniqueId userToCheckId, Set<UniqueId> blockedUsersIds});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$BlockActorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? userToCheckId = freezed,
    Object? blockedUsersIds = freezed,
  }) {
    return _then(_Initialized(
      userToCheckId == freezed
          ? _value.userToCheckId
          : userToCheckId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      blockedUsersIds == freezed
          ? _value.blockedUsersIds
          : blockedUsersIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.userToCheckId, this.blockedUsersIds);

  @override
  final UniqueId userToCheckId;
  @override
  final Set<UniqueId> blockedUsersIds;

  @override
  String toString() {
    return 'BlockActorEvent.initialized(userToCheckId: $userToCheckId, blockedUsersIds: $blockedUsersIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialized &&
            (identical(other.userToCheckId, userToCheckId) ||
                other.userToCheckId == userToCheckId) &&
            const DeepCollectionEquality()
                .equals(other.blockedUsersIds, blockedUsersIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userToCheckId,
      const DeepCollectionEquality().hash(blockedUsersIds));

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)
        initialized,
    required TResult Function(UniqueId userToBlockId, SimpleUser currentUser)
        blocked,
    required TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)
        unBlocked,
  }) {
    return initialized(userToCheckId, blockedUsersIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
  }) {
    return initialized?.call(userToCheckId, blockedUsersIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(userToCheckId, blockedUsersIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Blocked value) blocked,
    required TResult Function(_UnBlocked value) unBlocked,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BlockActorEvent {
  const factory _Initialized(
      UniqueId userToCheckId, Set<UniqueId> blockedUsersIds) = _$_Initialized;

  UniqueId get userToCheckId;
  Set<UniqueId> get blockedUsersIds;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BlockedCopyWith<$Res> {
  factory _$BlockedCopyWith(_Blocked value, $Res Function(_Blocked) then) =
      __$BlockedCopyWithImpl<$Res>;
  $Res call({UniqueId userToBlockId, SimpleUser currentUser});

  $SimpleUserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$BlockedCopyWithImpl<$Res> extends _$BlockActorEventCopyWithImpl<$Res>
    implements _$BlockedCopyWith<$Res> {
  __$BlockedCopyWithImpl(_Blocked _value, $Res Function(_Blocked) _then)
      : super(_value, (v) => _then(v as _Blocked));

  @override
  _Blocked get _value => super._value as _Blocked;

  @override
  $Res call({
    Object? userToBlockId = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_Blocked(
      userToBlockId == freezed
          ? _value.userToBlockId
          : userToBlockId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as SimpleUser,
    ));
  }

  @override
  $SimpleUserCopyWith<$Res> get currentUser {
    return $SimpleUserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$_Blocked implements _Blocked {
  const _$_Blocked(this.userToBlockId, this.currentUser);

  @override
  final UniqueId userToBlockId;
  @override
  final SimpleUser currentUser;

  @override
  String toString() {
    return 'BlockActorEvent.blocked(userToBlockId: $userToBlockId, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Blocked &&
            (identical(other.userToBlockId, userToBlockId) ||
                other.userToBlockId == userToBlockId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userToBlockId, currentUser);

  @JsonKey(ignore: true)
  @override
  _$BlockedCopyWith<_Blocked> get copyWith =>
      __$BlockedCopyWithImpl<_Blocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)
        initialized,
    required TResult Function(UniqueId userToBlockId, SimpleUser currentUser)
        blocked,
    required TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)
        unBlocked,
  }) {
    return blocked(userToBlockId, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
  }) {
    return blocked?.call(userToBlockId, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked(userToBlockId, currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Blocked value) blocked,
    required TResult Function(_UnBlocked value) unBlocked,
  }) {
    return blocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
  }) {
    return blocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked(this);
    }
    return orElse();
  }
}

abstract class _Blocked implements BlockActorEvent {
  const factory _Blocked(UniqueId userToBlockId, SimpleUser currentUser) =
      _$_Blocked;

  UniqueId get userToBlockId;
  SimpleUser get currentUser;
  @JsonKey(ignore: true)
  _$BlockedCopyWith<_Blocked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnBlockedCopyWith<$Res> {
  factory _$UnBlockedCopyWith(
          _UnBlocked value, $Res Function(_UnBlocked) then) =
      __$UnBlockedCopyWithImpl<$Res>;
  $Res call({UniqueId userToUnBlockId, SimpleUser currentUser});

  $SimpleUserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$UnBlockedCopyWithImpl<$Res> extends _$BlockActorEventCopyWithImpl<$Res>
    implements _$UnBlockedCopyWith<$Res> {
  __$UnBlockedCopyWithImpl(_UnBlocked _value, $Res Function(_UnBlocked) _then)
      : super(_value, (v) => _then(v as _UnBlocked));

  @override
  _UnBlocked get _value => super._value as _UnBlocked;

  @override
  $Res call({
    Object? userToUnBlockId = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_UnBlocked(
      userToUnBlockId == freezed
          ? _value.userToUnBlockId
          : userToUnBlockId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as SimpleUser,
    ));
  }

  @override
  $SimpleUserCopyWith<$Res> get currentUser {
    return $SimpleUserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$_UnBlocked implements _UnBlocked {
  const _$_UnBlocked(this.userToUnBlockId, this.currentUser);

  @override
  final UniqueId userToUnBlockId;
  @override
  final SimpleUser currentUser;

  @override
  String toString() {
    return 'BlockActorEvent.unBlocked(userToUnBlockId: $userToUnBlockId, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnBlocked &&
            (identical(other.userToUnBlockId, userToUnBlockId) ||
                other.userToUnBlockId == userToUnBlockId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userToUnBlockId, currentUser);

  @JsonKey(ignore: true)
  @override
  _$UnBlockedCopyWith<_UnBlocked> get copyWith =>
      __$UnBlockedCopyWithImpl<_UnBlocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)
        initialized,
    required TResult Function(UniqueId userToBlockId, SimpleUser currentUser)
        blocked,
    required TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)
        unBlocked,
  }) {
    return unBlocked(userToUnBlockId, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
  }) {
    return unBlocked?.call(userToUnBlockId, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId userToCheckId, Set<UniqueId> blockedUsersIds)?
        initialized,
    TResult Function(UniqueId userToBlockId, SimpleUser currentUser)? blocked,
    TResult Function(UniqueId userToUnBlockId, SimpleUser currentUser)?
        unBlocked,
    required TResult orElse(),
  }) {
    if (unBlocked != null) {
      return unBlocked(userToUnBlockId, currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Blocked value) blocked,
    required TResult Function(_UnBlocked value) unBlocked,
  }) {
    return unBlocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
  }) {
    return unBlocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Blocked value)? blocked,
    TResult Function(_UnBlocked value)? unBlocked,
    required TResult orElse(),
  }) {
    if (unBlocked != null) {
      return unBlocked(this);
    }
    return orElse();
  }
}

abstract class _UnBlocked implements BlockActorEvent {
  const factory _UnBlocked(UniqueId userToUnBlockId, SimpleUser currentUser) =
      _$_UnBlocked;

  UniqueId get userToUnBlockId;
  SimpleUser get currentUser;
  @JsonKey(ignore: true)
  _$UnBlockedCopyWith<_UnBlocked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$BlockActorStateTearOff {
  const _$BlockActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _Blocks blocks() {
    return const _Blocks();
  }

  _BlocksNot blocksNot() {
    return const _BlocksNot();
  }

  _BlockSuccess blockSuccess() {
    return const _BlockSuccess();
  }

  _BlockFailure blockFailure(Failure<dynamic> failure) {
    return _BlockFailure(
      failure,
    );
  }

  _UnBlockSuccess unBlockSuccess() {
    return const _UnBlockSuccess();
  }

  _UnBlockFailure unBlockFailure(Failure<dynamic> failure) {
    return _UnBlockFailure(
      failure,
    );
  }
}

/// @nodoc
const $BlockActorState = _$BlockActorStateTearOff();

/// @nodoc
mixin _$BlockActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockActorStateCopyWith<$Res> {
  factory $BlockActorStateCopyWith(
          BlockActorState value, $Res Function(BlockActorState) then) =
      _$BlockActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BlockActorStateCopyWithImpl<$Res>
    implements $BlockActorStateCopyWith<$Res> {
  _$BlockActorStateCopyWithImpl(this._value, this._then);

  final BlockActorState _value;
  // ignore: unused_field
  final $Res Function(BlockActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
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
    return 'BlockActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
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
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BlockActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$BlockActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'BlockActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
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
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements BlockActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$BlocksCopyWith<$Res> {
  factory _$BlocksCopyWith(_Blocks value, $Res Function(_Blocks) then) =
      __$BlocksCopyWithImpl<$Res>;
}

/// @nodoc
class __$BlocksCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
    implements _$BlocksCopyWith<$Res> {
  __$BlocksCopyWithImpl(_Blocks _value, $Res Function(_Blocks) _then)
      : super(_value, (v) => _then(v as _Blocks));

  @override
  _Blocks get _value => super._value as _Blocks;
}

/// @nodoc

class _$_Blocks implements _Blocks {
  const _$_Blocks();

  @override
  String toString() {
    return 'BlockActorState.blocks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Blocks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return blocks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return blocks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blocks != null) {
      return blocks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return blocks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return blocks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blocks != null) {
      return blocks(this);
    }
    return orElse();
  }
}

abstract class _Blocks implements BlockActorState {
  const factory _Blocks() = _$_Blocks;
}

/// @nodoc
abstract class _$BlocksNotCopyWith<$Res> {
  factory _$BlocksNotCopyWith(
          _BlocksNot value, $Res Function(_BlocksNot) then) =
      __$BlocksNotCopyWithImpl<$Res>;
}

/// @nodoc
class __$BlocksNotCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
    implements _$BlocksNotCopyWith<$Res> {
  __$BlocksNotCopyWithImpl(_BlocksNot _value, $Res Function(_BlocksNot) _then)
      : super(_value, (v) => _then(v as _BlocksNot));

  @override
  _BlocksNot get _value => super._value as _BlocksNot;
}

/// @nodoc

class _$_BlocksNot implements _BlocksNot {
  const _$_BlocksNot();

  @override
  String toString() {
    return 'BlockActorState.blocksNot()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BlocksNot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return blocksNot();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return blocksNot?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blocksNot != null) {
      return blocksNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return blocksNot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return blocksNot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blocksNot != null) {
      return blocksNot(this);
    }
    return orElse();
  }
}

abstract class _BlocksNot implements BlockActorState {
  const factory _BlocksNot() = _$_BlocksNot;
}

/// @nodoc
abstract class _$BlockSuccessCopyWith<$Res> {
  factory _$BlockSuccessCopyWith(
          _BlockSuccess value, $Res Function(_BlockSuccess) then) =
      __$BlockSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$BlockSuccessCopyWithImpl<$Res>
    extends _$BlockActorStateCopyWithImpl<$Res>
    implements _$BlockSuccessCopyWith<$Res> {
  __$BlockSuccessCopyWithImpl(
      _BlockSuccess _value, $Res Function(_BlockSuccess) _then)
      : super(_value, (v) => _then(v as _BlockSuccess));

  @override
  _BlockSuccess get _value => super._value as _BlockSuccess;
}

/// @nodoc

class _$_BlockSuccess implements _BlockSuccess {
  const _$_BlockSuccess();

  @override
  String toString() {
    return 'BlockActorState.blockSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _BlockSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return blockSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return blockSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blockSuccess != null) {
      return blockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return blockSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return blockSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blockSuccess != null) {
      return blockSuccess(this);
    }
    return orElse();
  }
}

abstract class _BlockSuccess implements BlockActorState {
  const factory _BlockSuccess() = _$_BlockSuccess;
}

/// @nodoc
abstract class _$BlockFailureCopyWith<$Res> {
  factory _$BlockFailureCopyWith(
          _BlockFailure value, $Res Function(_BlockFailure) then) =
      __$BlockFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$BlockFailureCopyWithImpl<$Res>
    extends _$BlockActorStateCopyWithImpl<$Res>
    implements _$BlockFailureCopyWith<$Res> {
  __$BlockFailureCopyWithImpl(
      _BlockFailure _value, $Res Function(_BlockFailure) _then)
      : super(_value, (v) => _then(v as _BlockFailure));

  @override
  _BlockFailure get _value => super._value as _BlockFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_BlockFailure(
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

class _$_BlockFailure implements _BlockFailure {
  const _$_BlockFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'BlockActorState.blockFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$BlockFailureCopyWith<_BlockFailure> get copyWith =>
      __$BlockFailureCopyWithImpl<_BlockFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return blockFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return blockFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blockFailure != null) {
      return blockFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return blockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return blockFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (blockFailure != null) {
      return blockFailure(this);
    }
    return orElse();
  }
}

abstract class _BlockFailure implements BlockActorState {
  const factory _BlockFailure(Failure<dynamic> failure) = _$_BlockFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$BlockFailureCopyWith<_BlockFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnBlockSuccessCopyWith<$Res> {
  factory _$UnBlockSuccessCopyWith(
          _UnBlockSuccess value, $Res Function(_UnBlockSuccess) then) =
      __$UnBlockSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnBlockSuccessCopyWithImpl<$Res>
    extends _$BlockActorStateCopyWithImpl<$Res>
    implements _$UnBlockSuccessCopyWith<$Res> {
  __$UnBlockSuccessCopyWithImpl(
      _UnBlockSuccess _value, $Res Function(_UnBlockSuccess) _then)
      : super(_value, (v) => _then(v as _UnBlockSuccess));

  @override
  _UnBlockSuccess get _value => super._value as _UnBlockSuccess;
}

/// @nodoc

class _$_UnBlockSuccess implements _UnBlockSuccess {
  const _$_UnBlockSuccess();

  @override
  String toString() {
    return 'BlockActorState.unBlockSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnBlockSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return unBlockSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return unBlockSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (unBlockSuccess != null) {
      return unBlockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return unBlockSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return unBlockSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (unBlockSuccess != null) {
      return unBlockSuccess(this);
    }
    return orElse();
  }
}

abstract class _UnBlockSuccess implements BlockActorState {
  const factory _UnBlockSuccess() = _$_UnBlockSuccess;
}

/// @nodoc
abstract class _$UnBlockFailureCopyWith<$Res> {
  factory _$UnBlockFailureCopyWith(
          _UnBlockFailure value, $Res Function(_UnBlockFailure) then) =
      __$UnBlockFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$UnBlockFailureCopyWithImpl<$Res>
    extends _$BlockActorStateCopyWithImpl<$Res>
    implements _$UnBlockFailureCopyWith<$Res> {
  __$UnBlockFailureCopyWithImpl(
      _UnBlockFailure _value, $Res Function(_UnBlockFailure) _then)
      : super(_value, (v) => _then(v as _UnBlockFailure));

  @override
  _UnBlockFailure get _value => super._value as _UnBlockFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_UnBlockFailure(
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

class _$_UnBlockFailure implements _UnBlockFailure {
  const _$_UnBlockFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'BlockActorState.unBlockFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnBlockFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$UnBlockFailureCopyWith<_UnBlockFailure> get copyWith =>
      __$UnBlockFailureCopyWithImpl<_UnBlockFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() blocks,
    required TResult Function() blocksNot,
    required TResult Function() blockSuccess,
    required TResult Function(Failure<dynamic> failure) blockFailure,
    required TResult Function() unBlockSuccess,
    required TResult Function(Failure<dynamic> failure) unBlockFailure,
  }) {
    return unBlockFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
  }) {
    return unBlockFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? blocks,
    TResult Function()? blocksNot,
    TResult Function()? blockSuccess,
    TResult Function(Failure<dynamic> failure)? blockFailure,
    TResult Function()? unBlockSuccess,
    TResult Function(Failure<dynamic> failure)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (unBlockFailure != null) {
      return unBlockFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_Blocks value) blocks,
    required TResult Function(_BlocksNot value) blocksNot,
    required TResult Function(_BlockSuccess value) blockSuccess,
    required TResult Function(_BlockFailure value) blockFailure,
    required TResult Function(_UnBlockSuccess value) unBlockSuccess,
    required TResult Function(_UnBlockFailure value) unBlockFailure,
  }) {
    return unBlockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
  }) {
    return unBlockFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_Blocks value)? blocks,
    TResult Function(_BlocksNot value)? blocksNot,
    TResult Function(_BlockSuccess value)? blockSuccess,
    TResult Function(_BlockFailure value)? blockFailure,
    TResult Function(_UnBlockSuccess value)? unBlockSuccess,
    TResult Function(_UnBlockFailure value)? unBlockFailure,
    required TResult orElse(),
  }) {
    if (unBlockFailure != null) {
      return unBlockFailure(this);
    }
    return orElse();
  }
}

abstract class _UnBlockFailure implements BlockActorState {
  const factory _UnBlockFailure(Failure<dynamic> failure) = _$_UnBlockFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$UnBlockFailureCopyWith<_UnBlockFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
