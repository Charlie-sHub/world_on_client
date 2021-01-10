// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'map_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MapControllerEventTearOff {
  const _$MapControllerEventTearOff();

// ignore: unused_element
  _Initialized initialized(Experience experience) {
    return _Initialized(
      experience,
    );
  }

// ignore: unused_element
  _CameraPositionChanged cameraPositionChanged(
      {@required Coordinates coordinates, @required double zoom}) {
    return _CameraPositionChanged(
      coordinates: coordinates,
      zoom: zoom,
    );
  }

// ignore: unused_element
  _ObjectivesChanged objectivesChanged(KtList<Objective> objectives) {
    return _ObjectivesChanged(
      objectives,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MapControllerEvent = _$MapControllerEventTearOff();

/// @nodoc
mixin _$MapControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required
        TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    @required TResult objectivesChanged(KtList<Objective> objectives),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult cameraPositionChanged(_CameraPositionChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult cameraPositionChanged(_CameraPositionChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MapControllerEventCopyWith<$Res> {
  factory $MapControllerEventCopyWith(
          MapControllerEvent value, $Res Function(MapControllerEvent) then) =
      _$MapControllerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapControllerEventCopyWithImpl<$Res>
    implements $MapControllerEventCopyWith<$Res> {
  _$MapControllerEventCopyWithImpl(this._value, this._then);

  final MapControllerEvent _value;
  // ignore: unused_field
  final $Res Function(MapControllerEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Experience experience});

  $ExperienceCopyWith<$Res> get experience;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$MapControllerEventCopyWithImpl<$Res>
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
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.experience) : assert(experience != null);

  @override
  final Experience experience;

  @override
  String toString() {
    return 'MapControllerEvent.initialized(experience: $experience)';
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

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required
        TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    @required TResult objectivesChanged(KtList<Objective> objectives),
  }) {
    assert(initialized != null);
    assert(cameraPositionChanged != null);
    assert(objectivesChanged != null);
    return initialized(experience);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    TResult objectivesChanged(KtList<Objective> objectives),
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
    @required TResult cameraPositionChanged(_CameraPositionChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
  }) {
    assert(initialized != null);
    assert(cameraPositionChanged != null);
    assert(objectivesChanged != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult cameraPositionChanged(_CameraPositionChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements MapControllerEvent {
  const factory _Initialized(Experience experience) = _$_Initialized;

  Experience get experience;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$CameraPositionChangedCopyWith<$Res> {
  factory _$CameraPositionChangedCopyWith(_CameraPositionChanged value,
          $Res Function(_CameraPositionChanged) then) =
      __$CameraPositionChangedCopyWithImpl<$Res>;
  $Res call({Coordinates coordinates, double zoom});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$CameraPositionChangedCopyWithImpl<$Res>
    extends _$MapControllerEventCopyWithImpl<$Res>
    implements _$CameraPositionChangedCopyWith<$Res> {
  __$CameraPositionChangedCopyWithImpl(_CameraPositionChanged _value,
      $Res Function(_CameraPositionChanged) _then)
      : super(_value, (v) => _then(v as _CameraPositionChanged));

  @override
  _CameraPositionChanged get _value => super._value as _CameraPositionChanged;

  @override
  $Res call({
    Object coordinates = freezed,
    Object zoom = freezed,
  }) {
    return _then(_CameraPositionChanged(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      zoom: zoom == freezed ? _value.zoom : zoom as double,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
class _$_CameraPositionChanged implements _CameraPositionChanged {
  const _$_CameraPositionChanged(
      {@required this.coordinates, @required this.zoom})
      : assert(coordinates != null),
        assert(zoom != null);

  @override
  final Coordinates coordinates;
  @override
  final double zoom;

  @override
  String toString() {
    return 'MapControllerEvent.cameraPositionChanged(coordinates: $coordinates, zoom: $zoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CameraPositionChanged &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.zoom, zoom) ||
                const DeepCollectionEquality().equals(other.zoom, zoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(zoom);

  @override
  _$CameraPositionChangedCopyWith<_CameraPositionChanged> get copyWith =>
      __$CameraPositionChangedCopyWithImpl<_CameraPositionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required
        TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    @required TResult objectivesChanged(KtList<Objective> objectives),
  }) {
    assert(initialized != null);
    assert(cameraPositionChanged != null);
    assert(objectivesChanged != null);
    return cameraPositionChanged(coordinates, zoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cameraPositionChanged != null) {
      return cameraPositionChanged(coordinates, zoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult cameraPositionChanged(_CameraPositionChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
  }) {
    assert(initialized != null);
    assert(cameraPositionChanged != null);
    assert(objectivesChanged != null);
    return cameraPositionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult cameraPositionChanged(_CameraPositionChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cameraPositionChanged != null) {
      return cameraPositionChanged(this);
    }
    return orElse();
  }
}

abstract class _CameraPositionChanged implements MapControllerEvent {
  const factory _CameraPositionChanged(
      {@required Coordinates coordinates,
      @required double zoom}) = _$_CameraPositionChanged;

  Coordinates get coordinates;
  double get zoom;
  _$CameraPositionChangedCopyWith<_CameraPositionChanged> get copyWith;
}

/// @nodoc
abstract class _$ObjectivesChangedCopyWith<$Res> {
  factory _$ObjectivesChangedCopyWith(
          _ObjectivesChanged value, $Res Function(_ObjectivesChanged) then) =
      __$ObjectivesChangedCopyWithImpl<$Res>;
  $Res call({KtList<Objective> objectives});
}

/// @nodoc
class __$ObjectivesChangedCopyWithImpl<$Res>
    extends _$MapControllerEventCopyWithImpl<$Res>
    implements _$ObjectivesChangedCopyWith<$Res> {
  __$ObjectivesChangedCopyWithImpl(
      _ObjectivesChanged _value, $Res Function(_ObjectivesChanged) _then)
      : super(_value, (v) => _then(v as _ObjectivesChanged));

  @override
  _ObjectivesChanged get _value => super._value as _ObjectivesChanged;

  @override
  $Res call({
    Object objectives = freezed,
  }) {
    return _then(_ObjectivesChanged(
      objectives == freezed
          ? _value.objectives
          : objectives as KtList<Objective>,
    ));
  }
}

/// @nodoc
class _$_ObjectivesChanged implements _ObjectivesChanged {
  const _$_ObjectivesChanged(this.objectives) : assert(objectives != null);

  @override
  final KtList<Objective> objectives;

  @override
  String toString() {
    return 'MapControllerEvent.objectivesChanged(objectives: $objectives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectivesChanged &&
            (identical(other.objectives, objectives) ||
                const DeepCollectionEquality()
                    .equals(other.objectives, objectives)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectives);

  @override
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith =>
      __$ObjectivesChangedCopyWithImpl<_ObjectivesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Experience experience),
    @required
        TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    @required TResult objectivesChanged(KtList<Objective> objectives),
  }) {
    assert(initialized != null);
    assert(cameraPositionChanged != null);
    assert(objectivesChanged != null);
    return objectivesChanged(objectives);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Experience experience),
    TResult cameraPositionChanged(Coordinates coordinates, double zoom),
    TResult objectivesChanged(KtList<Objective> objectives),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChanged != null) {
      return objectivesChanged(objectives);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult cameraPositionChanged(_CameraPositionChanged value),
    @required TResult objectivesChanged(_ObjectivesChanged value),
  }) {
    assert(initialized != null);
    assert(cameraPositionChanged != null);
    assert(objectivesChanged != null);
    return objectivesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult cameraPositionChanged(_CameraPositionChanged value),
    TResult objectivesChanged(_ObjectivesChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (objectivesChanged != null) {
      return objectivesChanged(this);
    }
    return orElse();
  }
}

abstract class _ObjectivesChanged implements MapControllerEvent {
  const factory _ObjectivesChanged(KtList<Objective> objectives) =
      _$_ObjectivesChanged;

  KtList<Objective> get objectives;
  _$ObjectivesChangedCopyWith<_ObjectivesChanged> get copyWith;
}

/// @nodoc
class _$MapControllerStateTearOff {
  const _$MapControllerStateTearOff();

// ignore: unused_element
  _MapControllerState call(
      {@required Coordinates coordinates,
      @required KtList<Objective> objectives,
      @required double zoom,
      @required bool loadedCoordinates}) {
    return _MapControllerState(
      coordinates: coordinates,
      objectives: objectives,
      zoom: zoom,
      loadedCoordinates: loadedCoordinates,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MapControllerState = _$MapControllerStateTearOff();

/// @nodoc
mixin _$MapControllerState {
  Coordinates get coordinates;
  KtList<Objective> get objectives;
  double get zoom;
  bool get loadedCoordinates;

  $MapControllerStateCopyWith<MapControllerState> get copyWith;
}

/// @nodoc
abstract class $MapControllerStateCopyWith<$Res> {
  factory $MapControllerStateCopyWith(
          MapControllerState value, $Res Function(MapControllerState) then) =
      _$MapControllerStateCopyWithImpl<$Res>;
  $Res call(
      {Coordinates coordinates,
      KtList<Objective> objectives,
      double zoom,
      bool loadedCoordinates});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$MapControllerStateCopyWithImpl<$Res>
    implements $MapControllerStateCopyWith<$Res> {
  _$MapControllerStateCopyWithImpl(this._value, this._then);

  final MapControllerState _value;
  // ignore: unused_field
  final $Res Function(MapControllerState) _then;

  @override
  $Res call({
    Object coordinates = freezed,
    Object objectives = freezed,
    Object zoom = freezed,
    Object loadedCoordinates = freezed,
  }) {
    return _then(_value.copyWith(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives as KtList<Objective>,
      zoom: zoom == freezed ? _value.zoom : zoom as double,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates as bool,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$MapControllerStateCopyWith<$Res>
    implements $MapControllerStateCopyWith<$Res> {
  factory _$MapControllerStateCopyWith(
          _MapControllerState value, $Res Function(_MapControllerState) then) =
      __$MapControllerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Coordinates coordinates,
      KtList<Objective> objectives,
      double zoom,
      bool loadedCoordinates});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$MapControllerStateCopyWithImpl<$Res>
    extends _$MapControllerStateCopyWithImpl<$Res>
    implements _$MapControllerStateCopyWith<$Res> {
  __$MapControllerStateCopyWithImpl(
      _MapControllerState _value, $Res Function(_MapControllerState) _then)
      : super(_value, (v) => _then(v as _MapControllerState));

  @override
  _MapControllerState get _value => super._value as _MapControllerState;

  @override
  $Res call({
    Object coordinates = freezed,
    Object objectives = freezed,
    Object zoom = freezed,
    Object loadedCoordinates = freezed,
  }) {
    return _then(_MapControllerState(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as Coordinates,
      objectives: objectives == freezed
          ? _value.objectives
          : objectives as KtList<Objective>,
      zoom: zoom == freezed ? _value.zoom : zoom as double,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates as bool,
    ));
  }
}

/// @nodoc
class _$_MapControllerState implements _MapControllerState {
  const _$_MapControllerState(
      {@required this.coordinates,
      @required this.objectives,
      @required this.zoom,
      @required this.loadedCoordinates})
      : assert(coordinates != null),
        assert(objectives != null),
        assert(zoom != null),
        assert(loadedCoordinates != null);

  @override
  final Coordinates coordinates;
  @override
  final KtList<Objective> objectives;
  @override
  final double zoom;
  @override
  final bool loadedCoordinates;

  @override
  String toString() {
    return 'MapControllerState(coordinates: $coordinates, objectives: $objectives, zoom: $zoom, loadedCoordinates: $loadedCoordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapControllerState &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.objectives, objectives) ||
                const DeepCollectionEquality()
                    .equals(other.objectives, objectives)) &&
            (identical(other.zoom, zoom) ||
                const DeepCollectionEquality().equals(other.zoom, zoom)) &&
            (identical(other.loadedCoordinates, loadedCoordinates) ||
                const DeepCollectionEquality()
                    .equals(other.loadedCoordinates, loadedCoordinates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(objectives) ^
      const DeepCollectionEquality().hash(zoom) ^
      const DeepCollectionEquality().hash(loadedCoordinates);

  @override
  _$MapControllerStateCopyWith<_MapControllerState> get copyWith =>
      __$MapControllerStateCopyWithImpl<_MapControllerState>(this, _$identity);
}

abstract class _MapControllerState implements MapControllerState {
  const factory _MapControllerState(
      {@required Coordinates coordinates,
      @required KtList<Objective> objectives,
      @required double zoom,
      @required bool loadedCoordinates}) = _$_MapControllerState;

  @override
  Coordinates get coordinates;
  @override
  KtList<Objective> get objectives;
  @override
  double get zoom;
  @override
  bool get loadedCoordinates;
  @override
  _$MapControllerStateCopyWith<_MapControllerState> get copyWith;
}
