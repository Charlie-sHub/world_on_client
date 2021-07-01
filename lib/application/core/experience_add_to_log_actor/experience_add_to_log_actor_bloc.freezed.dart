// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'experience_add_to_log_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExperienceAddToLogActorEventTearOff {
  const _$ExperienceAddToLogActorEventTearOff();

  _Initialized initialized(Experience experience, Set<UniqueId> experiencesToDoIds) {
    return _Initialized(
      experience,
      experiencesToDoIds,
    );
  }

  _AddedExperienceToLog addedExperienceToLog(Experience experience) {
    return _AddedExperienceToLog(
      experience,
    );
  }

  _DismissedExperienceFromLog dismissedExperienceFromLog(Experience experience) {
    return _DismissedExperienceFromLog(
      experience,
    );
  }
}

/// @nodoc
const $ExperienceAddToLogActorEvent = _$ExperienceAddToLogActorEventTearOff();

/// @nodoc
mixin _$ExperienceAddToLogActorEvent {
  Experience get experience => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds) initialized,
    required TResult Function(Experience experience) addedExperienceToLog,
    required TResult Function(Experience experience) dismissedExperienceFromLog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds)? initialized,
    TResult Function(Experience experience)? addedExperienceToLog,
    TResult Function(Experience experience)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExperienceAddToLogActorEventCopyWith<ExperienceAddToLogActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory $ExperienceAddToLogActorEventCopyWith(
          ExperienceAddToLogActorEvent value, $Res Function(ExperienceAddToLogActorEvent) then) =
      _$ExperienceAddToLogActorEventCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  _$ExperienceAddToLogActorEventCopyWithImpl(this._value, this._then);

  final ExperienceAddToLogActorEvent _value;
  // ignore: unused_field
  final $Res Function(ExperienceAddToLogActorEvent) _then;

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
abstract class _$InitializedCopyWith<$Res> implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience, Set<UniqueId> experiencesToDoIds});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? experience = freezed,
    Object? experiencesToDoIds = freezed,
  }) {
    return _then(_Initialized(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
      experiencesToDoIds == freezed
          ? _value.experiencesToDoIds
          : experiencesToDoIds // ignore: cast_nullable_to_non_nullable
              as Set<UniqueId>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience, this.experiencesToDoIds);

  @override
  final Experience experience;
  @override
  final Set<UniqueId> experiencesToDoIds;

  @override
  String toString() {
    return 'ExperienceAddToLogActorEvent.initialized(experience: $experience, experiencesToDoIds: $experiencesToDoIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)) &&
            (identical(other.experiencesToDoIds, experiencesToDoIds) ||
                const DeepCollectionEquality()
                    .equals(other.experiencesToDoIds, experiencesToDoIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(experience) ^
      const DeepCollectionEquality().hash(experiencesToDoIds);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds) initialized,
    required TResult Function(Experience experience) addedExperienceToLog,
    required TResult Function(Experience experience) dismissedExperienceFromLog,
  }) {
    return initialized(experience, experiencesToDoIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds)? initialized,
    TResult Function(Experience experience)? addedExperienceToLog,
    TResult Function(Experience experience)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(experience, experiencesToDoIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ExperienceAddToLogActorEvent {
  const factory _Initialized(Experience experience, Set<UniqueId> experiencesToDoIds) =
      _$_Initialized;

  @override
  Experience get experience => throw _privateConstructorUsedError;

  Set<UniqueId> get experiencesToDoIds => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddedExperienceToLogCopyWith<$Res>
    implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory _$AddedExperienceToLogCopyWith(
          _AddedExperienceToLog value, $Res Function(_AddedExperienceToLog) then) =
      __$AddedExperienceToLogCopyWithImpl<$Res>;

  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$AddedExperienceToLogCopyWithImpl<$Res>
    extends _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements _$AddedExperienceToLogCopyWith<$Res> {
  __$AddedExperienceToLogCopyWithImpl(
      _AddedExperienceToLog _value, $Res Function(_AddedExperienceToLog) _then)
      : super(_value, (v) => _then(v as _AddedExperienceToLog));

  @override
  _AddedExperienceToLog get _value => super._value as _AddedExperienceToLog;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_AddedExperienceToLog(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc

class _$_AddedExperienceToLog implements _AddedExperienceToLog {
  const _$_AddedExperienceToLog(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceAddToLogActorEvent.addedExperienceToLog(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedExperienceToLog &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith =>
      __$AddedExperienceToLogCopyWithImpl<_AddedExperienceToLog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds) initialized,
    required TResult Function(Experience experience) addedExperienceToLog,
    required TResult Function(Experience experience) dismissedExperienceFromLog,
  }) {
    return addedExperienceToLog(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds)? initialized,
    TResult Function(Experience experience)? addedExperienceToLog,
    TResult Function(Experience experience)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) {
    return addedExperienceToLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (addedExperienceToLog != null) {
      return addedExperienceToLog(this);
    }
    return orElse();
  }
}

abstract class _AddedExperienceToLog implements ExperienceAddToLogActorEvent {
  const factory _AddedExperienceToLog(Experience experience) = _$_AddedExperienceToLog;

  @override
  Experience get experience => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$AddedExperienceToLogCopyWith<_AddedExperienceToLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissedExperienceFromLogCopyWith<$Res>
    implements $ExperienceAddToLogActorEventCopyWith<$Res> {
  factory _$DismissedExperienceFromLogCopyWith(
          _DismissedExperienceFromLog value, $Res Function(_DismissedExperienceFromLog) then) =
      __$DismissedExperienceFromLogCopyWithImpl<$Res>;
  @override
  $Res call({Experience experience});

  @override
  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$DismissedExperienceFromLogCopyWithImpl<$Res>
    extends _$ExperienceAddToLogActorEventCopyWithImpl<$Res>
    implements _$DismissedExperienceFromLogCopyWith<$Res> {
  __$DismissedExperienceFromLogCopyWithImpl(
      _DismissedExperienceFromLog _value, $Res Function(_DismissedExperienceFromLog) _then)
      : super(_value, (v) => _then(v as _DismissedExperienceFromLog));

  @override
  _DismissedExperienceFromLog get _value => super._value as _DismissedExperienceFromLog;

  @override
  $Res call({
    Object? experience = freezed,
  }) {
    return _then(_DismissedExperienceFromLog(
      experience == freezed
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience,
    ));
  }
}

/// @nodoc

class _$_DismissedExperienceFromLog implements _DismissedExperienceFromLog {
  const _$_DismissedExperienceFromLog(this.experience);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'ExperienceAddToLogActorEvent.dismissedExperienceFromLog(experience: $experience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DismissedExperienceFromLog &&
            (identical(other.experience, experience) ||
                const DeepCollectionEquality().equals(other.experience, experience)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(experience);

  @JsonKey(ignore: true)
  @override
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog> get copyWith =>
      __$DismissedExperienceFromLogCopyWithImpl<_DismissedExperienceFromLog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds) initialized,
    required TResult Function(Experience experience) addedExperienceToLog,
    required TResult Function(Experience experience) dismissedExperienceFromLog,
  }) {
    return dismissedExperienceFromLog(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experience experience, Set<UniqueId> experiencesToDoIds)? initialized,
    TResult Function(Experience experience)? addedExperienceToLog,
    TResult Function(Experience experience)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(experience);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedExperienceToLog value) addedExperienceToLog,
    required TResult Function(_DismissedExperienceFromLog value) dismissedExperienceFromLog,
  }) {
    return dismissedExperienceFromLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedExperienceToLog value)? addedExperienceToLog,
    TResult Function(_DismissedExperienceFromLog value)? dismissedExperienceFromLog,
    required TResult orElse(),
  }) {
    if (dismissedExperienceFromLog != null) {
      return dismissedExperienceFromLog(this);
    }
    return orElse();
  }
}

abstract class _DismissedExperienceFromLog implements ExperienceAddToLogActorEvent {
  const factory _DismissedExperienceFromLog(Experience experience) = _$_DismissedExperienceFromLog;

  @override
  Experience get experience => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$DismissedExperienceFromLogCopyWith<_DismissedExperienceFromLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ExperienceAddToLogActorStateTearOff {
  const _$ExperienceAddToLogActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _InLog inLog() {
    return const _InLog();
  }

  _NotInLog notInLog() {
    return const _NotInLog();
  }

  _AdditionSuccess additionSuccess() {
    return const _AdditionSuccess();
  }

  _AdditionFailure additionFailure(Failure<dynamic> failure) {
    return _AdditionFailure(
      failure,
    );
  }

  _DismissalSuccess dismissalSuccess() {
    return const _DismissalSuccess();
  }

  _DismissalFailure dismissalFailure(Failure<dynamic> failure) {
    return _DismissalFailure(
      failure,
    );
  }
}

/// @nodoc
const $ExperienceAddToLogActorState = _$ExperienceAddToLogActorStateTearOff();

/// @nodoc
mixin _$ExperienceAddToLogActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceAddToLogActorStateCopyWith<$Res> {
  factory $ExperienceAddToLogActorStateCopyWith(
          ExperienceAddToLogActorState value, $Res Function(ExperienceAddToLogActorState) then) =
      _$ExperienceAddToLogActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    implements $ExperienceAddToLogActorStateCopyWith<$Res> {
  _$ExperienceAddToLogActorStateCopyWithImpl(this._value, this._then);

  final ExperienceAddToLogActorState _value;
  // ignore: unused_field
  final $Res Function(ExperienceAddToLogActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
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
    return 'ExperienceAddToLogActorState.initial()';
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
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
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
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperienceAddToLogActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
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
    return 'ExperienceAddToLogActorState.actionInProgress()';
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
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
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
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ExperienceAddToLogActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$InLogCopyWith<$Res> {
  factory _$InLogCopyWith(_InLog value, $Res Function(_InLog) then) = __$InLogCopyWithImpl<$Res>;
}

/// @nodoc
class __$InLogCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
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
    return 'ExperienceAddToLogActorState.inLog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InLog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return inLog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (inLog != null) {
      return inLog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return inLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (inLog != null) {
      return inLog(this);
    }
    return orElse();
  }
}

abstract class _InLog implements ExperienceAddToLogActorState {
  const factory _InLog() = _$_InLog;
}

/// @nodoc
abstract class _$NotInLogCopyWith<$Res> {
  factory _$NotInLogCopyWith(_NotInLog value, $Res Function(_NotInLog) then) =
      __$NotInLogCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotInLogCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
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
    return 'ExperienceAddToLogActorState.notInLog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotInLog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return notInLog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (notInLog != null) {
      return notInLog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return notInLog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (notInLog != null) {
      return notInLog(this);
    }
    return orElse();
  }
}

abstract class _NotInLog implements ExperienceAddToLogActorState {
  const factory _NotInLog() = _$_NotInLog;
}

/// @nodoc
abstract class _$AdditionSuccessCopyWith<$Res> {
  factory _$AdditionSuccessCopyWith(_AdditionSuccess value, $Res Function(_AdditionSuccess) then) =
      __$AdditionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$AdditionSuccessCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    implements _$AdditionSuccessCopyWith<$Res> {
  __$AdditionSuccessCopyWithImpl(_AdditionSuccess _value, $Res Function(_AdditionSuccess) _then)
      : super(_value, (v) => _then(v as _AdditionSuccess));

  @override
  _AdditionSuccess get _value => super._value as _AdditionSuccess;
}

/// @nodoc

class _$_AdditionSuccess implements _AdditionSuccess {
  const _$_AdditionSuccess();

  @override
  String toString() {
    return 'ExperienceAddToLogActorState.additionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdditionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return additionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (additionSuccess != null) {
      return additionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return additionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (additionSuccess != null) {
      return additionSuccess(this);
    }
    return orElse();
  }
}

abstract class _AdditionSuccess implements ExperienceAddToLogActorState {
  const factory _AdditionSuccess() = _$_AdditionSuccess;
}

/// @nodoc
abstract class _$AdditionFailureCopyWith<$Res> {
  factory _$AdditionFailureCopyWith(_AdditionFailure value, $Res Function(_AdditionFailure) then) =
      __$AdditionFailureCopyWithImpl<$Res>;

  $Res call({Failure<dynamic> failure});

  $FailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$AdditionFailureCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    implements _$AdditionFailureCopyWith<$Res> {
  __$AdditionFailureCopyWithImpl(_AdditionFailure _value, $Res Function(_AdditionFailure) _then)
      : super(_value, (v) => _then(v as _AdditionFailure));

  @override
  _AdditionFailure get _value => super._value as _AdditionFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_AdditionFailure(
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

class _$_AdditionFailure implements _AdditionFailure {
  const _$_AdditionFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceAddToLogActorState.additionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdditionFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith =>
      __$AdditionFailureCopyWithImpl<_AdditionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return additionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (additionFailure != null) {
      return additionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return additionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (additionFailure != null) {
      return additionFailure(this);
    }
    return orElse();
  }
}

abstract class _AdditionFailure implements ExperienceAddToLogActorState {
  const factory _AdditionFailure(Failure<dynamic> failure) = _$_AdditionFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$AdditionFailureCopyWith<_AdditionFailure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DismissalSuccessCopyWith<$Res> {
  factory _$DismissalSuccessCopyWith(
          _DismissalSuccess value, $Res Function(_DismissalSuccess) then) =
      __$DismissalSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DismissalSuccessCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    implements _$DismissalSuccessCopyWith<$Res> {
  __$DismissalSuccessCopyWithImpl(_DismissalSuccess _value, $Res Function(_DismissalSuccess) _then)
      : super(_value, (v) => _then(v as _DismissalSuccess));

  @override
  _DismissalSuccess get _value => super._value as _DismissalSuccess;
}

/// @nodoc

class _$_DismissalSuccess implements _DismissalSuccess {
  const _$_DismissalSuccess();

  @override
  String toString() {
    return 'ExperienceAddToLogActorState.dismissalSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DismissalSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return dismissalSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (dismissalSuccess != null) {
      return dismissalSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return dismissalSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (dismissalSuccess != null) {
      return dismissalSuccess(this);
    }
    return orElse();
  }
}

abstract class _DismissalSuccess implements ExperienceAddToLogActorState {
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
class __$DismissalFailureCopyWithImpl<$Res> extends _$ExperienceAddToLogActorStateCopyWithImpl<$Res>
    implements _$DismissalFailureCopyWith<$Res> {
  __$DismissalFailureCopyWithImpl(_DismissalFailure _value, $Res Function(_DismissalFailure) _then)
      : super(_value, (v) => _then(v as _DismissalFailure));

  @override
  _DismissalFailure get _value => super._value as _DismissalFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_DismissalFailure(
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

class _$_DismissalFailure implements _DismissalFailure {
  const _$_DismissalFailure(this.failure);

  @override
  final Failure<dynamic> failure;

  @override
  String toString() {
    return 'ExperienceAddToLogActorState.dismissalFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DismissalFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith =>
      __$DismissalFailureCopyWithImpl<_DismissalFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() inLog,
    required TResult Function() notInLog,
    required TResult Function() additionSuccess,
    required TResult Function(Failure<dynamic> failure) additionFailure,
    required TResult Function() dismissalSuccess,
    required TResult Function(Failure<dynamic> failure) dismissalFailure,
  }) {
    return dismissalFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? inLog,
    TResult Function()? notInLog,
    TResult Function()? additionSuccess,
    TResult Function(Failure<dynamic> failure)? additionFailure,
    TResult Function()? dismissalSuccess,
    TResult Function(Failure<dynamic> failure)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (dismissalFailure != null) {
      return dismissalFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_InLog value) inLog,
    required TResult Function(_NotInLog value) notInLog,
    required TResult Function(_AdditionSuccess value) additionSuccess,
    required TResult Function(_AdditionFailure value) additionFailure,
    required TResult Function(_DismissalSuccess value) dismissalSuccess,
    required TResult Function(_DismissalFailure value) dismissalFailure,
  }) {
    return dismissalFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_InLog value)? inLog,
    TResult Function(_NotInLog value)? notInLog,
    TResult Function(_AdditionSuccess value)? additionSuccess,
    TResult Function(_AdditionFailure value)? additionFailure,
    TResult Function(_DismissalSuccess value)? dismissalSuccess,
    TResult Function(_DismissalFailure value)? dismissalFailure,
    required TResult orElse(),
  }) {
    if (dismissalFailure != null) {
      return dismissalFailure(this);
    }
    return orElse();
  }
}

abstract class _DismissalFailure implements ExperienceAddToLogActorState {
  const factory _DismissalFailure(Failure<dynamic> failure) = _$_DismissalFailure;

  Failure<dynamic> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$DismissalFailureCopyWith<_DismissalFailure> get copyWith => throw _privateConstructorUsedError;
}
