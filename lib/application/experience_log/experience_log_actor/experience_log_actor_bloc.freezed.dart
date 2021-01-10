// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_log_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceLogActorEventTearOff {
  const _$ExperienceLogActorEventTearOff();

// ignore: unused_element
  _ExperienceDismissed experienceDismissed(UniqueId experienceId) {
    return _ExperienceDismissed(
      experienceId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceLogActorEvent = _$ExperienceLogActorEventTearOff();

/// @nodoc
mixin _$ExperienceLogActorEvent {
  UniqueId get experienceId;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult experienceDismissed(UniqueId experienceId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult experienceDismissed(UniqueId experienceId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult experienceDismissed(_ExperienceDismissed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult experienceDismissed(_ExperienceDismissed value),
    @required TResult orElse(),
  });

  $ExperienceLogActorEventCopyWith<ExperienceLogActorEvent> get copyWith;
}

/// @nodoc
abstract class $ExperienceLogActorEventCopyWith<$Res> {
  factory $ExperienceLogActorEventCopyWith(ExperienceLogActorEvent value,
          $Res Function(ExperienceLogActorEvent) then) =
      _$ExperienceLogActorEventCopyWithImpl<$Res>;
  $Res call({UniqueId experienceId});
}

/// @nodoc
class _$ExperienceLogActorEventCopyWithImpl<$Res>
    implements $ExperienceLogActorEventCopyWith<$Res> {
  _$ExperienceLogActorEventCopyWithImpl(this._value, this._then);

  final ExperienceLogActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceLogActorEvent) _then;

  @override
  $Res call({
    Object experienceId = freezed,
  }) {
    return _then(_value.copyWith(
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$ExperienceDismissedCopyWith<$Res>
    implements $ExperienceLogActorEventCopyWith<$Res> {
  factory _$ExperienceDismissedCopyWith(_ExperienceDismissed value,
          $Res Function(_ExperienceDismissed) then) =
      __$ExperienceDismissedCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId experienceId});
}

/// @nodoc
class __$ExperienceDismissedCopyWithImpl<$Res>
    extends _$ExperienceLogActorEventCopyWithImpl<$Res>
    implements _$ExperienceDismissedCopyWith<$Res> {
  __$ExperienceDismissedCopyWithImpl(
      _ExperienceDismissed _value, $Res Function(_ExperienceDismissed) _then)
      : super(_value, (v) => _then(v as _ExperienceDismissed));

  @override
  _ExperienceDismissed get _value => super._value as _ExperienceDismissed;

  @override
  $Res call({
    Object experienceId = freezed,
  }) {
    return _then(_ExperienceDismissed(
      experienceId == freezed ? _value.experienceId : experienceId as UniqueId,
    ));
  }
}

/// @nodoc
class _$_ExperienceDismissed implements _ExperienceDismissed {
  const _$_ExperienceDismissed(this.experienceId)
      : assert(experienceId != null);

  @override
  final UniqueId experienceId;

  @override
  String toString() {
    return 'ExperienceLogActorEvent.experienceDismissed(experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperienceDismissed &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality()
                    .equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experienceId);

  @override
  _$ExperienceDismissedCopyWith<_ExperienceDismissed> get copyWith =>
      __$ExperienceDismissedCopyWithImpl<_ExperienceDismissed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult experienceDismissed(UniqueId experienceId),
  }) {
    assert(experienceDismissed != null);
    return experienceDismissed(experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult experienceDismissed(UniqueId experienceId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (experienceDismissed != null) {
      return experienceDismissed(experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult experienceDismissed(_ExperienceDismissed value),
  }) {
    assert(experienceDismissed != null);
    return experienceDismissed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult experienceDismissed(_ExperienceDismissed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (experienceDismissed != null) {
      return experienceDismissed(this);
    }
    return orElse();
  }
}

abstract class _ExperienceDismissed implements ExperienceLogActorEvent {
  const factory _ExperienceDismissed(UniqueId experienceId) =
      _$_ExperienceDismissed;

  @override
  UniqueId get experienceId;
  @override
  _$ExperienceDismissedCopyWith<_ExperienceDismissed> get copyWith;
}

/// @nodoc
class _$ExperienceLogActorStateTearOff {
  const _$ExperienceLogActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DismissalSuccess dismissalSuccess() {
    return const _DismissalSuccess();
  }

// ignore: unused_element
  _DismissalFailure dismissalFailure(Failure<dynamic> failure) {
    return _DismissalFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceLogActorState = _$ExperienceLogActorStateTearOff();

/// @nodoc
mixin _$ExperienceLogActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExperienceLogActorStateCopyWith<$Res> {
  factory $ExperienceLogActorStateCopyWith(ExperienceLogActorState value,
          $Res Function(ExperienceLogActorState) then) =
      _$ExperienceLogActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceLogActorStateCopyWithImpl<$Res>
    implements $ExperienceLogActorStateCopyWith<$Res> {
  _$ExperienceLogActorStateCopyWithImpl(this._value, this._then);

  final ExperienceLogActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceLogActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ExperienceLogActorStateCopyWithImpl<$Res>
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
    return 'ExperienceLogActorState.initial()';
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
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
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
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceLogActorState {
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
    extends _$ExperienceLogActorStateCopyWithImpl<$Res>
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
    return 'ExperienceLogActorState.actionInProgress()';
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
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
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
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceLogActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DismissalSuccessCopyWith<$Res> {
  factory _$DismissalSuccessCopyWith(
          _DismissalSuccess value, $Res Function(_DismissalSuccess) then) =
      __$DismissalSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DismissalSuccessCopyWithImpl<$Res>
    extends _$ExperienceLogActorStateCopyWithImpl<$Res>
    implements _$DismissalSuccessCopyWith<$Res> {
  __$DismissalSuccessCopyWithImpl(
      _DismissalSuccess _value, $Res Function(_DismissalSuccess) _then)
      : super(_value, (v) => _then(v as _DismissalSuccess));

  @override
  _DismissalSuccess get _value => super._value as _DismissalSuccess;
}

/// @nodoc
class _$_DismissalSuccess implements _DismissalSuccess {
  const _$_DismissalSuccess();

  @override
  String toString() {
    return 'ExperienceLogActorState.dismissalSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissalSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissalSuccess != null) {
      return dismissalSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissalSuccess != null) {
      return dismissalSuccess(this);
    }
    return orElse();
  }
}

abstract class _DismissalSuccess implements ExperienceLogActorState {
  const factory _DismissalSuccess() = _$_DismissalSuccess;
}

/// @nodoc
abstract class _$DismissalFailureCopyWith<$Res> {
  factory _$DismissalFailureCopyWith(
          _DismissalFailure value, $Res Function(_DismissalFailure) then) =
      __$DismissalFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$DismissalFailureCopyWithImpl<$Res>
    extends _$ExperienceLogActorStateCopyWithImpl<$Res>
    implements _$DismissalFailureCopyWith<$Res> {
  __$DismissalFailureCopyWithImpl(
      _DismissalFailure _value, $Res Function(_DismissalFailure) _then)
      : super(_value, (v) => _then(v as _DismissalFailure));

  @override
  _DismissalFailure get _value => super._value as _DismissalFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_DismissalFailure(
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
class _$_DismissalFailure implements _DismissalFailure {
  const _$_DismissalFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceLogActorState.dismissalFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DismissalFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith =>
      __$DismissalFailureCopyWithImpl<_DismissalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissalFailure != null) {
      return dismissalFailure(this);
    }
    return orElse();
  }
}

abstract class _DismissalFailure implements ExperienceLogActorState {
  const factory _DismissalFailure(Failure<dynamic> failure) =
      _$_DismissalFailure;

  Failure<dynamic> get failure;
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith;
}
