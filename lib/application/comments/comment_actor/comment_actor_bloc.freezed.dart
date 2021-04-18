// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentActorEventTearOff {
  const _$CommentActorEventTearOff();

  _Deleted deleted(Comment comment) {
    return _Deleted(
      comment,
    );
  }
}

/// @nodoc
const $CommentActorEvent = _$CommentActorEventTearOff();

/// @nodoc
mixin _$CommentActorEvent {
  Comment get comment => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Comment comment) deleted,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Comment comment)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentActorEventCopyWith<CommentActorEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentActorEventCopyWith<$Res> {
  factory $CommentActorEventCopyWith(CommentActorEvent value, $Res Function(CommentActorEvent) then) = _$CommentActorEventCopyWithImpl<$Res>;
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$CommentActorEventCopyWithImpl<$Res> implements $CommentActorEventCopyWith<$Res> {
  _$CommentActorEventCopyWithImpl(this._value, this._then);

  final CommentActorEvent _value;
  // ignore: unused_field
  final $Res Function(CommentActorEvent) _then;

  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }

  @override
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> implements $CommentActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) = __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Comment comment});

  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$CommentActorEventCopyWithImpl<$Res> implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then) : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_Deleted(
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted(this.comment);

  @override
  final Comment comment;

  @override
  String toString() {
    return 'CommentActorEvent.deleted(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleted && (identical(other.comment, comment) || const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(comment);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith => __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Comment comment) deleted,
  }) {
    return deleted(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Comment comment)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements CommentActorEvent {
  const factory _Deleted(Comment comment) = _$_Deleted;

  @override
  Comment get comment => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentActorStateTearOff {
  const _$CommentActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeletionSuccess deletionSuccess() {
    return const _DeletionSuccess();
  }

  _DeletionFailure deletionFailure(Failure<dynamic> failure) {
    return _DeletionFailure(
      failure,
    );
  }
}

/// @nodoc
const $CommentActorState = _$CommentActorStateTearOff();

/// @nodoc
mixin _$CommentActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentActorStateCopyWith<$Res> {
  factory $CommentActorStateCopyWith(CommentActorState value, $Res Function(CommentActorState) then) = _$CommentActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentActorStateCopyWithImpl<$Res> implements $CommentActorStateCopyWith<$Res> {
  _$CommentActorStateCopyWithImpl(this._value, this._then);

  final CommentActorState _value;
  // ignore: unused_field
  final $Res Function(CommentActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CommentActorStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CommentActorState.initial()';
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
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
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
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommentActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(_ActionInProgress value, $Res Function(_ActionInProgress) then) = __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$CommentActorStateCopyWithImpl<$Res> implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then) : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'CommentActorState.actionInProgress()';
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
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
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
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements CommentActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeletionSuccessCopyWith<$Res> {
  factory _$DeletionSuccessCopyWith(_DeletionSuccess value, $Res Function(_DeletionSuccess) then) = __$DeletionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletionSuccessCopyWithImpl<$Res> extends _$CommentActorStateCopyWithImpl<$Res> implements _$DeletionSuccessCopyWith<$Res> {
  __$DeletionSuccessCopyWithImpl(_DeletionSuccess _value, $Res Function(_DeletionSuccess) _then) : super(_value, (v) => _then(v as _DeletionSuccess));

  @override
  _DeletionSuccess get _value => super._value as _DeletionSuccess;
}

/// @nodoc
class _$_DeletionSuccess implements _DeletionSuccess {
  const _$_DeletionSuccess();

  @override
  String toString() {
    return 'CommentActorState.deletionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return deletionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return deletionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionSuccess != null) {
      return deletionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletionSuccess implements CommentActorState {
  const factory _DeletionSuccess() = _$_DeletionSuccess;
}

/// @nodoc
abstract class _$DeletionFailureCopyWith<$Res> {
  factory _$DeletionFailureCopyWith(_DeletionFailure value, $Res Function(_DeletionFailure) then) = __$DeletionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DeletionFailureCopyWithImpl<$Res> extends _$CommentActorStateCopyWithImpl<$Res> implements _$DeletionFailureCopyWith<$Res> {
  __$DeletionFailureCopyWithImpl(_DeletionFailure _value, $Res Function(_DeletionFailure) _then) : super(_value, (v) => _then(v as _DeletionFailure));

  @override
  _DeletionFailure get _value => super._value as _DeletionFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_DeletionFailure(
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
class _$_DeletionFailure implements _DeletionFailure {
  const _$_DeletionFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'CommentActorState.deletionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeletionFailure && (identical(other.failure, failure) || const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith => __$DeletionFailureCopyWithImpl<_DeletionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletionSuccess,
    required TResult Function(Failure<dynamic> failure) deletionFailure,
  }) {
    return deletionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletionSuccess,
    TResult Function(Failure<dynamic> failure)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletionSuccess value) deletionSuccess,
    required TResult Function(_DeletionFailure value) deletionFailure,
  }) {
    return deletionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletionSuccess value)? deletionSuccess,
    TResult Function(_DeletionFailure value)? deletionFailure,
    required TResult orElse(),
  }) {
    if (deletionFailure != null) {
      return deletionFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletionFailure implements CommentActorState {
  const factory _DeletionFailure(Failure<dynamic> failure) = _$_DeletionFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DeletionFailureCopyWith<_DeletionFailure> get copyWith => throw _privateConstructorUsedError;
}
