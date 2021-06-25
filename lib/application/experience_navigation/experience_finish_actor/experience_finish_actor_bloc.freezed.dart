// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_finish_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceFinishActorEventTearOff {
  const _$ExperienceFinishActorEventTearOff();

  _FinishedExperience finishedExperience(Experience experience) {
    return _FinishedExperience(
      experience,
    );
  }
}

/// @nodoc
const $ExperienceFinishActorEvent = _$ExperienceFinishActorEventTearOff();

/// @nodoc
mixin _$ExperienceFinishActorEvent {
  Experience get experience => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) finishedExperience,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? finishedExperience,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishedExperience value) finishedExperience,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishedExperience value)? finishedExperience,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceFinishActorEventCopyWith<ExperienceFinishActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceFinishActorEventCopyWith<$Res> {
  factory $ExperienceFinishActorEventCopyWith(
          ExperienceFinishActorEvent value, $Res Function(ExperienceFinishActorEvent) then) =
      _$ExperienceFinishActorEventCopyWithImpl<$Res>;

  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceFinishActorEventCopyWithImpl<$Res>
    implements $ExperienceFinishActorEventCopyWith<$Res> {
  _$ExperienceFinishActorEventCopyWithImpl(this._value, this._then);

  final ExperienceFinishActorEvent _value;

  // ignore: unused_field
  final $Res Function(ExperienceFinishActorEvent) _then;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience: experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

/// @nodoc
abstract class _$FinishedExperienceCopyWith<$Res>
    implements $ExperienceFinishActorEventCopyWith<$Res> {
  factory _$FinishedExperienceCopyWith(
          _FinishedExperience value, $Res Function(_FinishedExperience) then) =
      __$FinishedExperienceCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$FinishedExperienceCopyWithImpl<$Res> extends _$ExperienceFinishActorEventCopyWithImpl<$Res>
    implements _$FinishedExperienceCopyWith<$Res> {
  __$FinishedExperienceCopyWithImpl(
      _FinishedExperience _value, $Res Function(_FinishedExperience) _then)
      : super(_value, (v) => _then(v as _FinishedExperience));

  @override
  _FinishedExperience get _value => super._value as _FinishedExperience;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_FinishedExperience(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc

class _$_FinishedExperience implements _FinishedExperience {
  const _$_FinishedExperience(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceFinishActorEvent.finishedExperience(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishedExperience &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$FinishedExperienceCopyWith<_FinishedExperience> get copyWith =>
      __$FinishedExperienceCopyWithImpl<_FinishedExperience>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience) finishedExperience,
  }) {
    return finishedExperience(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience)? finishedExperience,
    required TResult orElse(),
  }) {
    if (finishedExperience != null) {
      return finishedExperience(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FinishedExperience value) finishedExperience,
  }) {
    return finishedExperience(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FinishedExperience value)? finishedExperience,
    required TResult orElse(),
  }) {
    if (finishedExperience != null) {
      return finishedExperience(this);
    }
    return orElse();
  }
}

abstract class _FinishedExperience implements ExperienceFinishActorEvent {
  const factory _FinishedExperience(Experience experience) = _$_FinishedExperience;

  @override
  Experience get experience => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$FinishedExperienceCopyWith<_FinishedExperience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceFinishActorStateTearOff {
  const _$ExperienceFinishActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _FinishSuccess finishSuccess(int amountXP, {required bool leveledUp}) {
    return _FinishSuccess(
      amountXP,
      leveledUp: leveledUp,
    );
  }

  _FinishFailure finishFailure(Failure<dynamic> failure) {
    return _FinishFailure(
      failure,
    );
  }
}

/// @nodoc
const $ExperienceFinishActorState = _$ExperienceFinishActorStateTearOff();

/// @nodoc
mixin _$ExperienceFinishActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(int amountXP, bool leveledUp) finishSuccess,
    required TResult Function(Failure<dynamic> failure) finishFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(int amountXP, bool leveledUp)? finishSuccess,
    TResult Function(Failure<dynamic> failure)? finishFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_FinishFailure value) finishFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_FinishFailure value)? finishFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceFinishActorStateCopyWith<$Res> {
  factory $ExperienceFinishActorStateCopyWith(
          ExperienceFinishActorState value, $Res Function(ExperienceFinishActorState) then) =
      _$ExperienceFinishActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceFinishActorStateCopyWithImpl<$Res>
    implements $ExperienceFinishActorStateCopyWith<$Res> {
  _$ExperienceFinishActorStateCopyWithImpl(this._value, this._then);

  final ExperienceFinishActorState _value;

  // ignore: unused_field
  final $Res Function(ExperienceFinishActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res>
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
    return 'ExperienceFinishActorState.initial()';
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
    required TResult Function(int amountXP, bool leveledUp) finishSuccess,
    required TResult Function(Failure<dynamic> failure) finishFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(int amountXP, bool leveledUp)? finishSuccess,
    TResult Function(Failure<dynamic> failure)? finishFailure,
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
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_FinishFailure value) finishFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_FinishFailure value)? finishFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceFinishActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(_ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ExperienceFinishActorState.actionInProgress()';
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
    required TResult Function(int amountXP, bool leveledUp) finishSuccess,
    required TResult Function(Failure<dynamic> failure) finishFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(int amountXP, bool leveledUp)? finishSuccess,
    TResult Function(Failure<dynamic> failure)? finishFailure,
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
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_FinishFailure value) finishFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_FinishFailure value)? finishFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceFinishActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$FinishSuccessCopyWith<$Res> {
  factory _$FinishSuccessCopyWith(_FinishSuccess value, $Res Function(_FinishSuccess) then) =
      __$FinishSuccessCopyWithImpl<$Res>;

  $Res call({int amountXP, bool leveledUp});
}

/// @nodoc
class __$FinishSuccessCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res>
    implements _$FinishSuccessCopyWith<$Res> {
  __$FinishSuccessCopyWithImpl(_FinishSuccess _value, $Res Function(_FinishSuccess) _then)
      : super(_value, (v) => _then(v as _FinishSuccess));

  @override
  _FinishSuccess get _value => super._value as _FinishSuccess;

  @override
  $Res call({
    Object? amountXP = freezed,
    Object? leveledUp = freezed,
  }) {
    return _then(_FinishSuccess(
      amountXP == freezed
          ? _value.amountXP
          : amountXP // ignore: cast_nullable_to_non_nullable
              as int,
      leveledUp: leveledUp == freezed
          ? _value.leveledUp
          : leveledUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FinishSuccess implements _FinishSuccess {
  const _$_FinishSuccess(this.amountXP, {required this.leveledUp});

  @override
  final int amountXP;
  @override
  final bool leveledUp;

  @override
  String toString() {
    return 'ExperienceFinishActorState.finishSuccess(amountXP: $amountXP, leveledUp: $leveledUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishSuccess &&
            (identical(other.amountXP, amountXP) ||
                const DeepCollectionEquality().equals(other.amountXP, amountXP)) &&
            (identical(other.leveledUp, leveledUp) ||
                const DeepCollectionEquality().equals(other.leveledUp, leveledUp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(amountXP) ^
      const DeepCollectionEquality().hash(leveledUp);

  @JsonKey(ignore: true)
  @override
  _$FinishSuccessCopyWith<_FinishSuccess> get copyWith =>
      __$FinishSuccessCopyWithImpl<_FinishSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(int amountXP, bool leveledUp) finishSuccess,
    required TResult Function(Failure<dynamic> failure) finishFailure,
  }) {
    return finishSuccess(amountXP, leveledUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(int amountXP, bool leveledUp)? finishSuccess,
    TResult Function(Failure<dynamic> failure)? finishFailure,
    required TResult orElse(),
  }) {
    if (finishSuccess != null) {
      return finishSuccess(amountXP, leveledUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_FinishFailure value) finishFailure,
  }) {
    return finishSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_FinishFailure value)? finishFailure,
    required TResult orElse(),
  }) {
    if (finishSuccess != null) {
      return finishSuccess(this);
    }
    return orElse();
  }
}

abstract class _FinishSuccess implements ExperienceFinishActorState {
  const factory _FinishSuccess(int amountXP, {required bool leveledUp}) = _$_FinishSuccess;

  int get amountXP => throw _privateConstructorUsedError;

  bool get leveledUp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$FinishSuccessCopyWith<_FinishSuccess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FinishFailureCopyWith<$Res> {
  factory _$FinishFailureCopyWith(_FinishFailure value, $Res Function(_FinishFailure) then) =
      __$FinishFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$FinishFailureCopyWithImpl<$Res> extends _$ExperienceFinishActorStateCopyWithImpl<$Res>
    implements _$FinishFailureCopyWith<$Res> {
  __$FinishFailureCopyWithImpl(_FinishFailure _value, $Res Function(_FinishFailure) _then)
      : super(_value, (v) => _then(v as _FinishFailure));

  @override
  _FinishFailure get _value => super._value as _FinishFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_FinishFailure(
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

class _$_FinishFailure implements _FinishFailure {
  const _$_FinishFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceFinishActorState.finishFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FinishFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FinishFailureCopyWith<_FinishFailure> get copyWith =>
      __$FinishFailureCopyWithImpl<_FinishFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(int amountXP, bool leveledUp) finishSuccess,
    required TResult Function(Failure<dynamic> failure) finishFailure,
  }) {
    return finishFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(int amountXP, bool leveledUp)? finishSuccess,
    TResult Function(Failure<dynamic> failure)? finishFailure,
    required TResult orElse(),
  }) {
    if (finishFailure != null) {
      return finishFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_FinishSuccess value) finishSuccess,
    required TResult Function(_FinishFailure value) finishFailure,
  }) {
    return finishFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_FinishSuccess value)? finishSuccess,
    TResult Function(_FinishFailure value)? finishFailure,
    required TResult orElse(),
  }) {
    if (finishFailure != null) {
      return finishFailure(this);
    }
    return orElse();
  }
}

abstract class _FinishFailure implements ExperienceFinishActorState {
  const factory _FinishFailure(Failure<dynamic> failure) = _$_FinishFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$FinishFailureCopyWith<_FinishFailure> get copyWith => throw _privateConstructorUsedError;
}
