// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'objectives_tracker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ObjectivesTrackerEventTearOff {
  const _$ObjectivesTrackerEventTearOff();

  _Initialized initialized(ObjectiveList objectiveList, UniqueId experienceId) {
    return _Initialized(
      objectiveList,
      experienceId,
    );
  }

  _ObjectiveAccomplished objectiveAccomplished(Objective objective) {
    return _ObjectiveAccomplished(
      objective,
    );
  }

  _ObjectiveUnaccomplished objectiveUnaccomplished(Objective objective) {
    return _ObjectiveUnaccomplished(
      objective,
    );
  }
}

/// @nodoc
const $ObjectivesTrackerEvent = _$ObjectivesTrackerEventTearOff();

/// @nodoc
mixin _$ObjectivesTrackerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ObjectiveList objectiveList, UniqueId experienceId)
        initialized,
    required TResult Function(Objective objective) objectiveAccomplished,
    required TResult Function(Objective objective) objectiveUnaccomplished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ObjectiveAccomplished value)
        objectiveAccomplished,
    required TResult Function(_ObjectiveUnaccomplished value)
        objectiveUnaccomplished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectivesTrackerEventCopyWith<$Res> {
  factory $ObjectivesTrackerEventCopyWith(ObjectivesTrackerEvent value,
          $Res Function(ObjectivesTrackerEvent) then) =
      _$ObjectivesTrackerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ObjectivesTrackerEventCopyWithImpl<$Res>
    implements $ObjectivesTrackerEventCopyWith<$Res> {
  _$ObjectivesTrackerEventCopyWithImpl(this._value, this._then);

  final ObjectivesTrackerEvent _value;
  // ignore: unused_field
  final $Res Function(ObjectivesTrackerEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({ObjectiveList objectiveList, UniqueId experienceId});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ObjectivesTrackerEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? objectiveList = freezed,
    Object? experienceId = freezed,
  }) {
    return _then(_Initialized(
      objectiveList == freezed
          ? _value.objectiveList
          : objectiveList // ignore: cast_nullable_to_non_nullable
              as ObjectiveList,
      experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.objectiveList, this.experienceId);

  @override
  final ObjectiveList objectiveList;
  @override
  final UniqueId experienceId;

  @override
  String toString() {
    return 'ObjectivesTrackerEvent.initialized(objectiveList: $objectiveList, experienceId: $experienceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.objectiveList, objectiveList) ||
                const DeepCollectionEquality()
                    .equals(other.objectiveList, objectiveList)) &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality()
                    .equals(other.experienceId, experienceId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objectiveList) ^
      const DeepCollectionEquality().hash(experienceId);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ObjectiveList objectiveList, UniqueId experienceId)
        initialized,
    required TResult Function(Objective objective) objectiveAccomplished,
    required TResult Function(Objective objective) objectiveUnaccomplished,
  }) {
    return initialized(objectiveList, experienceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
  }) {
    return initialized?.call(objectiveList, experienceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(objectiveList, experienceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ObjectiveAccomplished value)
        objectiveAccomplished,
    required TResult Function(_ObjectiveUnaccomplished value)
        objectiveUnaccomplished,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ObjectivesTrackerEvent {
  const factory _Initialized(
      ObjectiveList objectiveList, UniqueId experienceId) = _$_Initialized;

  ObjectiveList get objectiveList => throw _privateConstructorUsedError;
  UniqueId get experienceId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ObjectiveAccomplishedCopyWith<$Res> {
  factory _$ObjectiveAccomplishedCopyWith(_ObjectiveAccomplished value,
          $Res Function(_ObjectiveAccomplished) then) =
      __$ObjectiveAccomplishedCopyWithImpl<$Res>;
  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class __$ObjectiveAccomplishedCopyWithImpl<$Res>
    extends _$ObjectivesTrackerEventCopyWithImpl<$Res>
    implements _$ObjectiveAccomplishedCopyWith<$Res> {
  __$ObjectiveAccomplishedCopyWithImpl(_ObjectiveAccomplished _value,
      $Res Function(_ObjectiveAccomplished) _then)
      : super(_value, (v) => _then(v as _ObjectiveAccomplished));

  @override
  _ObjectiveAccomplished get _value => super._value as _ObjectiveAccomplished;

  @override
  $Res call({
    Object? objective = freezed,
  }) {
    return _then(_ObjectiveAccomplished(
      objective == freezed
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as Objective,
    ));
  }

  @override
  $ObjectiveCopyWith<$Res> get objective {
    return $ObjectiveCopyWith<$Res>(_value.objective, (value) {
      return _then(_value.copyWith(objective: value));
    });
  }
}

/// @nodoc

class _$_ObjectiveAccomplished implements _ObjectiveAccomplished {
  const _$_ObjectiveAccomplished(this.objective);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ObjectivesTrackerEvent.objectiveAccomplished(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectiveAccomplished &&
            (identical(other.objective, objective) ||
                const DeepCollectionEquality()
                    .equals(other.objective, objective)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @JsonKey(ignore: true)
  @override
  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith =>
      __$ObjectiveAccomplishedCopyWithImpl<_ObjectiveAccomplished>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ObjectiveList objectiveList, UniqueId experienceId)
        initialized,
    required TResult Function(Objective objective) objectiveAccomplished,
    required TResult Function(Objective objective) objectiveUnaccomplished,
  }) {
    return objectiveAccomplished(objective);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
  }) {
    return objectiveAccomplished?.call(objective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
    required TResult orElse(),
  }) {
    if (objectiveAccomplished != null) {
      return objectiveAccomplished(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ObjectiveAccomplished value)
        objectiveAccomplished,
    required TResult Function(_ObjectiveUnaccomplished value)
        objectiveUnaccomplished,
  }) {
    return objectiveAccomplished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
  }) {
    return objectiveAccomplished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
    required TResult orElse(),
  }) {
    if (objectiveAccomplished != null) {
      return objectiveAccomplished(this);
    }
    return orElse();
  }
}

abstract class _ObjectiveAccomplished implements ObjectivesTrackerEvent {
  const factory _ObjectiveAccomplished(Objective objective) =
      _$_ObjectiveAccomplished;

  Objective get objective => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ObjectiveUnaccomplishedCopyWith<$Res> {
  factory _$ObjectiveUnaccomplishedCopyWith(_ObjectiveUnaccomplished value,
          $Res Function(_ObjectiveUnaccomplished) then) =
      __$ObjectiveUnaccomplishedCopyWithImpl<$Res>;
  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class __$ObjectiveUnaccomplishedCopyWithImpl<$Res>
    extends _$ObjectivesTrackerEventCopyWithImpl<$Res>
    implements _$ObjectiveUnaccomplishedCopyWith<$Res> {
  __$ObjectiveUnaccomplishedCopyWithImpl(_ObjectiveUnaccomplished _value,
      $Res Function(_ObjectiveUnaccomplished) _then)
      : super(_value, (v) => _then(v as _ObjectiveUnaccomplished));

  @override
  _ObjectiveUnaccomplished get _value =>
      super._value as _ObjectiveUnaccomplished;

  @override
  $Res call({
    Object? objective = freezed,
  }) {
    return _then(_ObjectiveUnaccomplished(
      objective == freezed
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as Objective,
    ));
  }

  @override
  $ObjectiveCopyWith<$Res> get objective {
    return $ObjectiveCopyWith<$Res>(_value.objective, (value) {
      return _then(_value.copyWith(objective: value));
    });
  }
}

/// @nodoc

class _$_ObjectiveUnaccomplished implements _ObjectiveUnaccomplished {
  const _$_ObjectiveUnaccomplished(this.objective);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ObjectivesTrackerEvent.objectiveUnaccomplished(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectiveUnaccomplished &&
            (identical(other.objective, objective) ||
                const DeepCollectionEquality()
                    .equals(other.objective, objective)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @JsonKey(ignore: true)
  @override
  _$ObjectiveUnaccomplishedCopyWith<_ObjectiveUnaccomplished> get copyWith =>
      __$ObjectiveUnaccomplishedCopyWithImpl<_ObjectiveUnaccomplished>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ObjectiveList objectiveList, UniqueId experienceId)
        initialized,
    required TResult Function(Objective objective) objectiveAccomplished,
    required TResult Function(Objective objective) objectiveUnaccomplished,
  }) {
    return objectiveUnaccomplished(objective);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
  }) {
    return objectiveUnaccomplished?.call(objective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ObjectiveList objectiveList, UniqueId experienceId)?
        initialized,
    TResult Function(Objective objective)? objectiveAccomplished,
    TResult Function(Objective objective)? objectiveUnaccomplished,
    required TResult orElse(),
  }) {
    if (objectiveUnaccomplished != null) {
      return objectiveUnaccomplished(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_ObjectiveAccomplished value)
        objectiveAccomplished,
    required TResult Function(_ObjectiveUnaccomplished value)
        objectiveUnaccomplished,
  }) {
    return objectiveUnaccomplished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
  }) {
    return objectiveUnaccomplished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_ObjectiveAccomplished value)? objectiveAccomplished,
    TResult Function(_ObjectiveUnaccomplished value)? objectiveUnaccomplished,
    required TResult orElse(),
  }) {
    if (objectiveUnaccomplished != null) {
      return objectiveUnaccomplished(this);
    }
    return orElse();
  }
}

abstract class _ObjectiveUnaccomplished implements ObjectivesTrackerEvent {
  const factory _ObjectiveUnaccomplished(Objective objective) =
      _$_ObjectiveUnaccomplished;

  Objective get objective => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ObjectiveUnaccomplishedCopyWith<_ObjectiveUnaccomplished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ObjectivesTrackerStateTearOff {
  const _$ObjectivesTrackerStateTearOff();

  _ObjectivesTrackerState call(
      {required KtList<Objective> objectivesToDo,
      required UniqueId experienceId,
      required bool isFinished,
      required bool showExplanation}) {
    return _ObjectivesTrackerState(
      objectivesToDo: objectivesToDo,
      experienceId: experienceId,
      isFinished: isFinished,
      showExplanation: showExplanation,
    );
  }
}

/// @nodoc
const $ObjectivesTrackerState = _$ObjectivesTrackerStateTearOff();

/// @nodoc
mixin _$ObjectivesTrackerState {
  KtList<Objective> get objectivesToDo => throw _privateConstructorUsedError;
  UniqueId get experienceId => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  bool get showExplanation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectivesTrackerStateCopyWith<ObjectivesTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectivesTrackerStateCopyWith<$Res> {
  factory $ObjectivesTrackerStateCopyWith(ObjectivesTrackerState value,
          $Res Function(ObjectivesTrackerState) then) =
      _$ObjectivesTrackerStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<Objective> objectivesToDo,
      UniqueId experienceId,
      bool isFinished,
      bool showExplanation});
}

/// @nodoc
class _$ObjectivesTrackerStateCopyWithImpl<$Res>
    implements $ObjectivesTrackerStateCopyWith<$Res> {
  _$ObjectivesTrackerStateCopyWithImpl(this._value, this._then);

  final ObjectivesTrackerState _value;
  // ignore: unused_field
  final $Res Function(ObjectivesTrackerState) _then;

  @override
  $Res call({
    Object? objectivesToDo = freezed,
    Object? experienceId = freezed,
    Object? isFinished = freezed,
    Object? showExplanation = freezed,
  }) {
    return _then(_value.copyWith(
      objectivesToDo: objectivesToDo == freezed
          ? _value.objectivesToDo
          : objectivesToDo // ignore: cast_nullable_to_non_nullable
              as KtList<Objective>,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      showExplanation: showExplanation == freezed
          ? _value.showExplanation
          : showExplanation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ObjectivesTrackerStateCopyWith<$Res>
    implements $ObjectivesTrackerStateCopyWith<$Res> {
  factory _$ObjectivesTrackerStateCopyWith(_ObjectivesTrackerState value,
          $Res Function(_ObjectivesTrackerState) then) =
      __$ObjectivesTrackerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<Objective> objectivesToDo,
      UniqueId experienceId,
      bool isFinished,
      bool showExplanation});
}

/// @nodoc
class __$ObjectivesTrackerStateCopyWithImpl<$Res>
    extends _$ObjectivesTrackerStateCopyWithImpl<$Res>
    implements _$ObjectivesTrackerStateCopyWith<$Res> {
  __$ObjectivesTrackerStateCopyWithImpl(_ObjectivesTrackerState _value,
      $Res Function(_ObjectivesTrackerState) _then)
      : super(_value, (v) => _then(v as _ObjectivesTrackerState));

  @override
  _ObjectivesTrackerState get _value => super._value as _ObjectivesTrackerState;

  @override
  $Res call({
    Object? objectivesToDo = freezed,
    Object? experienceId = freezed,
    Object? isFinished = freezed,
    Object? showExplanation = freezed,
  }) {
    return _then(_ObjectivesTrackerState(
      objectivesToDo: objectivesToDo == freezed
          ? _value.objectivesToDo
          : objectivesToDo // ignore: cast_nullable_to_non_nullable
              as KtList<Objective>,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      showExplanation: showExplanation == freezed
          ? _value.showExplanation
          : showExplanation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ObjectivesTrackerState implements _ObjectivesTrackerState {
  const _$_ObjectivesTrackerState(
      {required this.objectivesToDo,
      required this.experienceId,
      required this.isFinished,
      required this.showExplanation});

  @override
  final KtList<Objective> objectivesToDo;
  @override
  final UniqueId experienceId;
  @override
  final bool isFinished;
  @override
  final bool showExplanation;

  @override
  String toString() {
    return 'ObjectivesTrackerState(objectivesToDo: $objectivesToDo, experienceId: $experienceId, isFinished: $isFinished, showExplanation: $showExplanation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectivesTrackerState &&
            (identical(other.objectivesToDo, objectivesToDo) ||
                const DeepCollectionEquality()
                    .equals(other.objectivesToDo, objectivesToDo)) &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality()
                    .equals(other.experienceId, experienceId)) &&
            (identical(other.isFinished, isFinished) ||
                const DeepCollectionEquality()
                    .equals(other.isFinished, isFinished)) &&
            (identical(other.showExplanation, showExplanation) ||
                const DeepCollectionEquality()
                    .equals(other.showExplanation, showExplanation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objectivesToDo) ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(isFinished) ^
      const DeepCollectionEquality().hash(showExplanation);

  @JsonKey(ignore: true)
  @override
  _$ObjectivesTrackerStateCopyWith<_ObjectivesTrackerState> get copyWith =>
      __$ObjectivesTrackerStateCopyWithImpl<_ObjectivesTrackerState>(
          this, _$identity);
}

abstract class _ObjectivesTrackerState implements ObjectivesTrackerState {
  const factory _ObjectivesTrackerState(
      {required KtList<Objective> objectivesToDo,
      required UniqueId experienceId,
      required bool isFinished,
      required bool showExplanation}) = _$_ObjectivesTrackerState;

  @override
  KtList<Objective> get objectivesToDo => throw _privateConstructorUsedError;
  @override
  UniqueId get experienceId => throw _privateConstructorUsedError;
  @override
  bool get isFinished => throw _privateConstructorUsedError;
  @override
  bool get showExplanation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObjectivesTrackerStateCopyWith<_ObjectivesTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}
