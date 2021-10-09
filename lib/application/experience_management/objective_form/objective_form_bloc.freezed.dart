// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'objective_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ObjectiveFormEventTearOff {
  const _$ObjectiveFormEventTearOff();

  _Initialized initialized() {
    return const _Initialized();
  }

  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _CoordinatesChanged coordinatesChanged(
      {required double latitude, required double longitude}) {
    return _CoordinatesChanged(
      latitude: latitude,
      longitude: longitude,
    );
  }

  _ImageChanged imageChanged(File imageFile) {
    return _ImageChanged(
      imageFile,
    );
  }

  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
const $ObjectiveFormEvent = _$ObjectiveFormEventTearOff();

/// @nodoc
mixin _$ObjectiveFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double latitude, double longitude)
        coordinatesChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectiveFormEventCopyWith<$Res> {
  factory $ObjectiveFormEventCopyWith(
          ObjectiveFormEvent value, $Res Function(ObjectiveFormEvent) then) =
      _$ObjectiveFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ObjectiveFormEventCopyWithImpl<$Res>
    implements $ObjectiveFormEventCopyWith<$Res> {
  _$ObjectiveFormEventCopyWithImpl(this._value, this._then);

  final ObjectiveFormEvent _value;
  // ignore: unused_field
  final $Res Function(ObjectiveFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ObjectiveFormEventCopyWithImpl<$Res>
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
    return 'ObjectiveFormEvent.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double latitude, double longitude)
        coordinatesChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
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
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ObjectiveFormEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$ObjectiveFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'ObjectiveFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DescriptionChanged &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double latitude, double longitude)
        coordinatesChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
  }) {
    return descriptionChanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return descriptionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ObjectiveFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CoordinatesChangedCopyWith<$Res> {
  factory _$CoordinatesChangedCopyWith(
          _CoordinatesChanged value, $Res Function(_CoordinatesChanged) then) =
      __$CoordinatesChangedCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinatesChangedCopyWithImpl<$Res>
    extends _$ObjectiveFormEventCopyWithImpl<$Res>
    implements _$CoordinatesChangedCopyWith<$Res> {
  __$CoordinatesChangedCopyWithImpl(
      _CoordinatesChanged _value, $Res Function(_CoordinatesChanged) _then)
      : super(_value, (v) => _then(v as _CoordinatesChanged));

  @override
  _CoordinatesChanged get _value => super._value as _CoordinatesChanged;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_CoordinatesChanged(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CoordinatesChanged implements _CoordinatesChanged {
  const _$_CoordinatesChanged(
      {required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'ObjectiveFormEvent.coordinatesChanged(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoordinatesChanged &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith =>
      __$CoordinatesChangedCopyWithImpl<_CoordinatesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double latitude, double longitude)
        coordinatesChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return coordinatesChanged(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
  }) {
    return coordinatesChanged?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (coordinatesChanged != null) {
      return coordinatesChanged(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return coordinatesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return coordinatesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (coordinatesChanged != null) {
      return coordinatesChanged(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesChanged implements ObjectiveFormEvent {
  const factory _CoordinatesChanged(
      {required double latitude,
      required double longitude}) = _$_CoordinatesChanged;

  double get latitude;
  double get longitude;
  @JsonKey(ignore: true)
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(
          _ImageChanged value, $Res Function(_ImageChanged) then) =
      __$ImageChangedCopyWithImpl<$Res>;
  $Res call({File imageFile});
}

/// @nodoc
class __$ImageChangedCopyWithImpl<$Res>
    extends _$ObjectiveFormEventCopyWithImpl<$Res>
    implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(
      _ImageChanged _value, $Res Function(_ImageChanged) _then)
      : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_ImageChanged(
      imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imageFile);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'ObjectiveFormEvent.imageChanged(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageChanged &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @JsonKey(ignore: true)
  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double latitude, double longitude)
        coordinatesChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return imageChanged(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
  }) {
    return imageChanged?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements ObjectiveFormEvent {
  const factory _ImageChanged(File imageFile) = _$_ImageChanged;

  File get imageFile;
  @JsonKey(ignore: true)
  _$ImageChangedCopyWith<_ImageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$ObjectiveFormEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'ObjectiveFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String description) descriptionChanged,
    required TResult Function(double latitude, double longitude)
        coordinatesChanged,
    required TResult Function(File imageFile) imageChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String description)? descriptionChanged,
    TResult Function(double latitude, double longitude)? coordinatesChanged,
    TResult Function(File imageFile)? imageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_CoordinatesChanged value) coordinatesChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_CoordinatesChanged value)? coordinatesChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ObjectiveFormEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$ObjectiveFormStateTearOff {
  const _$ObjectiveFormStateTearOff();

  _ObjectiveFormState call(
      {required Objective objective,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool loadedCoordinates}) {
    return _ObjectiveFormState(
      objective: objective,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      loadedCoordinates: loadedCoordinates,
    );
  }
}

/// @nodoc
const $ObjectiveFormState = _$ObjectiveFormStateTearOff();

/// @nodoc
mixin _$ObjectiveFormState {
  Objective get objective => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get loadedCoordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectiveFormStateCopyWith<ObjectiveFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectiveFormStateCopyWith<$Res> {
  factory $ObjectiveFormStateCopyWith(
          ObjectiveFormState value, $Res Function(ObjectiveFormState) then) =
      _$ObjectiveFormStateCopyWithImpl<$Res>;
  $Res call(
      {Objective objective,
      bool showErrorMessages,
      bool isSubmitting,
      bool loadedCoordinates});

  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class _$ObjectiveFormStateCopyWithImpl<$Res>
    implements $ObjectiveFormStateCopyWith<$Res> {
  _$ObjectiveFormStateCopyWithImpl(this._value, this._then);

  final ObjectiveFormState _value;
  // ignore: unused_field
  final $Res Function(ObjectiveFormState) _then;

  @override
  $Res call({
    Object? objective = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? loadedCoordinates = freezed,
  }) {
    return _then(_value.copyWith(
      objective: objective == freezed
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as Objective,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$ObjectiveFormStateCopyWith<$Res>
    implements $ObjectiveFormStateCopyWith<$Res> {
  factory _$ObjectiveFormStateCopyWith(
          _ObjectiveFormState value, $Res Function(_ObjectiveFormState) then) =
      __$ObjectiveFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Objective objective,
      bool showErrorMessages,
      bool isSubmitting,
      bool loadedCoordinates});

  @override
  $ObjectiveCopyWith<$Res> get objective;
}

/// @nodoc
class __$ObjectiveFormStateCopyWithImpl<$Res>
    extends _$ObjectiveFormStateCopyWithImpl<$Res>
    implements _$ObjectiveFormStateCopyWith<$Res> {
  __$ObjectiveFormStateCopyWithImpl(
      _ObjectiveFormState _value, $Res Function(_ObjectiveFormState) _then)
      : super(_value, (v) => _then(v as _ObjectiveFormState));

  @override
  _ObjectiveFormState get _value => super._value as _ObjectiveFormState;

  @override
  $Res call({
    Object? objective = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? loadedCoordinates = freezed,
  }) {
    return _then(_ObjectiveFormState(
      objective: objective == freezed
          ? _value.objective
          : objective // ignore: cast_nullable_to_non_nullable
              as Objective,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      loadedCoordinates: loadedCoordinates == freezed
          ? _value.loadedCoordinates
          : loadedCoordinates // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ObjectiveFormState implements _ObjectiveFormState {
  const _$_ObjectiveFormState(
      {required this.objective,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.loadedCoordinates});

  @override
  final Objective objective;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool loadedCoordinates;

  @override
  String toString() {
    return 'ObjectiveFormState(objective: $objective, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, loadedCoordinates: $loadedCoordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ObjectiveFormState &&
            (identical(other.objective, objective) ||
                other.objective == objective) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.loadedCoordinates, loadedCoordinates) ||
                other.loadedCoordinates == loadedCoordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, objective, showErrorMessages,
      isSubmitting, loadedCoordinates);

  @JsonKey(ignore: true)
  @override
  _$ObjectiveFormStateCopyWith<_ObjectiveFormState> get copyWith =>
      __$ObjectiveFormStateCopyWithImpl<_ObjectiveFormState>(this, _$identity);
}

abstract class _ObjectiveFormState implements ObjectiveFormState {
  const factory _ObjectiveFormState(
      {required Objective objective,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool loadedCoordinates}) = _$_ObjectiveFormState;

  @override
  Objective get objective;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get loadedCoordinates;
  @override
  @JsonKey(ignore: true)
  _$ObjectiveFormStateCopyWith<_ObjectiveFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
