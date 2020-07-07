// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'follow_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FollowActorEventTearOff {
  const _$FollowActorEventTearOff();

  _Initialized initialized(User user) {
    return _Initialized(
      user,
    );
  }

  _Followed followed(User user) {
    return _Followed(
      user,
    );
  }

  _UnFollowed unFollowed(User user) {
    return _UnFollowed(
      user,
    );
  }
}

// ignore: unused_element
const $FollowActorEvent = _$FollowActorEventTearOff();

mixin _$FollowActorEvent {
  User get user;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result followed(User user),
    @required Result unFollowed(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result followed(User user),
    Result unFollowed(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result followed(_Followed value),
    @required Result unFollowed(_UnFollowed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result followed(_Followed value),
    Result unFollowed(_UnFollowed value),
    @required Result orElse(),
  });

  $FollowActorEventCopyWith<FollowActorEvent> get copyWith;
}

abstract class $FollowActorEventCopyWith<$Res> {
  factory $FollowActorEventCopyWith(FollowActorEvent value, $Res Function(FollowActorEvent) then) = _$FollowActorEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$FollowActorEventCopyWithImpl<$Res>
  implements $FollowActorEventCopyWith<$Res> {
  _$FollowActorEventCopyWithImpl(this._value, this._then);

  final FollowActorEvent _value;
  // ignore: unused_field
  final $Res Function(FollowActorEvent) _then;

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
  implements $FollowActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
  __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$InitializedCopyWithImpl<$Res> extends _$FollowActorEventCopyWithImpl<$Res>
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
    return 'FollowActorEvent.initialized(user: $user)';
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
    @required Result followed(User user),
    @required Result unFollowed(User user),
  }) {
    assert(initialized != null);
    assert(followed != null);
    assert(unFollowed != null);
    return initialized(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result followed(User user),
    Result unFollowed(User user),
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
    @required Result followed(_Followed value),
    @required Result unFollowed(_UnFollowed value),
  }) {
    assert(initialized != null);
    assert(followed != null);
    assert(unFollowed != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result followed(_Followed value),
    Result unFollowed(_UnFollowed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements FollowActorEvent {
  const factory _Initialized(User user) = _$_Initialized;

  @override
  User get user;
  @override
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$FollowedCopyWith<$Res>
  implements $FollowActorEventCopyWith<$Res> {
  factory _$FollowedCopyWith(_Followed value, $Res Function(_Followed) then) =
  __$FollowedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$FollowedCopyWithImpl<$Res> extends _$FollowActorEventCopyWithImpl<$Res>
  implements _$FollowedCopyWith<$Res> {
  __$FollowedCopyWithImpl(_Followed _value, $Res Function(_Followed) _then)
    : super(_value, (v) => _then(v as _Followed));

  @override
  _Followed get _value => super._value as _Followed;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Followed(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_Followed implements _Followed {
  const _$_Followed(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'FollowActorEvent.followed(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Followed &&
        (identical(other.user, user) ||
          const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$FollowedCopyWith<_Followed> get copyWith =>
    __$FollowedCopyWithImpl<_Followed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result followed(User user),
    @required Result unFollowed(User user),
  }) {
    assert(initialized != null);
    assert(followed != null);
    assert(unFollowed != null);
    return followed(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result followed(User user),
    Result unFollowed(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followed != null) {
      return followed(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result followed(_Followed value),
    @required Result unFollowed(_UnFollowed value),
  }) {
    assert(initialized != null);
    assert(followed != null);
    assert(unFollowed != null);
    return followed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result followed(_Followed value),
    Result unFollowed(_UnFollowed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followed != null) {
      return followed(this);
    }
    return orElse();
  }
}

abstract class _Followed implements FollowActorEvent {
  const factory _Followed(User user) = _$_Followed;

  @override
  User get user;
  @override
  _$FollowedCopyWith<_Followed> get copyWith;
}

abstract class _$UnFollowedCopyWith<$Res>
  implements $FollowActorEventCopyWith<$Res> {
  factory _$UnFollowedCopyWith(_UnFollowed value, $Res Function(_UnFollowed) then) =
  __$UnFollowedCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$UnFollowedCopyWithImpl<$Res> extends _$FollowActorEventCopyWithImpl<$Res>
  implements _$UnFollowedCopyWith<$Res> {
  __$UnFollowedCopyWithImpl(_UnFollowed _value, $Res Function(_UnFollowed) _then)
    : super(_value, (v) => _then(v as _UnFollowed));

  @override
  _UnFollowed get _value => super._value as _UnFollowed;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_UnFollowed(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$_UnFollowed implements _UnFollowed {
  const _$_UnFollowed(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'FollowActorEvent.unFollowed(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _UnFollowed &&
        (identical(other.user, user) ||
          const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$UnFollowedCopyWith<_UnFollowed> get copyWith =>
    __$UnFollowedCopyWithImpl<_UnFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(User user),
    @required Result followed(User user),
    @required Result unFollowed(User user),
  }) {
    assert(initialized != null);
    assert(followed != null);
    assert(unFollowed != null);
    return unFollowed(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(User user),
    Result followed(User user),
    Result unFollowed(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unFollowed != null) {
      return unFollowed(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result followed(_Followed value),
    @required Result unFollowed(_UnFollowed value),
  }) {
    assert(initialized != null);
    assert(followed != null);
    assert(unFollowed != null);
    return unFollowed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result followed(_Followed value),
    Result unFollowed(_UnFollowed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unFollowed != null) {
      return unFollowed(this);
    }
    return orElse();
  }
}

abstract class _UnFollowed implements FollowActorEvent {
  const factory _UnFollowed(User user) = _$_UnFollowed;

  @override
  User get user;
  @override
  _$UnFollowedCopyWith<_UnFollowed> get copyWith;
}

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

// ignore: unused_element
const $FollowActorState = _$FollowActorStateTearOff();

mixin _$FollowActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  });
}

abstract class $FollowActorStateCopyWith<$Res> {
  factory $FollowActorStateCopyWith(FollowActorState value, $Res Function(FollowActorState) then) =
  _$FollowActorStateCopyWithImpl<$Res>;
}

class _$FollowActorStateCopyWithImpl<$Res>
  implements $FollowActorStateCopyWith<$Res> {
  _$FollowActorStateCopyWithImpl(this._value, this._then);

  final FollowActorState _value;
  // ignore: unused_field
  final $Res Function(FollowActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
  __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
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
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FollowActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) =
  __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
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
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements FollowActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$FollowsCopyWith<$Res> {
  factory _$FollowsCopyWith(_Follows value, $Res Function(_Follows) then) =
  __$FollowsCopyWithImpl<$Res>;
}

class __$FollowsCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
  implements _$FollowsCopyWith<$Res> {
  __$FollowsCopyWithImpl(_Follows _value, $Res Function(_Follows) _then)
    : super(_value, (v) => _then(v as _Follows));

  @override
  _Follows get _value => super._value as _Follows;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return follows();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (follows != null) {
      return follows();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return follows(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (follows != null) {
      return follows(this);
    }
    return orElse();
  }
}

abstract class _Follows implements FollowActorState {
  const factory _Follows() = _$_Follows;
}

abstract class _$FollowsNotCopyWith<$Res> {
  factory _$FollowsNotCopyWith(_FollowsNot value, $Res Function(_FollowsNot) then) =
  __$FollowsNotCopyWithImpl<$Res>;
}

class __$FollowsNotCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
  implements _$FollowsNotCopyWith<$Res> {
  __$FollowsNotCopyWithImpl(_FollowsNot _value, $Res Function(_FollowsNot) _then)
    : super(_value, (v) => _then(v as _FollowsNot));

  @override
  _FollowsNot get _value => super._value as _FollowsNot;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return followsNot();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followsNot != null) {
      return followsNot();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return followsNot(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followsNot != null) {
      return followsNot(this);
    }
    return orElse();
  }
}

abstract class _FollowsNot implements FollowActorState {
  const factory _FollowsNot() = _$_FollowsNot;
}

abstract class _$FollowSuccessCopyWith<$Res> {
  factory _$FollowSuccessCopyWith(_FollowSuccess value, $Res Function(_FollowSuccess) then) =
  __$FollowSuccessCopyWithImpl<$Res>;
}

class __$FollowSuccessCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
  implements _$FollowSuccessCopyWith<$Res> {
  __$FollowSuccessCopyWithImpl(_FollowSuccess _value, $Res Function(_FollowSuccess) _then)
    : super(_value, (v) => _then(v as _FollowSuccess));

  @override
  _FollowSuccess get _value => super._value as _FollowSuccess;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return followSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followSuccess != null) {
      return followSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return followSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followSuccess != null) {
      return followSuccess(this);
    }
    return orElse();
  }
}

abstract class _FollowSuccess implements FollowActorState {
  const factory _FollowSuccess() = _$_FollowSuccess;
}

abstract class _$FollowFailureCopyWith<$Res> {
  factory _$FollowFailureCopyWith(_FollowFailure value, $Res Function(_FollowFailure) then) =
  __$FollowFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$FollowFailureCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
  implements _$FollowFailureCopyWith<$Res> {
  __$FollowFailureCopyWithImpl(_FollowFailure _value, $Res Function(_FollowFailure) _then)
    : super(_value, (v) => _then(v as _FollowFailure));

  @override
  _FollowFailure get _value => super._value as _FollowFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_FollowFailure(
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

class _$_FollowFailure implements _FollowFailure {
  const _$_FollowFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'FollowActorState.followFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _FollowFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FollowFailureCopyWith<_FollowFailure> get copyWith =>
    __$FollowFailureCopyWithImpl<_FollowFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return followFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followFailure != null) {
      return followFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return followFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followFailure != null) {
      return followFailure(this);
    }
    return orElse();
  }
}

abstract class _FollowFailure implements FollowActorState {
  const factory _FollowFailure(Failure<dynamic> failure) = _$_FollowFailure;

  Failure<dynamic> get failure;
  _$FollowFailureCopyWith<_FollowFailure> get copyWith;
}

abstract class _$UnFollowSuccessCopyWith<$Res> {
  factory _$UnFollowSuccessCopyWith(_UnFollowSuccess value, $Res Function(_UnFollowSuccess) then) =
  __$UnFollowSuccessCopyWithImpl<$Res>;
}

class __$UnFollowSuccessCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
  implements _$UnFollowSuccessCopyWith<$Res> {
  __$UnFollowSuccessCopyWithImpl(_UnFollowSuccess _value, $Res Function(_UnFollowSuccess) _then)
    : super(_value, (v) => _then(v as _UnFollowSuccess));

  @override
  _UnFollowSuccess get _value => super._value as _UnFollowSuccess;
}

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
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return unFollowSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unFollowSuccess != null) {
      return unFollowSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return unFollowSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unFollowSuccess != null) {
      return unFollowSuccess(this);
    }
    return orElse();
  }
}

abstract class _UnFollowSuccess implements FollowActorState {
  const factory _UnFollowSuccess() = _$_UnFollowSuccess;
}

abstract class _$UnFollowFailureCopyWith<$Res> {
  factory _$UnFollowFailureCopyWith(_UnFollowFailure value, $Res Function(_UnFollowFailure) then) =
  __$UnFollowFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$UnFollowFailureCopyWithImpl<$Res> extends _$FollowActorStateCopyWithImpl<$Res>
  implements _$UnFollowFailureCopyWith<$Res> {
  __$UnFollowFailureCopyWithImpl(_UnFollowFailure _value, $Res Function(_UnFollowFailure) _then)
    : super(_value, (v) => _then(v as _UnFollowFailure));

  @override
  _UnFollowFailure get _value => super._value as _UnFollowFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_UnFollowFailure(
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

class _$_UnFollowFailure implements _UnFollowFailure {
  const _$_UnFollowFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'FollowActorState.unFollowFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _UnFollowFailure &&
        (identical(other.failure, failure) ||
          const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$UnFollowFailureCopyWith<_UnFollowFailure> get copyWith =>
    __$UnFollowFailureCopyWithImpl<_UnFollowFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result follows(),
    @required Result followsNot(),
    @required Result followSuccess(),
    @required Result followFailure(Failure<dynamic> failure),
    @required Result unFollowSuccess(),
    @required Result unFollowFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return unFollowFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result follows(),
    Result followsNot(),
    Result followSuccess(),
    Result followFailure(Failure<dynamic> failure),
    Result unFollowSuccess(),
    Result unFollowFailure(Failure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unFollowFailure != null) {
      return unFollowFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result follows(_Follows value),
    @required Result followsNot(_FollowsNot value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result followFailure(_FollowFailure value),
    @required Result unFollowSuccess(_UnFollowSuccess value),
    @required Result unFollowFailure(_UnFollowFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(follows != null);
    assert(followsNot != null);
    assert(followSuccess != null);
    assert(followFailure != null);
    assert(unFollowSuccess != null);
    assert(unFollowFailure != null);
    return unFollowFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result follows(_Follows value),
    Result followsNot(_FollowsNot value),
    Result followSuccess(_FollowSuccess value),
    Result followFailure(_FollowFailure value),
    Result unFollowSuccess(_UnFollowSuccess value),
    Result unFollowFailure(_UnFollowFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unFollowFailure != null) {
      return unFollowFailure(this);
    }
    return orElse();
  }
}

abstract class _UnFollowFailure implements FollowActorState {
  const factory _UnFollowFailure(Failure<dynamic> failure) = _$_UnFollowFailure;

  Failure<dynamic> get failure;
  _$UnFollowFailureCopyWith<_UnFollowFailure> get copyWith;
}
