// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'objectives_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ObjectivesCreationEventTearOff {
  const _$ObjectivesCreationEventTearOff();

// ignore: unused_element
  _AddedObjective addedObjective(Objective objective) {
    return _AddedObjective(
      objective,
    );
  }

// ignore: unused_element
  _RemovedObjective removedObjective(Objective objective) {
    return _RemovedObjective(
      objective,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ObjectivesCreationEvent = _$ObjectivesCreationEventTearOff();

/// @nodoc
mixin _$ObjectivesCreationEvent {
  Objective get objective;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addedObjective(Objective objective),
    @required TResult removedObjective(Objective objective),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addedObjective(Objective objective),
    TResult removedObjective(Objective objective),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addedObjective(_AddedObjective value),
    @required TResult removedObjective(_RemovedObjective value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addedObjective(_AddedObjective value),
    TResult removedObjective(_RemovedObjective value),
    @required TResult orElse(),
  });

  $ObjectivesCreationEventCopyWith<ObjectivesCreationEvent> get copyWith;
}

/// @nodoc
abstract class $ObjectivesCreationEventCopyWith<$Res> {
  factory $ObjectivesCreationEventCopyWith(ObjectivesCreationEvent value, $Res Function(ObjectivesCreationEvent) then) = _$ObjectivesCreationEventCopyWithImpl<$Res>;

  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class _$ObjectivesCreationEventCopyWithImpl<$Res> implements $ObjectivesCreationEventCopyWith<$Res> {
  _$ObjectivesCreationEventCopyWithImpl(this._value, this._then);

  final ObjectivesCreationEvent _value;

  // ignore: unused_field
  final $Res Function(ObjectivesCreationEvent) _then;

  @override
  $Res call({
    Object objective = freezed,
  }) {
    return _then(_value.copyWith(
      objective: objective == freezed ? _value.objective : objective as Objective,
    ));
  }

  @override
  $ObjectiveCopyWith<$Res> get objective {
    if (_value.objective == null) {
      return null;
    }
    return $ObjectiveCopyWith<$Res>(_value.objective, (value) {
      return _then(_value.copyWith(objective: value));
    });
  }
}

/// @nodoc
abstract class _$AddedObjectiveCopyWith<$Res> implements $ObjectivesCreationEventCopyWith<$Res> {
  factory _$AddedObjectiveCopyWith(_AddedObjective value, $Res Function(_AddedObjective) then) = __$AddedObjectiveCopyWithImpl<$Res>;

  @override
  $Res call({Objective objective});

  @override
  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class __$AddedObjectiveCopyWithImpl<$Res> extends _$ObjectivesCreationEventCopyWithImpl<$Res> implements _$AddedObjectiveCopyWith<$Res> {
  __$AddedObjectiveCopyWithImpl(_AddedObjective _value, $Res Function(_AddedObjective) _then) : super(_value, (v) => _then(v as _AddedObjective));

  @override
  _AddedObjective get _value => super._value as _AddedObjective;

  @override
  $Res call({
    Object objective = freezed,
  }) {
    return _then(_AddedObjective(
      objective == freezed ? _value.objective : objective as Objective,
    ));
  }
}

/// @nodoc
class _$_AddedObjective implements _AddedObjective {
  const _$_AddedObjective(this.objective) : assert(objective != null);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ObjectivesCreationEvent.addedObjective(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddedObjective && (identical(other.objective, objective) || const DeepCollectionEquality().equals(other.objective, objective)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @override
  _$AddedObjectiveCopyWith<_AddedObjective> get copyWith => __$AddedObjectiveCopyWithImpl<_AddedObjective>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addedObjective(Objective objective),
    @required TResult removedObjective(Objective objective),
  }) {
    assert(addedObjective != null);
    assert(removedObjective != null);
    return addedObjective(objective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addedObjective(Objective objective),
    TResult removedObjective(Objective objective),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedObjective != null) {
      return addedObjective(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addedObjective(_AddedObjective value),
    @required TResult removedObjective(_RemovedObjective value),
  }) {
    assert(addedObjective != null);
    assert(removedObjective != null);
    return addedObjective(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addedObjective(_AddedObjective value),
    TResult removedObjective(_RemovedObjective value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addedObjective != null) {
      return addedObjective(this);
    }
    return orElse();
  }
}

abstract class _AddedObjective implements ObjectivesCreationEvent {
  const factory _AddedObjective(Objective objective) = _$_AddedObjective;

  @override
  Objective get objective;
  @override
  _$AddedObjectiveCopyWith<_AddedObjective> get copyWith;
}

/// @nodoc
abstract class _$RemovedObjectiveCopyWith<$Res> implements $ObjectivesCreationEventCopyWith<$Res> {
  factory _$RemovedObjectiveCopyWith(_RemovedObjective value, $Res Function(_RemovedObjective) then) = __$RemovedObjectiveCopyWithImpl<$Res>;

  @override
  $Res call({Objective objective});

  @override
  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class __$RemovedObjectiveCopyWithImpl<$Res> extends _$ObjectivesCreationEventCopyWithImpl<$Res> implements _$RemovedObjectiveCopyWith<$Res> {
  __$RemovedObjectiveCopyWithImpl(_RemovedObjective _value, $Res Function(_RemovedObjective) _then) : super(_value, (v) => _then(v as _RemovedObjective));

  @override
  _RemovedObjective get _value => super._value as _RemovedObjective;

  @override
  $Res call({
    Object objective = freezed,
  }) {
    return _then(_RemovedObjective(
      objective == freezed ? _value.objective : objective as Objective,
    ));
  }
}

/// @nodoc
class _$_RemovedObjective implements _RemovedObjective {
  const _$_RemovedObjective(this.objective) : assert(objective != null);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ObjectivesCreationEvent.removedObjective(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RemovedObjective && (identical(other.objective, objective) || const DeepCollectionEquality().equals(other.objective, objective)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @override
  _$RemovedObjectiveCopyWith<_RemovedObjective> get copyWith => __$RemovedObjectiveCopyWithImpl<_RemovedObjective>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult addedObjective(Objective objective),
    @required TResult removedObjective(Objective objective),
  }) {
    assert(addedObjective != null);
    assert(removedObjective != null);
    return removedObjective(objective);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addedObjective(Objective objective),
    TResult removedObjective(Objective objective),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removedObjective != null) {
      return removedObjective(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addedObjective(_AddedObjective value),
    @required TResult removedObjective(_RemovedObjective value),
  }) {
    assert(addedObjective != null);
    assert(removedObjective != null);
    return removedObjective(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addedObjective(_AddedObjective value),
    TResult removedObjective(_RemovedObjective value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removedObjective != null) {
      return removedObjective(this);
    }
    return orElse();
  }
}

abstract class _RemovedObjective implements ObjectivesCreationEvent {
  const factory _RemovedObjective(Objective objective) = _$_RemovedObjective;

  @override
  Objective get objective;
  @override
  _$RemovedObjectiveCopyWith<_RemovedObjective> get copyWith;
}

/// @nodoc
class _$ObjectivesCreationStateTearOff {
  const _$ObjectivesCreationStateTearOff();

// ignore: unused_element
  _ObjectivesCreationState call({@required KtSet<Objective> objectivesCreated}) {
    return _ObjectivesCreationState(
      objectivesCreated: objectivesCreated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ObjectivesCreationState = _$ObjectivesCreationStateTearOff();

/// @nodoc
mixin _$ObjectivesCreationState {
  KtSet<Objective> get objectivesCreated;

  $ObjectivesCreationStateCopyWith<ObjectivesCreationState> get copyWith;
}

/// @nodoc
abstract class $ObjectivesCreationStateCopyWith<$Res> {
  factory $ObjectivesCreationStateCopyWith(ObjectivesCreationState value, $Res Function(ObjectivesCreationState) then) = _$ObjectivesCreationStateCopyWithImpl<$Res>;

  $Res call({KtSet<Objective> objectivesCreated});
}

/// @nodoc
class _$ObjectivesCreationStateCopyWithImpl<$Res> implements $ObjectivesCreationStateCopyWith<$Res> {
  _$ObjectivesCreationStateCopyWithImpl(this._value, this._then);

  final ObjectivesCreationState _value;

  // ignore: unused_field
  final $Res Function(ObjectivesCreationState) _then;

  @override
  $Res call({
    Object objectivesCreated = freezed,
  }) {
    return _then(_value.copyWith(
      objectivesCreated: objectivesCreated == freezed ? _value.objectivesCreated : objectivesCreated as KtSet<Objective>,
    ));
  }
}

/// @nodoc
abstract class _$ObjectivesCreationStateCopyWith<$Res> implements $ObjectivesCreationStateCopyWith<$Res> {
  factory _$ObjectivesCreationStateCopyWith(_ObjectivesCreationState value, $Res Function(_ObjectivesCreationState) then) = __$ObjectivesCreationStateCopyWithImpl<$Res>;

  @override
  $Res call({KtSet<Objective> objectivesCreated});
}

/// @nodoc
class __$ObjectivesCreationStateCopyWithImpl<$Res> extends _$ObjectivesCreationStateCopyWithImpl<$Res> implements _$ObjectivesCreationStateCopyWith<$Res> {
  __$ObjectivesCreationStateCopyWithImpl(_ObjectivesCreationState _value, $Res Function(_ObjectivesCreationState) _then) : super(_value, (v) => _then(v as _ObjectivesCreationState));

  @override
  _ObjectivesCreationState get _value => super._value as _ObjectivesCreationState;

  @override
  $Res call({
    Object objectivesCreated = freezed,
  }) {
    return _then(_ObjectivesCreationState(
      objectivesCreated: objectivesCreated == freezed ? _value.objectivesCreated : objectivesCreated as KtSet<Objective>,
    ));
  }
}

/// @nodoc
class _$_ObjectivesCreationState implements _ObjectivesCreationState {
  const _$_ObjectivesCreationState({@required this.objectivesCreated}) : assert(objectivesCreated != null);

  @override
  final KtSet<Objective> objectivesCreated;

  @override
  String toString() {
    return 'ObjectivesCreationState(objectivesCreated: $objectivesCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectivesCreationState && (identical(other.objectivesCreated, objectivesCreated) || const DeepCollectionEquality().equals(other.objectivesCreated, objectivesCreated)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectivesCreated);

  @override
  _$ObjectivesCreationStateCopyWith<_ObjectivesCreationState> get copyWith => __$ObjectivesCreationStateCopyWithImpl<_ObjectivesCreationState>(this, _$identity);
}

abstract class _ObjectivesCreationState implements ObjectivesCreationState {
  const factory _ObjectivesCreationState({@required KtSet<Objective> objectivesCreated}) = _$_ObjectivesCreationState;

  @override
  KtSet<Objective> get objectivesCreated;

  @override
  _$ObjectivesCreationStateCopyWith<_ObjectivesCreationState> get copyWith;
}
