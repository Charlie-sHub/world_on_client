// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'block_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BlockActorEventTearOff {
  const _$BlockActorEventTearOff();

// ignore: unused_element
  _Initialized initialized(User user) {
    return _Initialized(
      user,
    );
  }

// ignore: unused_element
  _Blocked blocked(User user) {
    return _Blocked(
      user,
    );
  }

// ignore: unused_element
  _UnBlocked unBlocked(User user) {
    return _UnBlocked(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BlockActorEvent = _$BlockActorEventTearOff();

/// @nodoc
mixin _$BlockActorEvent {
  User get user;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(User user),
    @required TResult blocked(User user),
    @required TResult unBlocked(User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(User user),
    TResult blocked(User user),
    TResult unBlocked(User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult blocked(_Blocked value),
    @required TResult unBlocked(_UnBlocked value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult blocked(_Blocked value),
    TResult unBlocked(_UnBlocked value),
    @required TResult orElse(),
  });

  $BlockActorEventCopyWith<BlockActorEvent> get copyWith;
}

/// @nodoc
abstract class $BlockActorEventCopyWith<$Res> {
  factory $BlockActorEventCopyWith(
          BlockActorEvent value, $Res Function(BlockActorEvent) then) =
      _$BlockActorEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$BlockActorEventCopyWithImpl<$Res>
    implements $BlockActorEventCopyWith<$Res> {
  _$BlockActorEventCopyWithImpl(this._value, this._then);

  final BlockActorEvent _value;
  // ignore: unused_field
  final $Res Function(BlockActorEvent) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $BlockActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
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
    Object user = freezed,
  }) {
    return _then(_Initialized(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'BlockActorEvent.initialized(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(User user),
    @required TResult blocked(User user),
    @required TResult unBlocked(User user),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return initialized(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(User user),
    TResult blocked(User user),
    TResult unBlocked(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult blocked(_Blocked value),
    @required TResult unBlocked(_UnBlocked value),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult blocked(_Blocked value),
    TResult unBlocked(_UnBlocked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BlockActorEvent {
  const factory _Initialized(User user) = _$_Initialized;

  @override
  User get user;
  @override
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$BlockedCopyWith<$Res>
    implements $BlockActorEventCopyWith<$Res> {
  factory _$BlockedCopyWith(_Blocked value, $Res Function(_Blocked) then) =
      __$BlockedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
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
    Object user = freezed,
  }) {
    return _then(_Blocked(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$_Blocked implements _Blocked {
  const _$_Blocked(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'BlockActorEvent.blocked(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Blocked &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$BlockedCopyWith<_Blocked> get copyWith =>
      __$BlockedCopyWithImpl<_Blocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(User user),
    @required TResult blocked(User user),
    @required TResult unBlocked(User user),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return blocked(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(User user),
    TResult blocked(User user),
    TResult unBlocked(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blocked != null) {
      return blocked(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult blocked(_Blocked value),
    @required TResult unBlocked(_UnBlocked value),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return blocked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult blocked(_Blocked value),
    TResult unBlocked(_UnBlocked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blocked != null) {
      return blocked(this);
    }
    return orElse();
  }
}

abstract class _Blocked implements BlockActorEvent {
  const factory _Blocked(User user) = _$_Blocked;

  @override
  User get user;
  @override
  _$BlockedCopyWith<_Blocked> get copyWith;
}

/// @nodoc
abstract class _$UnBlockedCopyWith<$Res>
    implements $BlockActorEventCopyWith<$Res> {
  factory _$UnBlockedCopyWith(
          _UnBlocked value, $Res Function(_UnBlocked) then) =
      __$UnBlockedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
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
    Object user = freezed,
  }) {
    return _then(_UnBlocked(
      user == freezed ? _value.user : user as User,
    ));
  }
}

/// @nodoc
class _$_UnBlocked implements _UnBlocked {
  const _$_UnBlocked(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'BlockActorEvent.unBlocked(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnBlocked &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$UnBlockedCopyWith<_UnBlocked> get copyWith =>
      __$UnBlockedCopyWithImpl<_UnBlocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(User user),
    @required TResult blocked(User user),
    @required TResult unBlocked(User user),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return unBlocked(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(User user),
    TResult blocked(User user),
    TResult unBlocked(User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unBlocked != null) {
      return unBlocked(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult blocked(_Blocked value),
    @required TResult unBlocked(_UnBlocked value),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return unBlocked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult blocked(_Blocked value),
    TResult unBlocked(_UnBlocked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unBlocked != null) {
      return unBlocked(this);
    }
    return orElse();
  }
}

abstract class _UnBlocked implements BlockActorEvent {
  const factory _UnBlocked(User user) = _$_UnBlocked;

  @override
  User get user;
  @override
  _$UnBlockedCopyWith<_UnBlocked> get copyWith;
}

/// @nodoc
class _$BlockActorStateTearOff {
  const _$BlockActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _Blocks blocks() {
    return const _Blocks();
  }

// ignore: unused_element
  _BlocksNot blocksNot() {
    return const _BlocksNot();
  }

// ignore: unused_element
  _BlockSuccess blockSuccess() {
    return const _BlockSuccess();
  }

// ignore: unused_element
  _BlockFailure blockFailure(Failure<dynamic> failure) {
    return _BlockFailure(
      failure,
    );
  }

// ignore: unused_element
  _UnBlockSuccess unBlockSuccess() {
    return const _UnBlockSuccess();
  }

// ignore: unused_element
  _UnBlockFailure unBlockFailure(Failure<dynamic> failure) {
    return _UnBlockFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BlockActorState = _$BlockActorStateTearOff();

/// @nodoc
mixin _$BlockActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  });
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
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
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
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
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
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is _Blocks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blocks();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blocks != null) {
      return blocks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blocks(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is _BlocksNot);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blocksNot();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blocksNot != null) {
      return blocksNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blocksNot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is _BlockSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blockSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blockSuccess != null) {
      return blockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blockSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object failure = freezed,
  }) {
    return _then(_BlockFailure(
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
class _$_BlockFailure implements _BlockFailure {
  const _$_BlockFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'BlockActorState.blockFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BlockFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$BlockFailureCopyWith<_BlockFailure> get copyWith =>
      __$BlockFailureCopyWithImpl<_BlockFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blockFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blockFailure != null) {
      return blockFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return blockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (blockFailure != null) {
      return blockFailure(this);
    }
    return orElse();
  }
}

abstract class _BlockFailure implements BlockActorState {
  const factory _BlockFailure(Failure<dynamic> failure) = _$_BlockFailure;

  Failure<dynamic> get failure;
  _$BlockFailureCopyWith<_BlockFailure> get copyWith;
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
    return identical(this, other) || (other is _UnBlockSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return unBlockSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unBlockSuccess != null) {
      return unBlockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return unBlockSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object failure = freezed,
  }) {
    return _then(_UnBlockFailure(
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
class _$_UnBlockFailure implements _UnBlockFailure {
  const _$_UnBlockFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'BlockActorState.unBlockFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnBlockFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$UnBlockFailureCopyWith<_UnBlockFailure> get copyWith =>
      __$UnBlockFailureCopyWithImpl<_UnBlockFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult blocks(),
    @required TResult blocksNot(),
    @required TResult blockSuccess(),
    @required TResult blockFailure(Failure<dynamic> failure),
    @required TResult unBlockSuccess(),
    @required TResult unBlockFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return unBlockFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult blocks(),
    TResult blocksNot(),
    TResult blockSuccess(),
    TResult blockFailure(Failure<dynamic> failure),
    TResult unBlockSuccess(),
    TResult unBlockFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unBlockFailure != null) {
      return unBlockFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult blocks(_Blocks value),
    @required TResult blocksNot(_BlocksNot value),
    @required TResult blockSuccess(_BlockSuccess value),
    @required TResult blockFailure(_BlockFailure value),
    @required TResult unBlockSuccess(_UnBlockSuccess value),
    @required TResult unBlockFailure(_UnBlockFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(blocks != null);
    assert(blocksNot != null);
    assert(blockSuccess != null);
    assert(blockFailure != null);
    assert(unBlockSuccess != null);
    assert(unBlockFailure != null);
    return unBlockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult blocks(_Blocks value),
    TResult blocksNot(_BlocksNot value),
    TResult blockSuccess(_BlockSuccess value),
    TResult blockFailure(_BlockFailure value),
    TResult unBlockSuccess(_UnBlockSuccess value),
    TResult unBlockFailure(_UnBlockFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unBlockFailure != null) {
      return unBlockFailure(this);
    }
    return orElse();
  }
}

abstract class _UnBlockFailure implements BlockActorState {
  const factory _UnBlockFailure(Failure<dynamic> failure) = _$_UnBlockFailure;

  Failure<dynamic> get failure;
  _$UnBlockFailureCopyWith<_UnBlockFailure> get copyWith;
}
