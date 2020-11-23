// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag_management_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TagManagementActorEventTearOff {
  const _$TagManagementActorEventTearOff();

// ignore: unused_element
  _Deleted deleted(Tag tag) {
    return _Deleted(
      tag,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TagManagementActorEvent = _$TagManagementActorEventTearOff();

/// @nodoc
mixin _$TagManagementActorEvent {
  Tag get tag;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(Tag tag),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(Tag tag),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    @required TResult orElse(),
  });

  $TagManagementActorEventCopyWith<TagManagementActorEvent> get copyWith;
}

/// @nodoc
abstract class $TagManagementActorEventCopyWith<$Res> {
  factory $TagManagementActorEventCopyWith(TagManagementActorEvent value,
          $Res Function(TagManagementActorEvent) then) =
      _$TagManagementActorEventCopyWithImpl<$Res>;
  $Res call({Tag tag});

  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class _$TagManagementActorEventCopyWithImpl<$Res>
    implements $TagManagementActorEventCopyWith<$Res> {
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

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $TagManagementActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Tag tag});

  @override
  $TagCopyWith<$Res> get tag;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$TagManagementActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

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

/// @nodoc
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
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.tag, tag) ||
                const DeepCollectionEquality().equals(other.tag, tag)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tag);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult deleted(Tag tag),
  }) {
    assert(deleted != null);
    return deleted(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult deleted(Tag tag),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult deleted(_Deleted value),
    @required TResult orElse(),
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

/// @nodoc
class _$TagManagementActorStateTearOff {
  const _$TagManagementActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeletionFailure deletionFailure(Failure<dynamic> failure) {
    return _DeletionFailure(
      failure,
    );
  }

// ignore: unused_element
  _DeletionSuccess deletionSuccess() {
    return const _DeletionSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $TagManagementActorState = _$TagManagementActorStateTearOff();

/// @nodoc
mixin _$TagManagementActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult deletionSuccess(),
  });

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult deletionSuccess(),
    @required TResult orElse(),
  });

  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult deletionSuccess(_DeletionSuccess value),
  });

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionFailure(_DeletionFailure value),
    TResult deletionSuccess(_DeletionSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TagManagementActorStateCopyWith<$Res> {
  factory $TagManagementActorStateCopyWith(TagManagementActorState value,
          $Res Function(TagManagementActorState) then) =
      _$TagManagementActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TagManagementActorStateCopyWithImpl<$Res>
    implements $TagManagementActorStateCopyWith<$Res> {
  _$TagManagementActorStateCopyWithImpl(this._value, this._then);

  final TagManagementActorState _value;
  // ignore: unused_field
  final $Res Function(TagManagementActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$TagManagementActorStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult deletionSuccess(),
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
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionFailure(_DeletionFailure value),
    TResult deletionSuccess(_DeletionSuccess value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$TagManagementActorStateCopyWithImpl<$Res>
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult deletionSuccess(),
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
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionFailure(_DeletionFailure value),
    TResult deletionSuccess(_DeletionSuccess value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(
          _DeletionFailure value, $Res Function(_DeletionFailure) then) =
      __$DeletionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DeletionFailureCopyWithImpl<$Res>
    extends _$TagManagementActorStateCopyWithImpl<$Res>
    implements _$DeletionFailureCopyWith<$Res> {
  __$DeletionFailureCopyWithImpl(
      _DeletionFailure _value, $Res Function(_DeletionFailure) _then)
      : super(_value, (v) => _then(v as _DeletionFailure));

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

/// @nodoc
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
    return identical(this, other) ||
        (other is _DeletionFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith =>
      __$DeletionFailureCopyWithImpl<_DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult deletionSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletionFailure != null) {
      return deletionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionFailure(_DeletionFailure value),
    TResult deletionSuccess(_DeletionSuccess value),
    @required TResult orElse(),
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

/// @nodoc
abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(
          _DeletionSuccess value, $Res Function(_DeletionSuccess) then) =
      __$DeletionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletionSuccessCopyWithImpl<$Res>
    extends _$TagManagementActorStateCopyWithImpl<$Res>
    implements _$DeletionSuccessCopyWith<$Res> {
  __$DeletionSuccessCopyWithImpl(
      _DeletionSuccess _value, $Res Function(_DeletionSuccess) _then)
      : super(_value, (v) => _then(v as _DeletionSuccess));

  @override
  _DeletionSuccess get _value => super._value as _DeletionSuccess;
}

/// @nodoc
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
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult deletionFailure(Failure<dynamic> failure),
    @required TResult deletionSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult deletionFailure(Failure<dynamic> failure),
    TResult deletionSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult deletionFailure(_DeletionFailure value),
    @required TResult deletionSuccess(_DeletionSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deletionFailure != null);
    assert(deletionSuccess != null);
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult deletionFailure(_DeletionFailure value),
    TResult deletionSuccess(_DeletionSuccess value),
    @required TResult orElse(),
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
