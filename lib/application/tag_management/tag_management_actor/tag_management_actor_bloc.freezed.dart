// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'tag_management_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TagManagementActorEventTearOff {
  const _$TagManagementActorEventTearOff();

  _Deleted deleted(Tag tag) {
    return _Deleted(
      tag,
    );
  }
}

// ignore: unused_element
const $TagManagementActorEvent = _$TagManagementActorEventTearOff();

mixin _$TagManagementActorEvent {
  Tag get tag;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Tag tag),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Tag tag),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  });

  $TagManagementActorEventCopyWith<TagManagementActorEvent> get copyWith;
}

abstract class $TagManagementActorEventCopyWith<$Res> {
  factory $TagManagementActorEventCopyWith(TagManagementActorEvent value, $Res Function(TagManagementActorEvent) then) = _$TagManagementActorEventCopyWithImpl<$Res>;

  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

class _$TagManagementActorEventCopyWithImpl<$Res> implements $TagManagementActorEventCopyWith<$Res> {
  _$TagManagementActorEventCopyWithImpl(this._value, this._then);

  final TagManagementActorEvent _value;

  // ignore: unused_field
  final $Res Function(TagManagementActorEvent) _then;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_value.copyWith(
      tag: tag == freezed ? _value.tag : tag as Tag,
    ));
  }

  @override
  $TagCopyWith<$Res> get tag {
    if (_value.tag == null) {
      return null;
    }
    return $TagCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res> implements $TagManagementActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) = __$DeletedCopyWithImpl<$Res>;

  @override
  $Res call({Tag tag});

  @override
  $TagCopyWith<$Res> get tag;
}

class __$DeletedCopyWithImpl<$Res> extends _$TagManagementActorEventCopyWithImpl<$Res> implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then) : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object tag = freezed,
  }) {
    return _then(_Deleted(
      tag == freezed ? _value.tag : tag as Tag,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.tag) : assert(tag != null);

  @override
  final Tag tag;

  @override
  String toString() {
    return 'TagManagementActorEvent.deleted(tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleted && (identical(other.tag, tag) || const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith => __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Tag tag),
  }) {
    assert(deleted != null);
    return deleted(tag);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Tag tag),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements TagManagementActorEvent {
  const factory _Deleted(Tag tag) = _$_Deleted;

  @override
  Tag get tag;

  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$TagManagementActorStateTearOff {
  const _$TagManagementActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeletionFailure deletionFailure(Failure<dynamic> failure) {
    return _DeletionFailure(
      failure,
    );
  }

  _DeletionSuccess deletionSuccess() {
    return const _DeletionSuccess();
  }
}

// ignore: unused_element
const $TagManagementActorState = _$TagManagementActorStateTearOff();

mixin _$TagManagementActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  });
}

abstract class $TagManagementActorStateCopyWith<$Res> {
  factory $TagManagementActorStateCopyWith(TagManagementActorState value, $Res Function(TagManagementActorState) then) = _$TagManagementActorStateCopyWithImpl<$Res>;
}

class _$TagManagementActorStateCopyWithImpl<$Res> implements $TagManagementActorStateCopyWith<$Res> {
  _$TagManagementActorStateCopyWithImpl(this._value, this._then);

  final TagManagementActorState _value;

  // ignore: unused_field
  final $Res Function(TagManagementActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$TagManagementActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TagManagementActorState.initial()';
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
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
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
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TagManagementActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res> extends _$TagManagementActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'TagManagementActorState.actionInProgress()';
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
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
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
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements TagManagementActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(_DeletionFailure value, $Res Function(_DeletionFailure) then) = __$DeletionFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

class __$DeletionFailureCopyWithImpl<$Res> extends _$TagManagementActorStateCopyWithImpl<$Res> implements _$DeletionFailureCopyWith<$Res> {
  __$DeletionFailureCopyWithImpl(_DeletionFailure _value, $Res Function(_DeletionFailure) _then) : super(_value, (v) => _then(v as _DeletionFailure));

  @override
  _DeletionFailure get _value => super._value as _DeletionFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DeletionFailure(
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

class _$_DeletionFailure implements _DeletionFailure {
  const _$_DeletionFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'TagManagementActorState.deletionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletionFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith => __$DeletionFailureCopyWithImpl<_DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletionFailure implements TagManagementActorState {
  const factory _DeletionFailure(Failure<dynamic> failure) = _$_DeletionFailure;

  Failure<dynamic> get failure;

  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith;
}

abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(_DeletionSuccess value, $Res Function(_DeletionSuccess) then) = __$DeletionSuccessCopyWithImpl<$Res>;
}

class __$DeletionSuccessCopyWithImpl<$Res> extends _$TagManagementActorStateCopyWithImpl<$Res> implements _$DeletionSuccessCopyWith<$Res> {
  __$DeletionSuccessCopyWithImpl(_DeletionSuccess _value, $Res Function(_DeletionSuccess) _then) : super(_value, (v) => _then(v as _DeletionSuccess));

  @override
  _DeletionSuccess get _value => super._value as _DeletionSuccess;
}

class _$_DeletionSuccess implements _DeletionSuccess {
  const _$_DeletionSuccess();

  @override
  String toString() {
    return 'TagManagementActorState.deletionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deletionFailure(Failure<dynamic> failure),
    @required Result deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deletionFailure(Failure<dynamic> failure),
    Result deletionSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deletionFailure(_DeletionFailure value),
    @required Result deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deletionFailure(_DeletionFailure value),
    Result deletionSuccess(_DeletionSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletionSuccess implements TagManagementActorState {
  const factory _DeletionSuccess() = _$_DeletionSuccess;
}
