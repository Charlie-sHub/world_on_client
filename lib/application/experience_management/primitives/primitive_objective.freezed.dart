// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'primitive_objective.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PrimitiveObjectiveTearOff {
  const _$PrimitiveObjectiveTearOff();

// ignore: unused_element
  _PrimitiveObjective call({@required String description, @required double latitude, @required double longitude, @required File imageFile}) {
    return _PrimitiveObjective(
      description: description,
      latitude: latitude,
      longitude: longitude,
      imageFile: imageFile,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PrimitiveObjective = _$PrimitiveObjectiveTearOff();

/// @nodoc
mixin _$PrimitiveObjective {
  String get description;
  double get latitude;
  double get longitude;
  File get imageFile;

  $PrimitiveObjectiveCopyWith<PrimitiveObjective> get copyWith;
}

/// @nodoc
abstract class $PrimitiveObjectiveCopyWith<$Res> {
  factory $PrimitiveObjectiveCopyWith(PrimitiveObjective value, $Res Function(PrimitiveObjective) then) = _$PrimitiveObjectiveCopyWithImpl<$Res>;

  $Res call({String description, double latitude, double longitude, File imageFile});
}

/// @nodoc
class _$PrimitiveObjectiveCopyWithImpl<$Res> implements $PrimitiveObjectiveCopyWith<$Res> {
  _$PrimitiveObjectiveCopyWithImpl(this._value, this._then);

  final PrimitiveObjective _value;

  // ignore: unused_field
  final $Res Function(PrimitiveObjective) _then;

  @override
  $Res call({
    Object description = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed ? _value.description : description as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

/// @nodoc
abstract class _$PrimitiveObjectiveCopyWith<$Res> implements $PrimitiveObjectiveCopyWith<$Res> {
  factory _$PrimitiveObjectiveCopyWith(_PrimitiveObjective value, $Res Function(_PrimitiveObjective) then) = __$PrimitiveObjectiveCopyWithImpl<$Res>;

  @override
  $Res call({String description, double latitude, double longitude, File imageFile});
}

/// @nodoc
class __$PrimitiveObjectiveCopyWithImpl<$Res> extends _$PrimitiveObjectiveCopyWithImpl<$Res> implements _$PrimitiveObjectiveCopyWith<$Res> {
  __$PrimitiveObjectiveCopyWithImpl(_PrimitiveObjective _value, $Res Function(_PrimitiveObjective) _then) : super(_value, (v) => _then(v as _PrimitiveObjective));

  @override
  _PrimitiveObjective get _value => super._value as _PrimitiveObjective;

  @override
  $Res call({
    Object description = freezed,
    Object latitude = freezed,
    Object longitude = freezed,
    Object imageFile = freezed,
  }) {
    return _then(_PrimitiveObjective(
      description: description == freezed ? _value.description : description as String,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      imageFile: imageFile == freezed ? _value.imageFile : imageFile as File,
    ));
  }
}

/// @nodoc
class _$_PrimitiveObjective extends _PrimitiveObjective {
  const _$_PrimitiveObjective({@required this.description, @required this.latitude, @required this.longitude, @required this.imageFile})
      : assert(description != null),
        assert(latitude != null),
        assert(longitude != null),
        assert(imageFile != null),
        super._();

  @override
  final String description;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final File imageFile;

  @override
  String toString() {
    return 'PrimitiveObjective(description: $description, latitude: $latitude, longitude: $longitude, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrimitiveObjective &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.latitude, latitude) || const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) || const DeepCollectionEquality().equals(other.longitude, longitude)) &&
            (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(imageFile);

  @override
  _$PrimitiveObjectiveCopyWith<_PrimitiveObjective> get copyWith => __$PrimitiveObjectiveCopyWithImpl<_PrimitiveObjective>(this, _$identity);
}

abstract class _PrimitiveObjective extends PrimitiveObjective {
  const _PrimitiveObjective._() : super._();

  const factory _PrimitiveObjective({@required String description, @required double latitude, @required double longitude, @required File imageFile}) = _$_PrimitiveObjective;

  @override
  String get description;

  @override
  double get latitude;

  @override
  double get longitude;

  @override
  File get imageFile;

  @override
  _$PrimitiveObjectiveCopyWith<_PrimitiveObjective> get copyWith;
}
