// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'experience_card_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExperienceCardActorEventTearOff {
  const _$ExperienceCardActorEventTearOff();

// ignore: unused_element
  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }

// ignore: unused_element
  _AddedExperienceToLog addedExperienceToLog(Experience experience) {
    return _AddedExperienceToLog(
      experience,
    );
  }

// ignore: unused_element
  _DismissedExperienceFromLog dismissedExperienceFromLog(
      Experience experience) {
    return _DismissedExperienceFromLog(
      experience,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ExperienceCardActorEvent = _$ExperienceCardActorEventTearOff();

/// @nodoc
mixin _$ExperienceCardActorEvent {
  Experience get experience;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult addedExperienceToLog(Experience experience),
    @required TResult dismissedExperienceFromLog(Experience experience),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult addedExperienceToLog(Experience experience),
    TResult dismissedExperienceFromLog(Experience experience),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedExperienceToLog(_AddedExperienceToLog value),
    @required
        TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedExperienceToLog(_AddedExperienceToLog value),
    TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ExperienceCardActorEventCopyWith<ExperienceCardActorEvent> get copyWith;
}

/// @nodoc
abstract class $ExperienceCardActorEventCopyWith<$Res> {
  factory $ExperienceCardActorEventCopyWith(ExperienceCardActorEvent value,
          $Res Function(ExperienceCardActorEvent) then) =
      _$ExperienceCardActorEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceCardActorEventCopyWithImpl<$Res>
    implements $ExperienceCardActorEventCopyWith<$Res> {
  _$ExperienceCardActorEventCopyWithImpl(this._value, this._then);

  final ExperienceCardActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceCardActorEvent) _then;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_value.copyWith(
      experience:
          experience == freezed ? _value.experience : experience as Experience,
    ));
  }

  @override
  $ExperienceCopyWith<$Res> get experience {
    if (_value.experience == null) {
      return null;
    }
    return $ExperienceCopyWith<$Res>(_value.experience, (value) {
      return _then(_value.copyWith(experience: value));
    });
  }
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res>
    implements $ExperienceCardActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ExperienceCardActorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_Initialized(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardActorEvent.initialized(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult addedExperienceToLog(Experience experience),
    @required TResult dismissedExperienceFromLog(Experience experience),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult addedExperienceToLog(Experience experience),
    TResult dismissedExperienceFromLog(Experience experience),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedExperienceToLog(_AddedExperienceToLog value),
    @required
        TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedExperienceToLog(_AddedExperienceToLog value),
    TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceCardActorEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  @override
  Experience get experience;
  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$AddedExperienceToLogCopyWith<$Res>
    implements $ExperienceCardActorEventCopyWith<$Res> {
  factory _$AddedExperienceToLogCopyWith(_AddedExperienceToLog value,
          $Res Function(_AddedExperienceToLog) then) =
      __$AddedExperienceToLogCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$AddedExperienceToLogCopyWithImpl<$Res>
    extends _$ExperienceCardActorEventCopyWithImpl<$Res>
    implements _$AddedExperienceToLogCopyWith<$Res> {
  __$AddedExperienceToLogCopyWithImpl(
      _AddedExperienceToLog _value, $Res Function(_AddedExperienceToLog) _then)
      : super(_value, (v) => _then(v as _AddedExperienceToLog));

  @override
  _AddedExperienceToLog get _value => super._value as _AddedExperienceToLog;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_AddedExperienceToLog(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

/// @nodoc
class _$_AddedExperienceToLog implements _AddedExperienceToLog {
  const _$_AddedExperienceToLog(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardActorEvent.addedExperienceToLog(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedExperienceToLog &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith =>
      __$AddedExperienceToLogCopyWithImpl<_AddedExperienceToLog>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult addedExperienceToLog(Experience experience),
    @required TResult dismissedExperienceFromLog(Experience experience),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return addedExperienceToLog(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult addedExperienceToLog(Experience experience),
    TResult dismissedExperienceFromLog(Experience experience),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedExperienceToLog(_AddedExperienceToLog value),
    @required
        TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return addedExperienceToLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedExperienceToLog(_AddedExperienceToLog value),
    TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(this);
    }
    return orElse();
  }
}

abstract class _AddedExperienceToLog implements ExperienceCardActorEvent {
  const factory _AddedExperienceToLog(Experience experience) =
      _$_AddedExperienceToLog;

  @override
  Experience get experience;
  @override
  @JsonKey(ignore: true)
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith;
}

/// @nodoc
abstract class _$DismissedExperienceFromLogCopyWith<$Res>
    implements $ExperienceCardActorEventCopyWith<$Res> {
  factory _$DismissedExperienceFromLogCopyWith(
          _DismissedExperienceFromLog value,
          $Res Function(_DismissedExperienceFromLog) then) =
      __$DismissedExperienceFromLogCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$DismissedExperienceFromLogCopyWithImpl<$Res>
    extends _$ExperienceCardActorEventCopyWithImpl<$Res>
    implements _$DismissedExperienceFromLogCopyWith<$Res> {
  __$DismissedExperienceFromLogCopyWithImpl(_DismissedExperienceFromLog _value,
      $Res Function(_DismissedExperienceFromLog) _then)
      : super(_value, (v) => _then(v as _DismissedExperienceFromLog));

  @override
  _DismissedExperienceFromLog get _value =>
      super._value as _DismissedExperienceFromLog;

  @override
  $Res call({
    Object experience = freezed,
  }) {
    return _then(_DismissedExperienceFromLog(
      experience == freezed ? _value.experience : experience as Experience,
    ));
  }
}

/// @nodoc
class _$_DismissedExperienceFromLog implements _DismissedExperienceFromLog {
  const _$_DismissedExperienceFromLog(this.experience)
      : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceCardActorEvent.dismissedExperienceFromLog(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DismissedExperienceFromLog &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality()
                    .equals(other.experience, experience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog>
      get copyWith => __$DismissedExperienceFromLogCopyWithImpl<
          _DismissedExperienceFromLog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required TResult addedExperienceToLog(Experience experience),
    @required TResult dismissedExperienceFromLog(Experience experience),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return dismissedExperienceFromLog(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult addedExperienceToLog(Experience experience),
    TResult dismissedExperienceFromLog(Experience experience),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult addedExperienceToLog(_AddedExperienceToLog value),
    @required
        TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
  }) {
    assert(initialized != null);
    assert(addedExperienceToLog != null);
    assert(dismissedExperienceFromLog != null);
    return dismissedExperienceFromLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult addedExperienceToLog(_AddedExperienceToLog value),
    TResult dismissedExperienceFromLog(_DismissedExperienceFromLog value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(this);
    }
    return orElse();
  }
}

abstract class _DismissedExperienceFromLog implements ExperienceCardActorEvent {
  const factory _DismissedExperienceFromLog(Experience experience) =
      _$_DismissedExperienceFromLog;

  @override
  Experience get experience;
  @override
  @JsonKey(ignore: true)
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog>
      get copyWith;
}

/// @nodoc
class _$ExperienceCardActorStateTearOff {
  const _$ExperienceCardActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _InLog inLog() {
    return const _InLog();
  }

// ignore: unused_element
  _NotInLog notInLog() {
    return const _NotInLog();
  }

// ignore: unused_element
  _AdditionSuccess additionSuccess() {
    return const _AdditionSuccess();
  }

// ignore: unused_element
  _AdditionFailure additionFailure(Failure<dynamic> failure) {
    return _AdditionFailure(
      failure,
    );
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
const $ExperienceCardActorState = _$ExperienceCardActorStateTearOff();

/// @nodoc
mixin _$ExperienceCardActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ExperienceCardActorStateCopyWith<$Res> {
  factory $ExperienceCardActorStateCopyWith(ExperienceCardActorState value,
          $Res Function(ExperienceCardActorState) then) =
      _$ExperienceCardActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceCardActorStateCopyWithImpl<$Res>
    implements $ExperienceCardActorStateCopyWith<$Res> {
  _$ExperienceCardActorStateCopyWithImpl(this._value, this._then);

  final ExperienceCardActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceCardActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
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
    return 'ExperienceCardActorState.initial()';
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
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
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
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
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

abstract class _Initial implements ExperienceCardActorState {
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
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
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
    return 'ExperienceCardActorState.actionInProgress()';
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
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
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
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
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

abstract class _ActionInProgress implements ExperienceCardActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$InLogCopyWith<$Res> {
  factory _$InLogCopyWith(_InLog value, $Res Function(_InLog) then) =
      __$InLogCopyWithImpl<$Res>;
}

/// @nodoc
class __$InLogCopyWithImpl<$Res>
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
    implements _$InLogCopyWith<$Res> {
  __$InLogCopyWithImpl(_InLog _value, $Res Function(_InLog) _then)
      : super(_value, (v) => _then(v as _InLog));

  @override
  _InLog get _value => super._value as _InLog;
}

/// @nodoc
class _$_InLog implements _InLog {
  const _$_InLog();

  @override
  String toString() {
    return 'ExperienceCardActorState.inLog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InLog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inLog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inLog != null) {
      return inLog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return inLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (inLog != null) {
      return inLog(this);
    }
    return orElse();
  }
}

abstract class _InLog implements ExperienceCardActorState {
  const factory _InLog() = _$_InLog;
}

/// @nodoc
abstract class _$NotInLogCopyWith<$Res> {
  factory _$NotInLogCopyWith(_NotInLog value, $Res Function(_NotInLog) then) =
      __$NotInLogCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotInLogCopyWithImpl<$Res>
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
    implements _$NotInLogCopyWith<$Res> {
  __$NotInLogCopyWithImpl(_NotInLog _value, $Res Function(_NotInLog) _then)
      : super(_value, (v) => _then(v as _NotInLog));

  @override
  _NotInLog get _value => super._value as _NotInLog;
}

/// @nodoc
class _$_NotInLog implements _NotInLog {
  const _$_NotInLog();

  @override
  String toString() {
    return 'ExperienceCardActorState.notInLog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotInLog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return notInLog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notInLog != null) {
      return notInLog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return notInLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notInLog != null) {
      return notInLog(this);
    }
    return orElse();
  }
}

abstract class _NotInLog implements ExperienceCardActorState {
  const factory _NotInLog() = _$_NotInLog;
}

/// @nodoc
abstract class _$AdditionSuccessCopyWith<$Res> {
  factory _$AdditionSuccessCopyWith(
          _AdditionSuccess value, $Res Function(_AdditionSuccess) then) =
      __$AdditionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AdditionSuccessCopyWithImpl<$Res>
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
    implements _$AdditionSuccessCopyWith<$Res> {
  __$AdditionSuccessCopyWithImpl(
      _AdditionSuccess _value, $Res Function(_AdditionSuccess) _then)
      : super(_value, (v) => _then(v as _AdditionSuccess));

  @override
  _AdditionSuccess get _value => super._value as _AdditionSuccess;
}

/// @nodoc
class _$_AdditionSuccess implements _AdditionSuccess {
  const _$_AdditionSuccess();

  @override
  String toString() {
    return 'ExperienceCardActorState.additionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdditionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (additionSuccess != null) {
      return additionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (additionSuccess != null) {
      return additionSuccess(this);
    }
    return orElse();
  }
}

abstract class _AdditionSuccess implements ExperienceCardActorState {
  const factory _AdditionSuccess() = _$_AdditionSuccess;
}

/// @nodoc
abstract class _$AdditionFailureCopyWith<$Res> {
  factory _$AdditionFailureCopyWith(
          _AdditionFailure value, $Res Function(_AdditionFailure) then) =
      __$AdditionFailureCopyWithImpl<$Res>;
  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$AdditionFailureCopyWithImpl<$Res>
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
    implements _$AdditionFailureCopyWith<$Res> {
  __$AdditionFailureCopyWithImpl(
      _AdditionFailure _value, $Res Function(_AdditionFailure) _then)
      : super(_value, (v) => _then(v as _AdditionFailure));

  @override
  _AdditionFailure get _value => super._value as _AdditionFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_AdditionFailure(
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
class _$_AdditionFailure implements _AdditionFailure {
  const _$_AdditionFailure(this.failure) : assert(failure != null);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceCardActorState.additionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdditionFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith =>
      __$AdditionFailureCopyWithImpl<_AdditionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
    TResult dismissalSuccess(),
    TResult dismissalFailure(Failure<dynamic> failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (additionFailure != null) {
      return additionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return additionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
    TResult dismissalSuccess(_DismissalSuccess value),
    TResult dismissalFailure(_DismissalFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (additionFailure != null) {
      return additionFailure(this);
    }
    return orElse();
  }
}

abstract class _AdditionFailure implements ExperienceCardActorState {
  const factory _AdditionFailure(Failure<dynamic> failure) = _$_AdditionFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith;
}

/// @nodoc
abstract class _$DismissalSuccessCopyWith<$Res> {
  factory _$DismissalSuccessCopyWith(
          _DismissalSuccess value, $Res Function(_DismissalSuccess) then) =
      __$DismissalSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DismissalSuccessCopyWithImpl<$Res>
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
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
    return 'ExperienceCardActorState.dismissalSuccess()';
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
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
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
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
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

abstract class _DismissalSuccess implements ExperienceCardActorState {
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
    extends _$ExperienceCardActorStateCopyWithImpl<$Res>
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
    return 'ExperienceCardActorState.dismissalFailure(failure: $failure)';
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

  @JsonKey(ignore: true)
  @override
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith =>
      __$DismissalFailureCopyWithImpl<_DismissalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required TResult inLog(),
    @required TResult notInLog(),
    @required TResult additionSuccess(),
    @required TResult additionFailure(Failure<dynamic> failure),
    @required TResult dismissalSuccess(),
    @required TResult dismissalFailure(Failure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult inLog(),
    TResult notInLog(),
    TResult additionSuccess(),
    TResult additionFailure(Failure<dynamic> failure),
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
    @required TResult inLog(_InLog value),
    @required TResult notInLog(_NotInLog value),
    @required TResult additionSuccess(_AdditionSuccess value),
    @required TResult additionFailure(_AdditionFailure value),
    @required TResult dismissalSuccess(_DismissalSuccess value),
    @required TResult dismissalFailure(_DismissalFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(inLog != null);
    assert(notInLog != null);
    assert(additionSuccess != null);
    assert(additionFailure != null);
    assert(dismissalSuccess != null);
    assert(dismissalFailure != null);
    return dismissalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult inLog(_InLog value),
    TResult notInLog(_NotInLog value),
    TResult additionSuccess(_AdditionSuccess value),
    TResult additionFailure(_AdditionFailure value),
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

abstract class _DismissalFailure implements ExperienceCardActorState {
  const factory _DismissalFailure(Failure<dynamic> failure) =
      _$_DismissalFailure;

  Failure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith;
}
