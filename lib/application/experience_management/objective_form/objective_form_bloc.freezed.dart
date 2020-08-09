// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'objective_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ObjectiveFormEventTearOff {
  const _$ObjectiveFormEventTearOff();

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _CoordinatesChanged coordinatesChanged({@required double latitude, @required double longitude}) {
    return _CoordinatesChanged(
      latitude: latitude,
      longitude: longitude,
    );
  }

// ignore: unused_element
  _ImageChanged imageChanged(File imageFile) {
    return _ImageChanged(
      imageFile,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

// ignore: unused_element
const $ObjectiveFormEvent = _$ObjectiveFormEventTearOff();

mixin _$ObjectiveFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  });
}

abstract class $ObjectiveFormEventCopyWith<$Res> {
  factory $ObjectiveFormEventCopyWith(ObjectiveFormEvent value, $Res Function(ObjectiveFormEvent) then) = _$ObjectiveFormEventCopyWithImpl<$Res>;
}

class _$ObjectiveFormEventCopyWithImpl<$Res> implements $ObjectiveFormEventCopyWith<$Res> {
  _$ObjectiveFormEventCopyWithImpl(this._value, this._then);

  final ObjectiveFormEvent _value;

  // ignore: unused_field
  final $Res Function(ObjectiveFormEvent) _then;
}

abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(_DescriptionChanged value, $Res Function(_DescriptionChanged) then) = __$DescriptionChangedCopyWithImpl<$Res>;

  $Res call({String description});
}

class __$DescriptionChangedCopyWithImpl<$Res> extends _$ObjectiveFormEventCopyWithImpl<$Res> implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(_DescriptionChanged _value, $Res Function(_DescriptionChanged) _then) : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'ObjectiveFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DescriptionChanged && (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith => __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ObjectiveFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;

  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

abstract class _$CoordinatesChangedCopyWith<$Res> {
  factory _$CoordinatesChangedCopyWith(_CoordinatesChanged value, $Res Function(_CoordinatesChanged) then) = __$CoordinatesChangedCopyWithImpl<$Res>;

  $Res call({double latitude, double longitude});
}

class __$CoordinatesChangedCopyWithImpl<$Res> extends _$ObjectiveFormEventCopyWithImpl<$Res> implements _$CoordinatesChangedCopyWith<$Res> {
  __$CoordinatesChangedCopyWithImpl(_CoordinatesChanged _value, $Res Function(_CoordinatesChanged) _then) : super(_value, (v) => _then(v as _CoordinatesChanged));

  @override
  _CoordinatesChanged get _value => super._value as _CoordinatesChanged;

  @override
  $Res call({
    Object latitude = freezed,
    Object longitude = freezed,
  }) {
    return _then(_CoordinatesChanged(
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
    ));
  }
}

class _$_CoordinatesChanged implements _CoordinatesChanged {
  const _$_CoordinatesChanged({@required this.latitude, @required this.longitude})
      : assert(latitude != null),
        assert(longitude != null);

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
        (other is _CoordinatesChanged &&
            (identical(other.latitude, latitude) || const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) || const DeepCollectionEquality().equals(other.longitude, longitude)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(latitude) ^ const DeepCollectionEquality().hash(longitude);

  @override
  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith => __$CoordinatesChangedCopyWithImpl<_CoordinatesChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return coordinatesChanged(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChanged != null) {
      return coordinatesChanged(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return coordinatesChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (coordinatesChanged != null) {
      return coordinatesChanged(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesChanged implements ObjectiveFormEvent {
  const factory _CoordinatesChanged({@required double latitude, @required double longitude}) = _$_CoordinatesChanged;

  double get latitude;

  double get longitude;

  _$CoordinatesChangedCopyWith<_CoordinatesChanged> get copyWith;
}

abstract class _$ImageChangedCopyWith<$Res> {
  factory _$ImageChangedCopyWith(_ImageChanged value, $Res Function(_ImageChanged) then) = __$ImageChangedCopyWithImpl<$Res>;

  $Res call({File imageFile});
}

class __$ImageChangedCopyWithImpl<$Res> extends _$ObjectiveFormEventCopyWithImpl<$Res> implements _$ImageChangedCopyWith<$Res> {
  __$ImageChangedCopyWithImpl(_ImageChanged _value, $Res Function(_ImageChanged) _then) : super(_value, (v) => _then(v as _ImageChanged));

  @override
  _ImageChanged get _value => super._value as _ImageChanged;

  @override
  $Res call({
    Object imageFile = freezed,
  }) {
    return _then(_ImageChanged(
      imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

class _$_ImageChanged implements _ImageChanged {
  const _$_ImageChanged(this.imageFile) : assert(imageFile != null);

  @override
  final File imageFile;

  @override
  String toString() {
    return 'ObjectiveFormEvent.imageChanged(imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ImageChanged && (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageFile);

  @override
  _$ImageChangedCopyWith<_ImageChanged> get copyWith => __$ImageChangedCopyWithImpl<_ImageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return imageChanged(imageFile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements ObjectiveFormEvent {
  const factory _ImageChanged(File imageFile) = _$_ImageChanged;

  File get imageFile;

  _$ImageChangedCopyWith<_ImageChanged> get copyWith;
}

abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(_Submitted value, $Res Function(_Submitted) then) = __$SubmittedCopyWithImpl<$Res>;
}

class __$SubmittedCopyWithImpl<$Res> extends _$ObjectiveFormEventCopyWithImpl<$Res> implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then) : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'ObjectiveFormEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result descriptionChanged(String description),
    @required Result coordinatesChanged(double latitude, double longitude),
    @required Result imageChanged(File imageFile),
    @required Result submitted(),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result descriptionChanged(String description),
    Result coordinatesChanged(double latitude, double longitude),
    Result imageChanged(File imageFile),
    Result submitted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result coordinatesChanged(_CoordinatesChanged value),
    @required Result imageChanged(_ImageChanged value),
    @required Result submitted(_Submitted value),
  }) {
    assert(descriptionChanged != null);
    assert(coordinatesChanged != null);
    assert(imageChanged != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result descriptionChanged(_DescriptionChanged value),
    Result coordinatesChanged(_CoordinatesChanged value),
    Result imageChanged(_ImageChanged value),
    Result submitted(_Submitted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ObjectiveFormEvent {
  const factory _Submitted() = _$_Submitted;
}

class _$ObjectiveFormStateTearOff {
  const _$ObjectiveFormStateTearOff();

// ignore: unused_element
  _ObjectiveFormState call({@required Objective objective, @required bool showErrorMessages, @required bool isSubmitting}) {
    return _ObjectiveFormState(
      objective: objective,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
    );
  }
}

// ignore: unused_element
const $ObjectiveFormState = _$ObjectiveFormStateTearOff();

mixin _$ObjectiveFormState {
  Objective get objective;

  bool get showErrorMessages;

  bool get isSubmitting;

  $ObjectiveFormStateCopyWith<ObjectiveFormState> get copyWith;
}

abstract class $ObjectiveFormStateCopyWith<$Res> {
  factory $ObjectiveFormStateCopyWith(ObjectiveFormState value, $Res Function(ObjectiveFormState) then) = _$ObjectiveFormStateCopyWithImpl<$Res>;

  $Res call({Objective objective, bool showErrorMessages, bool isSubmitting});

  $ObjectiveCopyWith<$Res> get objective;
}

class _$ObjectiveFormStateCopyWithImpl<$Res> implements $ObjectiveFormStateCopyWith<$Res> {
  _$ObjectiveFormStateCopyWithImpl(this._value, this._then);

  final ObjectiveFormState _value;

  // ignore: unused_field
  final $Res Function(ObjectiveFormState) _then;

  @override
  $Res call({
    Object objective = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      objective: objective == freezed ? _value.objective : objective as Objective,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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

abstract class _$ObjectiveFormStateCopyWith<$Res> implements $ObjectiveFormStateCopyWith<$Res> {
  factory _$ObjectiveFormStateCopyWith(_ObjectiveFormState value, $Res Function(_ObjectiveFormState) then) = __$ObjectiveFormStateCopyWithImpl<$Res>;

  @override
  $Res call({Objective objective, bool showErrorMessages, bool isSubmitting});

  @override
  $ObjectiveCopyWith<$Res> get objective;
}

class __$ObjectiveFormStateCopyWithImpl<$Res> extends _$ObjectiveFormStateCopyWithImpl<$Res> implements _$ObjectiveFormStateCopyWith<$Res> {
  __$ObjectiveFormStateCopyWithImpl(_ObjectiveFormState _value, $Res Function(_ObjectiveFormState) _then) : super(_value, (v) => _then(v as _ObjectiveFormState));

  @override
  _ObjectiveFormState get _value => super._value as _ObjectiveFormState;

  @override
  $Res call({
    Object objective = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_ObjectiveFormState(
      objective: objective == freezed ? _value.objective : objective as Objective,
      showErrorMessages: showErrorMessages == freezed ? _value.showErrorMessages : showErrorMessages as bool,
      isSubmitting: isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

class _$_ObjectiveFormState implements _ObjectiveFormState {
  const _$_ObjectiveFormState({@required this.objective, @required this.showErrorMessages, @required this.isSubmitting})
      : assert(objective != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null);

  @override
  final Objective objective;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'ObjectiveFormState(objective: $objective, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectiveFormState &&
            (identical(other.objective, objective) || const DeepCollectionEquality().equals(other.objective, objective)) &&
            (identical(other.showErrorMessages, showErrorMessages) || const DeepCollectionEquality().equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) || const DeepCollectionEquality().equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objective) ^ const DeepCollectionEquality().hash(showErrorMessages) ^ const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$ObjectiveFormStateCopyWith<_ObjectiveFormState> get copyWith => __$ObjectiveFormStateCopyWithImpl<_ObjectiveFormState>(this, _$identity);
}

abstract class _ObjectiveFormState implements ObjectiveFormState {
  const factory _ObjectiveFormState({@required Objective objective, @required bool showErrorMessages, @required bool isSubmitting}) = _$_ObjectiveFormState;

  @override
  Objective get objective;

  @override
  bool get showErrorMessages;

  @override
  bool get isSubmitting;

  @override
  _$ObjectiveFormStateCopyWith<_ObjectiveFormState> get copyWith;
}
