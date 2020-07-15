// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'block_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

// ignore: unused_element
const $BlockActorEvent = _$BlockActorEventTearOff();

mixin _$BlockActorEvent {
  User get user;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result blocked(User user),
    @required Result unBlocked(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result blocked(User user),
    Result unBlocked(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result blocked(_Blocked value),
    @required Result unBlocked(_UnBlocked value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result blocked(_Blocked value),
    Result unBlocked(_UnBlocked value),
    @required Result orElse(),
  });

  $BlockActorEventCopyWith<BlockActorEvent> get copyWith;
}

abstract class $BlockActorEventCopyWith<$Res> {
  factory $BlockActorEventCopyWith(BlockActorEvent value, $Res Function(BlockActorEvent) then) = _$BlockActorEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

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

abstract class _$InitializedCopyWith<$Res>
  implements $BlockActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
  __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$InitializedCopyWithImpl<$Res> extends _$BlockActorEventCopyWithImpl<$Res>
  implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
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
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result blocked(User user),
    @required Result unBlocked(User user),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return initialized(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result blocked(User user),
    Result unBlocked(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result blocked(_Blocked value),
    @required Result unBlocked(_UnBlocked value),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result blocked(_Blocked value),
    Result unBlocked(_UnBlocked value),
    @required Result orElse(),
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

abstract class _$BlockedCopyWith<$Res>
  implements $BlockActorEventCopyWith<$Res> {
  factory _$BlockedCopyWith(_Blocked value, $Res Function(_Blocked) then) =
  __$BlockedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

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
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result blocked(User user),
    @required Result unBlocked(User user),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return blocked(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result blocked(User user),
    Result unBlocked(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blocked != null) {
      return blocked(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result blocked(_Blocked value),
    @required Result unBlocked(_UnBlocked value),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return blocked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result blocked(_Blocked value),
    Result unBlocked(_UnBlocked value),
    @required Result orElse(),
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

abstract class _$UnBlockedCopyWith<$Res>
  implements $BlockActorEventCopyWith<$Res> {
  factory _$UnBlockedCopyWith(_UnBlocked value, $Res Function(_UnBlocked) then) =
  __$UnBlockedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

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
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result blocked(User user),
    @required Result unBlocked(User user),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return unBlocked(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result blocked(User user),
    Result unBlocked(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unBlocked != null) {
      return unBlocked(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result blocked(_Blocked value),
    @required Result unBlocked(_UnBlocked value),
  }) {
    assert(initialized != null);
    assert(blocked != null);
    assert(unBlocked != null);
    return unBlocked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result blocked(_Blocked value),
    Result unBlocked(_UnBlocked value),
    @required Result orElse(),
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

// ignore: unused_element
const $BlockActorState = _$BlockActorStateTearOff();

mixin _$BlockActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
  });
}

abstract class $BlockActorStateCopyWith<$Res> {
  factory $BlockActorStateCopyWith(BlockActorState value, $Res Function(BlockActorState) then) =
  _$BlockActorStateCopyWithImpl<$Res>;
}

class _$BlockActorStateCopyWithImpl<$Res>
  implements $BlockActorStateCopyWith<$Res> {
  _$BlockActorStateCopyWithImpl(this._value, this._then);

  final BlockActorState _value;
  // ignore: unused_field
  final $Res Function(BlockActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
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
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) =
  __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
  implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then)
    : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
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
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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

abstract class _$BlocksCopyWith<$Res> {
  factory _$BlocksCopyWith(_Blocks value, $Res Function(_Blocks) then) =
  __$BlocksCopyWithImpl<$Res>;
}

class __$BlocksCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
  implements _$BlocksCopyWith<$Res> {
  __$BlocksCopyWithImpl(_Blocks _value, $Res Function(_Blocks) _then)
    : super(_value, (v) => _then(v as _Blocks));

  @override
  _Blocks get _value => super._value as _Blocks;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blocks != null) {
      return blocks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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

abstract class _$BlocksNotCopyWith<$Res> {
  factory _$BlocksNotCopyWith(_BlocksNot value, $Res Function(_BlocksNot) then) =
  __$BlocksNotCopyWithImpl<$Res>;
}

class __$BlocksNotCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
  implements _$BlocksNotCopyWith<$Res> {
  __$BlocksNotCopyWithImpl(_BlocksNot _value, $Res Function(_BlocksNot) _then)
    : super(_value, (v) => _then(v as _BlocksNot));

  @override
  _BlocksNot get _value => super._value as _BlocksNot;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blocksNot != null) {
      return blocksNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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

abstract class _$BlockSuccessCopyWith<$Res> {
  factory _$BlockSuccessCopyWith(_BlockSuccess value, $Res Function(_BlockSuccess) then) =
  __$BlockSuccessCopyWithImpl<$Res>;
}

class __$BlockSuccessCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
  implements _$BlockSuccessCopyWith<$Res> {
  __$BlockSuccessCopyWithImpl(_BlockSuccess _value, $Res Function(_BlockSuccess) _then)
    : super(_value, (v) => _then(v as _BlockSuccess));

  @override
  _BlockSuccess get _value => super._value as _BlockSuccess;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockSuccess != null) {
      return blockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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

abstract class _$BlockFailureCopyWith<$Res> {
  factory _$BlockFailureCopyWith(_BlockFailure value, $Res Function(_BlockFailure) then) =
  __$BlockFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$BlockFailureCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
  implements _$BlockFailureCopyWith<$Res> {
  __$BlockFailureCopyWithImpl(_BlockFailure _value, $Res Function(_BlockFailure) _then)
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blockFailure != null) {
      return blockFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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

abstract class _$UnBlockSuccessCopyWith<$Res> {
  factory _$UnBlockSuccessCopyWith(_UnBlockSuccess value, $Res Function(_UnBlockSuccess) then) =
  __$UnBlockSuccessCopyWithImpl<$Res>;
}

class __$UnBlockSuccessCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
  implements _$UnBlockSuccessCopyWith<$Res> {
  __$UnBlockSuccessCopyWithImpl(_UnBlockSuccess _value, $Res Function(_UnBlockSuccess) _then)
    : super(_value, (v) => _then(v as _UnBlockSuccess));

  @override
  _UnBlockSuccess get _value => super._value as _UnBlockSuccess;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unBlockSuccess != null) {
      return unBlockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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

abstract class _$UnBlockFailureCopyWith<$Res> {
  factory _$UnBlockFailureCopyWith(_UnBlockFailure value, $Res Function(_UnBlockFailure) then) =
  __$UnBlockFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$UnBlockFailureCopyWithImpl<$Res> extends _$BlockActorStateCopyWithImpl<$Res>
  implements _$UnBlockFailureCopyWith<$Res> {
  __$UnBlockFailureCopyWithImpl(_UnBlockFailure _value, $Res Function(_UnBlockFailure) _then)
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result blocks(),
    @required Result blocksNot(),
    @required Result blockSuccess(),
    @required Result blockFailure(Failure<dynamic> failure),
    @required Result unBlockSuccess(),
    @required Result unBlockFailure(Failure<dynamic> failure),
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
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result blocks(),
    Result blocksNot(),
    Result blockSuccess(),
    Result blockFailure(Failure<dynamic> failure),
    Result unBlockSuccess(),
    Result unBlockFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unBlockFailure != null) {
      return unBlockFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result blocks(_Blocks value),
    @required Result blocksNot(_BlocksNot value),
    @required Result blockSuccess(_BlockSuccess value),
    @required Result blockFailure(_BlockFailure value),
    @required Result unBlockSuccess(_UnBlockSuccess value),
    @required Result unBlockFailure(_UnBlockFailure value),
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
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result blocks(_Blocks value),
    Result blocksNot(_BlocksNot value),
    Result blockSuccess(_BlockSuccess value),
    Result blockFailure(_BlockFailure value),
    Result unBlockSuccess(_UnBlockSuccess value),
    Result unBlockFailure(_UnBlockFailure value),
    @required Result orElse(),
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
