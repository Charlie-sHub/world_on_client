// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'objectives_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ObjectivesCreationEventTearOff {
  const _$ObjectivesCreationEventTearOff();

  _Initialized initialized(Option<ObjectiveList> objectiveListOption) {
    return _Initialized(
      objectiveListOption,
    );
  }

  _AddedObjective addedObjective(Objective objective) {
    return _AddedObjective(
      objective,
    );
  }

  _RemovedObjective removedObjective(Objective objective) {
    return _RemovedObjective(
      objective,
    );
  }

  _ReorderedList reorderedList(List<Objective> reorderedList) {
    return _ReorderedList(
      reorderedList,
    );
  }
}

/// @nodoc
const $ObjectivesCreationEvent = _$ObjectivesCreationEventTearOff();

/// @nodoc
mixin _$ObjectivesCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ObjectiveList> objectiveListOption)
        initialized,
    required TResult Function(Objective objective) addedObjective,
    required TResult Function(Objective objective) removedObjective,
    required TResult Function(List<Objective> reorderedList) reorderedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedObjective value) addedObjective,
    required TResult Function(_RemovedObjective value) removedObjective,
    required TResult Function(_ReorderedList value) reorderedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectivesCreationEventCopyWith<$Res> {
  factory $ObjectivesCreationEventCopyWith(ObjectivesCreationEvent value,
          $Res Function(ObjectivesCreationEvent) then) =
      _$ObjectivesCreationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ObjectivesCreationEventCopyWithImpl<$Res>
    implements $ObjectivesCreationEventCopyWith<$Res> {
  _$ObjectivesCreationEventCopyWithImpl(this._value, this._then);

  final ObjectivesCreationEvent _value;
  // ignore: unused_field
  final $Res Function(ObjectivesCreationEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<ObjectiveList> objectiveListOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ObjectivesCreationEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? objectiveListOption = freezed,
  }) {
    return _then(_Initialized(
      objectiveListOption == freezed
          ? _value.objectiveListOption
          : objectiveListOption // ignore: cast_nullable_to_non_nullable
              as Option<ObjectiveList>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.objectiveListOption);

  @override
  final Option<ObjectiveList> objectiveListOption;

  @override
  String toString() {
    return 'ObjectivesCreationEvent.initialized(objectiveListOption: $objectiveListOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.objectiveListOption, objectiveListOption) ||
                const DeepCollectionEquality()
                    .equals(other.objectiveListOption, objectiveListOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objectiveListOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ObjectiveList> objectiveListOption)
        initialized,
    required TResult Function(Objective objective) addedObjective,
    required TResult Function(Objective objective) removedObjective,
    required TResult Function(List<Objective> reorderedList) reorderedList,
  }) {
    return initialized(objectiveListOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
  }) {
    return initialized?.call(objectiveListOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(objectiveListOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedObjective value) addedObjective,
    required TResult Function(_RemovedObjective value) removedObjective,
    required TResult Function(_ReorderedList value) reorderedList,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ObjectivesCreationEvent {
  const factory _Initialized(Option<ObjectiveList> objectiveListOption) =
      _$_Initialized;

  Option<ObjectiveList> get objectiveListOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddedObjectiveCopyWith<$Res> {
  factory _$AddedObjectiveCopyWith(
          _AddedObjective value, $Res Function(_AddedObjective) then) =
      __$AddedObjectiveCopyWithImpl<$Res>;
  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class __$AddedObjectiveCopyWithImpl<$Res>
    extends _$ObjectivesCreationEventCopyWithImpl<$Res>
    implements _$AddedObjectiveCopyWith<$Res> {
  __$AddedObjectiveCopyWithImpl(
      _AddedObjective _value, $Res Function(_AddedObjective) _then)
      : super(_value, (v) => _then(v as _AddedObjective));

  @override
  _AddedObjective get _value => super._value as _AddedObjective;

  @override
  $Res call({
    Object? objective = freezed,
  }) {
    return _then(_AddedObjective(
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

class _$_AddedObjective implements _AddedObjective {
  const _$_AddedObjective(this.objective);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ObjectivesCreationEvent.addedObjective(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedObjective &&
            (identical(other.objective, objective) ||
                const DeepCollectionEquality()
                    .equals(other.objective, objective)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @JsonKey(ignore: true)
  @override
  _$AddedObjectiveCopyWith<_AddedObjective> get copyWith =>
      __$AddedObjectiveCopyWithImpl<_AddedObjective>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ObjectiveList> objectiveListOption)
        initialized,
    required TResult Function(Objective objective) addedObjective,
    required TResult Function(Objective objective) removedObjective,
    required TResult Function(List<Objective> reorderedList) reorderedList,
  }) {
    return addedObjective(objective);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
  }) {
    return addedObjective?.call(objective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
    required TResult orElse(),
  }) {
    if (addedObjective != null) {
      return addedObjective(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedObjective value) addedObjective,
    required TResult Function(_RemovedObjective value) removedObjective,
    required TResult Function(_ReorderedList value) reorderedList,
  }) {
    return addedObjective(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
  }) {
    return addedObjective?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
    required TResult orElse(),
  }) {
    if (addedObjective != null) {
      return addedObjective(this);
    }
    return orElse();
  }
}

abstract class _AddedObjective implements ObjectivesCreationEvent {
  const factory _AddedObjective(Objective objective) = _$_AddedObjective;

  Objective get objective => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddedObjectiveCopyWith<_AddedObjective> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemovedObjectiveCopyWith<$Res> {
  factory _$RemovedObjectiveCopyWith(
          _RemovedObjective value, $Res Function(_RemovedObjective) then) =
      __$RemovedObjectiveCopyWithImpl<$Res>;
  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class __$RemovedObjectiveCopyWithImpl<$Res>
    extends _$ObjectivesCreationEventCopyWithImpl<$Res>
    implements _$RemovedObjectiveCopyWith<$Res> {
  __$RemovedObjectiveCopyWithImpl(
      _RemovedObjective _value, $Res Function(_RemovedObjective) _then)
      : super(_value, (v) => _then(v as _RemovedObjective));

  @override
  _RemovedObjective get _value => super._value as _RemovedObjective;

  @override
  $Res call({
    Object? objective = freezed,
  }) {
    return _then(_RemovedObjective(
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

class _$_RemovedObjective implements _RemovedObjective {
  const _$_RemovedObjective(this.objective);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ObjectivesCreationEvent.removedObjective(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovedObjective &&
            (identical(other.objective, objective) ||
                const DeepCollectionEquality()
                    .equals(other.objective, objective)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @JsonKey(ignore: true)
  @override
  _$RemovedObjectiveCopyWith<_RemovedObjective> get copyWith =>
      __$RemovedObjectiveCopyWithImpl<_RemovedObjective>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ObjectiveList> objectiveListOption)
        initialized,
    required TResult Function(Objective objective) addedObjective,
    required TResult Function(Objective objective) removedObjective,
    required TResult Function(List<Objective> reorderedList) reorderedList,
  }) {
    return removedObjective(objective);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
  }) {
    return removedObjective?.call(objective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
    required TResult orElse(),
  }) {
    if (removedObjective != null) {
      return removedObjective(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedObjective value) addedObjective,
    required TResult Function(_RemovedObjective value) removedObjective,
    required TResult Function(_ReorderedList value) reorderedList,
  }) {
    return removedObjective(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
  }) {
    return removedObjective?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
    required TResult orElse(),
  }) {
    if (removedObjective != null) {
      return removedObjective(this);
    }
    return orElse();
  }
}

abstract class _RemovedObjective implements ObjectivesCreationEvent {
  const factory _RemovedObjective(Objective objective) = _$_RemovedObjective;

  Objective get objective => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RemovedObjectiveCopyWith<_RemovedObjective> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReorderedListCopyWith<$Res> {
  factory _$ReorderedListCopyWith(
          _ReorderedList value, $Res Function(_ReorderedList) then) =
      __$ReorderedListCopyWithImpl<$Res>;
  $Res call({List<Objective> reorderedList});
}

/// @nodoc
class __$ReorderedListCopyWithImpl<$Res>
    extends _$ObjectivesCreationEventCopyWithImpl<$Res>
    implements _$ReorderedListCopyWith<$Res> {
  __$ReorderedListCopyWithImpl(
      _ReorderedList _value, $Res Function(_ReorderedList) _then)
      : super(_value, (v) => _then(v as _ReorderedList));

  @override
  _ReorderedList get _value => super._value as _ReorderedList;

  @override
  $Res call({
    Object? reorderedList = freezed,
  }) {
    return _then(_ReorderedList(
      reorderedList == freezed
          ? _value.reorderedList
          : reorderedList // ignore: cast_nullable_to_non_nullable
              as List<Objective>,
    ));
  }
}

/// @nodoc

class _$_ReorderedList implements _ReorderedList {
  const _$_ReorderedList(this.reorderedList);

  @override
  final List<Objective> reorderedList;

  @override
  String toString() {
    return 'ObjectivesCreationEvent.reorderedList(reorderedList: $reorderedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReorderedList &&
            (identical(other.reorderedList, reorderedList) ||
                const DeepCollectionEquality()
                    .equals(other.reorderedList, reorderedList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reorderedList);

  @JsonKey(ignore: true)
  @override
  _$ReorderedListCopyWith<_ReorderedList> get copyWith =>
      __$ReorderedListCopyWithImpl<_ReorderedList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<ObjectiveList> objectiveListOption)
        initialized,
    required TResult Function(Objective objective) addedObjective,
    required TResult Function(Objective objective) removedObjective,
    required TResult Function(List<Objective> reorderedList) reorderedList,
  }) {
    return reorderedList(this.reorderedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
  }) {
    return reorderedList?.call(this.reorderedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<ObjectiveList> objectiveListOption)? initialized,
    TResult Function(Objective objective)? addedObjective,
    TResult Function(Objective objective)? removedObjective,
    TResult Function(List<Objective> reorderedList)? reorderedList,
    required TResult orElse(),
  }) {
    if (reorderedList != null) {
      return reorderedList(this.reorderedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_AddedObjective value) addedObjective,
    required TResult Function(_RemovedObjective value) removedObjective,
    required TResult Function(_ReorderedList value) reorderedList,
  }) {
    return reorderedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
  }) {
    return reorderedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_AddedObjective value)? addedObjective,
    TResult Function(_RemovedObjective value)? removedObjective,
    TResult Function(_ReorderedList value)? reorderedList,
    required TResult orElse(),
  }) {
    if (reorderedList != null) {
      return reorderedList(this);
    }
    return orElse();
  }
}

abstract class _ReorderedList implements ObjectivesCreationEvent {
  const factory _ReorderedList(List<Objective> reorderedList) =
      _$_ReorderedList;

  List<Objective> get reorderedList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReorderedListCopyWith<_ReorderedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ObjectivesCreationStateTearOff {
  const _$ObjectivesCreationStateTearOff();

  _ObjectivesCreationState call(
      {required KtList<Objective> objectivesCreated}) {
    return _ObjectivesCreationState(
      objectivesCreated: objectivesCreated,
    );
  }
}

/// @nodoc
const $ObjectivesCreationState = _$ObjectivesCreationStateTearOff();

/// @nodoc
mixin _$ObjectivesCreationState {
  KtList<Objective> get objectivesCreated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectivesCreationStateCopyWith<ObjectivesCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectivesCreationStateCopyWith<$Res> {
  factory $ObjectivesCreationStateCopyWith(ObjectivesCreationState value,
          $Res Function(ObjectivesCreationState) then) =
      _$ObjectivesCreationStateCopyWithImpl<$Res>;
  $Res call({KtList<Objective> objectivesCreated});
}

/// @nodoc
class _$ObjectivesCreationStateCopyWithImpl<$Res>
    implements $ObjectivesCreationStateCopyWith<$Res> {
  _$ObjectivesCreationStateCopyWithImpl(this._value, this._then);

  final ObjectivesCreationState _value;
  // ignore: unused_field
  final $Res Function(ObjectivesCreationState) _then;

  @override
  $Res call({
    Object? objectivesCreated = freezed,
  }) {
    return _then(_value.copyWith(
      objectivesCreated: objectivesCreated == freezed
          ? _value.objectivesCreated
          : objectivesCreated // ignore: cast_nullable_to_non_nullable
              as KtList<Objective>,
    ));
  }
}

/// @nodoc
abstract class _$ObjectivesCreationStateCopyWith<$Res>
    implements $ObjectivesCreationStateCopyWith<$Res> {
  factory _$ObjectivesCreationStateCopyWith(_ObjectivesCreationState value,
          $Res Function(_ObjectivesCreationState) then) =
      __$ObjectivesCreationStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<Objective> objectivesCreated});
}

/// @nodoc
class __$ObjectivesCreationStateCopyWithImpl<$Res>
    extends _$ObjectivesCreationStateCopyWithImpl<$Res>
    implements _$ObjectivesCreationStateCopyWith<$Res> {
  __$ObjectivesCreationStateCopyWithImpl(_ObjectivesCreationState _value,
      $Res Function(_ObjectivesCreationState) _then)
      : super(_value, (v) => _then(v as _ObjectivesCreationState));

  @override
  _ObjectivesCreationState get _value =>
      super._value as _ObjectivesCreationState;

  @override
  $Res call({
    Object? objectivesCreated = freezed,
  }) {
    return _then(_ObjectivesCreationState(
      objectivesCreated: objectivesCreated == freezed
          ? _value.objectivesCreated
          : objectivesCreated // ignore: cast_nullable_to_non_nullable
              as KtList<Objective>,
    ));
  }
}

/// @nodoc

class _$_ObjectivesCreationState implements _ObjectivesCreationState {
  const _$_ObjectivesCreationState({required this.objectivesCreated});

  @override
  final KtList<Objective> objectivesCreated;

  @override
  String toString() {
    return 'ObjectivesCreationState(objectivesCreated: $objectivesCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectivesCreationState &&
            (identical(other.objectivesCreated, objectivesCreated) ||
                const DeepCollectionEquality()
                    .equals(other.objectivesCreated, objectivesCreated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objectivesCreated);

  @JsonKey(ignore: true)
  @override
  _$ObjectivesCreationStateCopyWith<_ObjectivesCreationState> get copyWith =>
      __$ObjectivesCreationStateCopyWithImpl<_ObjectivesCreationState>(
          this, _$identity);
}

abstract class _ObjectivesCreationState implements ObjectivesCreationState {
  const factory _ObjectivesCreationState(
          {required KtList<Objective> objectivesCreated}) =
      _$_ObjectivesCreationState;

  @override
  KtList<Objective> get objectivesCreated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObjectivesCreationStateCopyWith<_ObjectivesCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}
