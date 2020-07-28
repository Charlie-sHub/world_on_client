// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'objectives_tracker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ObjectivesTrackerEventTearOff {
  const _$ObjectivesTrackerEventTearOff();

// ignore: unused_element
  _Initialized initialized(ObjectiveSet objectiveSet) {
    return _Initialized(
      objectiveSet,
    );
  }

// ignore: unused_element
  _ObjectiveAccomplished objectiveAccomplished(Objective objective) {
    return _ObjectiveAccomplished(
      objective,
    );
  }
}

// ignore: unused_element
const $ObjectivesTrackerEvent = _$ObjectivesTrackerEventTearOff();

mixin _$ObjectivesTrackerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(ObjectiveSet objectiveSet),
    @required Result objectiveAccomplished(Objective objective),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(ObjectiveSet objectiveSet),
    Result objectiveAccomplished(Objective objective),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result orElse(),
  });
}

abstract class $ObjectivesTrackerEventCopyWith<$Res> {
  factory $ObjectivesTrackerEventCopyWith(ObjectivesTrackerEvent value, $Res Function(ObjectivesTrackerEvent) then) = _$ObjectivesTrackerEventCopyWithImpl<$Res>;
}

class _$ObjectivesTrackerEventCopyWithImpl<$Res> implements $ObjectivesTrackerEventCopyWith<$Res> {
  _$ObjectivesTrackerEventCopyWithImpl(this._value, this._then);

  final ObjectivesTrackerEvent _value;
  // ignore: unused_field
  final $Res Function(ObjectivesTrackerEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(_Initialized value, $Res Function(_Initialized) then) = __$InitializedCopyWithImpl<$Res>;
  $Res call({ObjectiveSet objectiveSet});
}

class __$InitializedCopyWithImpl<$Res> extends _$ObjectivesTrackerEventCopyWithImpl<$Res> implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(_Initialized _value, $Res Function(_Initialized) _then) : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object objectiveSet = freezed,
  }) {
    return _then(_Initialized(
      objectiveSet == freezed ? _value.objectiveSet : objectiveSet as ObjectiveSet,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.objectiveSet) : assert(objectiveSet != null);

  @override
  final ObjectiveSet objectiveSet;

  @override
  String toString() {
    return 'ObjectivesTrackerEvent.initialized(objectiveSet: $objectiveSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized && (identical(other.objectiveSet, objectiveSet) || const DeepCollectionEquality().equals(other.objectiveSet, objectiveSet)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectiveSet);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith => __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(ObjectiveSet objectiveSet),
    @required Result objectiveAccomplished(Objective objective),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    return initialized(objectiveSet);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(ObjectiveSet objectiveSet),
    Result objectiveAccomplished(Objective objective),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(objectiveSet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ObjectivesTrackerEvent {
  const factory _Initialized(ObjectiveSet objectiveSet) = _$_Initialized;

  ObjectiveSet get objectiveSet;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$ObjectiveAccomplishedCopyWith<$Res> {
  factory _$ObjectiveAccomplishedCopyWith(_ObjectiveAccomplished value, $Res Function(_ObjectiveAccomplished) then) = __$ObjectiveAccomplishedCopyWithImpl<$Res>;
  $Res call({Objective objective});

  $ObjectiveCopyWith<$Res> get objective;
}

class __$ObjectiveAccomplishedCopyWithImpl<$Res> extends _$ObjectivesTrackerEventCopyWithImpl<$Res> implements _$ObjectiveAccomplishedCopyWith<$Res> {
  __$ObjectiveAccomplishedCopyWithImpl(_ObjectiveAccomplished _value, $Res Function(_ObjectiveAccomplished) _then) : super(_value, (v) => _then(v as _ObjectiveAccomplished));

  @override
  _ObjectiveAccomplished get _value => super._value as _ObjectiveAccomplished;

  @override
  $Res call({
    Object objective = freezed,
  }) {
    return _then(_ObjectiveAccomplished(
      objective == freezed ? _value.objective : objective as Objective,
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

class _$_ObjectiveAccomplished implements _ObjectiveAccomplished {
  const _$_ObjectiveAccomplished(this.objective) : assert(objective != null);

  @override
  final Objective objective;

  @override
  String toString() {
    return 'ObjectivesTrackerEvent.objectiveAccomplished(objective: $objective)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ObjectiveAccomplished && (identical(other.objective, objective) || const DeepCollectionEquality().equals(other.objective, objective)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective);

  @override
  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith => __$ObjectiveAccomplishedCopyWithImpl<_ObjectiveAccomplished>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(ObjectiveSet objectiveSet),
    @required Result objectiveAccomplished(Objective objective),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    return objectiveAccomplished(objective);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(ObjectiveSet objectiveSet),
    Result objectiveAccomplished(Objective objective),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectiveAccomplished != null) {
      return objectiveAccomplished(objective);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result objectiveAccomplished(_ObjectiveAccomplished value),
  }) {
    assert(initialized != null);
    assert(objectiveAccomplished != null);
    return objectiveAccomplished(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result objectiveAccomplished(_ObjectiveAccomplished value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (objectiveAccomplished != null) {
      return objectiveAccomplished(this);
    }
    return orElse();
  }
}

abstract class _ObjectiveAccomplished implements ObjectivesTrackerEvent {
  const factory _ObjectiveAccomplished(Objective objective) = _$_ObjectiveAccomplished;

  Objective get objective;
  _$ObjectiveAccomplishedCopyWith<_ObjectiveAccomplished> get copyWith;
}

class _$ObjectivesTrackerStateTearOff {
  const _$ObjectivesTrackerStateTearOff();

// ignore: unused_element
  _ObjectivesTrackerState call({@required Map<Objective, bool> objectiveTracker, @required bool isFinished}) {
    return _ObjectivesTrackerState(
      objectiveTracker: objectiveTracker,
      isFinished: isFinished,
    );
  }
}

// ignore: unused_element
const $ObjectivesTrackerState = _$ObjectivesTrackerStateTearOff();

mixin _$ObjectivesTrackerState {
  Map<Objective, bool> get objectiveTracker;
  bool get isFinished;

  $ObjectivesTrackerStateCopyWith<ObjectivesTrackerState> get copyWith;
}

abstract class $ObjectivesTrackerStateCopyWith<$Res> {
  factory $ObjectivesTrackerStateCopyWith(ObjectivesTrackerState value, $Res Function(ObjectivesTrackerState) then) = _$ObjectivesTrackerStateCopyWithImpl<$Res>;
  $Res call({Map<Objective, bool> objectiveTracker, bool isFinished});
}

class _$ObjectivesTrackerStateCopyWithImpl<$Res> implements $ObjectivesTrackerStateCopyWith<$Res> {
  _$ObjectivesTrackerStateCopyWithImpl(this._value, this._then);

  final ObjectivesTrackerState _value;
  // ignore: unused_field
  final $Res Function(ObjectivesTrackerState) _then;

  @override
  $Res call({
    Object objectiveTracker = freezed,
    Object isFinished = freezed,
  }) {
    return _then(_value.copyWith(
      objectiveTracker: objectiveTracker == freezed ? _value.objectiveTracker : objectiveTracker as Map<Objective, bool>,
      isFinished: isFinished == freezed ? _value.isFinished : isFinished as bool,
    ));
  }
}

abstract class _$ObjectivesTrackerStateCopyWith<$Res> implements $ObjectivesTrackerStateCopyWith<$Res> {
  factory _$ObjectivesTrackerStateCopyWith(_ObjectivesTrackerState value, $Res Function(_ObjectivesTrackerState) then) = __$ObjectivesTrackerStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<Objective, bool> objectiveTracker, bool isFinished});
}

class __$ObjectivesTrackerStateCopyWithImpl<$Res> extends _$ObjectivesTrackerStateCopyWithImpl<$Res> implements _$ObjectivesTrackerStateCopyWith<$Res> {
  __$ObjectivesTrackerStateCopyWithImpl(_ObjectivesTrackerState _value, $Res Function(_ObjectivesTrackerState) _then) : super(_value, (v) => _then(v as _ObjectivesTrackerState));

  @override
  _ObjectivesTrackerState get _value => super._value as _ObjectivesTrackerState;

  @override
  $Res call({
    Object objectiveTracker = freezed,
    Object isFinished = freezed,
  }) {
    return _then(_ObjectivesTrackerState(
      objectiveTracker: objectiveTracker == freezed ? _value.objectiveTracker : objectiveTracker as Map<Objective, bool>,
      isFinished: isFinished == freezed ? _value.isFinished : isFinished as bool,
    ));
  }
}

class _$_ObjectivesTrackerState implements _ObjectivesTrackerState {
  const _$_ObjectivesTrackerState({@required this.objectiveTracker, @required this.isFinished})
      : assert(objectiveTracker != null),
        assert(isFinished != null);

  @override
  final Map<Objective, bool> objectiveTracker;
  @override
  final bool isFinished;

  @override
  String toString() {
    return 'ObjectivesTrackerState(objectiveTracker: $objectiveTracker, isFinished: $isFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectivesTrackerState &&
            (identical(other.objectiveTracker, objectiveTracker) || const DeepCollectionEquality().equals(other.objectiveTracker, objectiveTracker)) &&
            (identical(other.isFinished, isFinished) || const DeepCollectionEquality().equals(other.isFinished, isFinished)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectiveTracker) ^ const DeepCollectionEquality().hash(isFinished);

  @override
  _$ObjectivesTrackerStateCopyWith<_ObjectivesTrackerState> get copyWith => __$ObjectivesTrackerStateCopyWithImpl<_ObjectivesTrackerState>(this, _$identity);
}

abstract class _ObjectivesTrackerState implements ObjectivesTrackerState {
  const factory _ObjectivesTrackerState({@required Map<Objective, bool> objectiveTracker, @required bool isFinished}) = _$_ObjectivesTrackerState;

  @override
  Map<Objective, bool> get objectiveTracker;
  @override
  bool get isFinished;
  @override
  _$ObjectivesTrackerStateCopyWith<_ObjectivesTrackerState> get copyWith;
}
