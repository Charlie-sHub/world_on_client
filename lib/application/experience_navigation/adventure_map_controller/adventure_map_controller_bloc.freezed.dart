// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'adventure_map_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdventureMapControllerEventTearOff {
  const _$AdventureMapControllerEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _CameraPositionChanged cameraPositionChanged(
      {required Coordinates coordinates, required double zoom}) {
    return _CameraPositionChanged(
      coordinates: coordinates,
      zoom: zoom,
    );
  }

  _ExperiencesChanged experiencesChanged(KtList<Experience> experiences) {
    return _ExperiencesChanged(
      experiences,
    );
  }
}

/// @nodoc
const $AdventureMapControllerEvent = _$AdventureMapControllerEventTearOff();

/// @nodoc
mixin _$AdventureMapControllerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Coordinates coordinates, double zoom)
        cameraPositionChanged,
    required TResult Function(KtList<Experience> experiences)
        experiencesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CameraPositionChanged value)
        cameraPositionChanged,
    required TResult Function(_ExperiencesChanged value) experiencesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdventureMapControllerEventCopyWith<$Res> {
  factory $AdventureMapControllerEventCopyWith(
          AdventureMapControllerEvent value,
          $Res Function(AdventureMapControllerEvent) then) =
      _$AdventureMapControllerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdventureMapControllerEventCopyWithImpl<$Res>
    implements $AdventureMapControllerEventCopyWith<$Res> {
  _$AdventureMapControllerEventCopyWithImpl(this._value, this._then);

  final AdventureMapControllerEvent _value;
  // ignore: unused_field
  final $Res Function(AdventureMapControllerEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AdventureMapControllerEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized();

  @override
  String toString() {
    return 'AdventureMapControllerEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Coordinates coordinates, double zoom)
        cameraPositionChanged,
    required TResult Function(KtList<Experience> experiences)
        experiencesChanged,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CameraPositionChanged value)
        cameraPositionChanged,
    required TResult Function(_ExperiencesChanged value) experiencesChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AdventureMapControllerEvent {
  const factory _Initialized() = _$_Initialized;
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
    extends _$AdventureMapControllerEventCopyWithImpl<$Res>
    implements _$CameraPositionChangedCopyWith<$Res> {
  __$CameraPositionChangedCopyWithImpl(_CameraPositionChanged _value,
      $Res Function(_CameraPositionChanged) _then)
      : super(_value, (v) => _then(v as _CameraPositionChanged));

  @override
  _CameraPositionChanged get _value => super._value as _CameraPositionChanged;

  @override
  $Res call({
    Object? coordinates = freezed,
    Object? zoom = freezed,
  }) {
    return _then(_CameraPositionChanged(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      zoom: zoom == freezed
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc

class _$_CameraPositionChanged implements _CameraPositionChanged {
  const _$_CameraPositionChanged(
      {required this.coordinates, required this.zoom});

  @override
  final Coordinates coordinates;
  @override
  final double zoom;

  @override
  String toString() {
    return 'AdventureMapControllerEvent.cameraPositionChanged(coordinates: $coordinates, zoom: $zoom)';
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

  @JsonKey(ignore: true)
  @override
  _$CameraPositionChangedCopyWith<_CameraPositionChanged> get copyWith =>
      __$CameraPositionChangedCopyWithImpl<_CameraPositionChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Coordinates coordinates, double zoom)
        cameraPositionChanged,
    required TResult Function(KtList<Experience> experiences)
        experiencesChanged,
  }) {
    return cameraPositionChanged(coordinates, zoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
  }) {
    return cameraPositionChanged?.call(coordinates, zoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
    required TResult orElse(),
  }) {
    if (cameraPositionChanged != null) {
      return cameraPositionChanged(coordinates, zoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CameraPositionChanged value)
        cameraPositionChanged,
    required TResult Function(_ExperiencesChanged value) experiencesChanged,
  }) {
    return cameraPositionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
  }) {
    return cameraPositionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
    required TResult orElse(),
  }) {
    if (cameraPositionChanged != null) {
      return cameraPositionChanged(this);
    }
    return orElse();
  }
}

abstract class _CameraPositionChanged implements AdventureMapControllerEvent {
  const factory _CameraPositionChanged(
      {required Coordinates coordinates,
      required double zoom}) = _$_CameraPositionChanged;

  Coordinates get coordinates => throw _privateConstructorUsedError;
  double get zoom => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CameraPositionChangedCopyWith<_CameraPositionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExperiencesChangedCopyWith<$Res> {
  factory _$ExperiencesChangedCopyWith(
          _ExperiencesChanged value, $Res Function(_ExperiencesChanged) then) =
      __$ExperiencesChangedCopyWithImpl<$Res>;
  $Res call({KtList<Experience> experiences});
}

/// @nodoc
class __$ExperiencesChangedCopyWithImpl<$Res>
    extends _$AdventureMapControllerEventCopyWithImpl<$Res>
    implements _$ExperiencesChangedCopyWith<$Res> {
  __$ExperiencesChangedCopyWithImpl(
      _ExperiencesChanged _value, $Res Function(_ExperiencesChanged) _then)
      : super(_value, (v) => _then(v as _ExperiencesChanged));

  @override
  _ExperiencesChanged get _value => super._value as _ExperiencesChanged;

  @override
  $Res call({
    Object? experiences = freezed,
  }) {
    return _then(_ExperiencesChanged(
      experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as KtList<Experience>,
    ));
  }
}

/// @nodoc

class _$_ExperiencesChanged implements _ExperiencesChanged {
  const _$_ExperiencesChanged(this.experiences);

  @override
  final KtList<Experience> experiences;

  @override
  String toString() {
    return 'AdventureMapControllerEvent.experiencesChanged(experiences: $experiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExperiencesChanged &&
            (identical(other.experiences, experiences) ||
                const DeepCollectionEquality()
                    .equals(other.experiences, experiences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(experiences);

  @JsonKey(ignore: true)
  @override
  _$ExperiencesChangedCopyWith<_ExperiencesChanged> get copyWith =>
      __$ExperiencesChangedCopyWithImpl<_ExperiencesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(Coordinates coordinates, double zoom)
        cameraPositionChanged,
    required TResult Function(KtList<Experience> experiences)
        experiencesChanged,
  }) {
    return experiencesChanged(experiences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
  }) {
    return experiencesChanged?.call(experiences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(Coordinates coordinates, double zoom)?
        cameraPositionChanged,
    TResult Function(KtList<Experience> experiences)? experiencesChanged,
    required TResult orElse(),
  }) {
    if (experiencesChanged != null) {
      return experiencesChanged(experiences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_CameraPositionChanged value)
        cameraPositionChanged,
    required TResult Function(_ExperiencesChanged value) experiencesChanged,
  }) {
    return experiencesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
  }) {
    return experiencesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_CameraPositionChanged value)? cameraPositionChanged,
    TResult Function(_ExperiencesChanged value)? experiencesChanged,
    required TResult orElse(),
  }) {
    if (experiencesChanged != null) {
      return experiencesChanged(this);
    }
    return orElse();
  }
}

abstract class _ExperiencesChanged implements AdventureMapControllerEvent {
  const factory _ExperiencesChanged(KtList<Experience> experiences) =
      _$_ExperiencesChanged;

  KtList<Experience> get experiences => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ExperiencesChangedCopyWith<_ExperiencesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdventureMapControllerStateTearOff {
  const _$AdventureMapControllerStateTearOff();

  _AdventureMapControllerState call(
      {required Coordinates coordinates,
      required KtList<Experience> experiences,
      required double zoom,
      required bool loadedCoordinates}) {
    return _AdventureMapControllerState(
      coordinates: coordinates,
      experiences: experiences,
      zoom: zoom,
      loadedCoordinates: loadedCoordinates,
    );
  }
}

/// @nodoc
const $AdventureMapControllerState = _$AdventureMapControllerStateTearOff();

/// @nodoc
mixin _$AdventureMapControllerState {
  Coordinates get coordinates => throw _privateConstructorUsedError;
  KtList<Experience> get experiences => throw _privateConstructorUsedError;
  double get zoom => throw _privateConstructorUsedError;
  bool get loadedCoordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdventureMapControllerStateCopyWith<AdventureMapControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdventureMapControllerStateCopyWith<$Res> {
  factory $AdventureMapControllerStateCopyWith(
          AdventureMapControllerState value,
          $Res Function(AdventureMapControllerState) then) =
      _$AdventureMapControllerStateCopyWithImpl<$Res>;
  $Res call(
      {Coordinates coordinates,
      KtList<Experience> experiences,
      double zoom,
      bool loadedCoordinates});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$AdventureMapControllerStateCopyWithImpl<$Res>
    implements $AdventureMapControllerStateCopyWith<$Res> {
  _$AdventureMapControllerStateCopyWithImpl(this._value, this._then);

  final AdventureMapControllerState _value;
  // ignore: unused_field
  final $Res Function(AdventureMapControllerState) _then;

  @override
  $Res call({
    Object? coordinates = freezed,
    Object? experiences = freezed,
    Object? zoom = freezed,
    Object? loadedCoordinates = freezed,
  }) {
    return _then(_value.copyWith(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      experiences: experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as KtList<Experience>,
      zoom: zoom == freezed
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coordinates {
    return $CoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$AdventureMapControllerStateCopyWith<$Res>
    implements $AdventureMapControllerStateCopyWith<$Res> {
  factory _$AdventureMapControllerStateCopyWith(
          _AdventureMapControllerState value,
          $Res Function(_AdventureMapControllerState) then) =
      __$AdventureMapControllerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Coordinates coordinates,
      KtList<Experience> experiences,
      double zoom,
      bool loadedCoordinates});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$AdventureMapControllerStateCopyWithImpl<$Res>
    extends _$AdventureMapControllerStateCopyWithImpl<$Res>
    implements _$AdventureMapControllerStateCopyWith<$Res> {
  __$AdventureMapControllerStateCopyWithImpl(
      _AdventureMapControllerState _value,
      $Res Function(_AdventureMapControllerState) _then)
      : super(_value, (v) => _then(v as _AdventureMapControllerState));

  @override
  _AdventureMapControllerState get _value =>
      super._value as _AdventureMapControllerState;

  @override
  $Res call({
    Object? coordinates = freezed,
    Object? experiences = freezed,
    Object? zoom = freezed,
    Object? loadedCoordinates = freezed,
  }) {
    return _then(_AdventureMapControllerState(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      experiences: experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as KtList<Experience>,
      zoom: zoom == freezed
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdventureMapControllerState implements _AdventureMapControllerState {
  const _$_AdventureMapControllerState(
      {required this.coordinates,
      required this.experiences,
      required this.zoom,
      required this.loadedCoordinates});

  @override
  final Coordinates coordinates;
  @override
  final KtList<Experience> experiences;
  @override
  final double zoom;
  @override
  final bool loadedCoordinates;

  @override
  String toString() {
    return 'AdventureMapControllerState(coordinates: $coordinates, experiences: $experiences, zoom: $zoom, loadedCoordinates: $loadedCoordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdventureMapControllerState &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.experiences, experiences) ||
                const DeepCollectionEquality()
                    .equals(other.experiences, experiences)) &&
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
      const DeepCollectionEquality().hash(experiences) ^
      const DeepCollectionEquality().hash(zoom) ^
      const DeepCollectionEquality().hash(loadedCoordinates);

  @JsonKey(ignore: true)
  @override
  _$AdventureMapControllerStateCopyWith<_AdventureMapControllerState>
      get copyWith => __$AdventureMapControllerStateCopyWithImpl<
          _AdventureMapControllerState>(this, _$identity);
}

abstract class _AdventureMapControllerState
    implements AdventureMapControllerState {
  const factory _AdventureMapControllerState(
      {required Coordinates coordinates,
      required KtList<Experience> experiences,
      required double zoom,
      required bool loadedCoordinates}) = _$_AdventureMapControllerState;

  @override
  Coordinates get coordinates => throw _privateConstructorUsedError;
  @override
  KtList<Experience> get experiences => throw _privateConstructorUsedError;
  @override
  double get zoom => throw _privateConstructorUsedError;
  @override
  bool get loadedCoordinates => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdventureMapControllerStateCopyWith<_AdventureMapControllerState>
      get copyWith => throw _privateConstructorUsedError;
}
