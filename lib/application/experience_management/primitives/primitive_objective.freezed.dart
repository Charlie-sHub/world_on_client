// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'primitive_objective.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrimitiveObjectiveTearOff {
  const _$PrimitiveObjectiveTearOff();

  _PrimitiveObjective call({required UniqueId id, required String description, required double latitude, required double longitude, required File? imageFile}) {
    return _PrimitiveObjective(
      id: id,
      description: description,
      latitude: latitude,
      longitude: longitude,
      imageFile: imageFile,
    );
  }
}

/// @nodoc
const $PrimitiveObjective = _$PrimitiveObjectiveTearOff();

/// @nodoc
mixin _$PrimitiveObjective {
  UniqueId get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrimitiveObjectiveCopyWith<PrimitiveObjective> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimitiveObjectiveCopyWith<$Res> {
  factory $PrimitiveObjectiveCopyWith(PrimitiveObjective value, $Res Function(PrimitiveObjective) then) = _$PrimitiveObjectiveCopyWithImpl<$Res>;

  $Res call({UniqueId id, String description, double latitude, double longitude, File? imageFile});
}

/// @nodoc
class _$PrimitiveObjectiveCopyWithImpl<$Res> implements $PrimitiveObjectiveCopyWith<$Res> {
  _$PrimitiveObjectiveCopyWithImpl(this._value, this._then);

  final PrimitiveObjective _value;

  // ignore: unused_field
  final $Res Function(PrimitiveObjective) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
abstract class _$PrimitiveObjectiveCopyWith<$Res> implements $PrimitiveObjectiveCopyWith<$Res> {
  factory _$PrimitiveObjectiveCopyWith(_PrimitiveObjective value, $Res Function(_PrimitiveObjective) then) = __$PrimitiveObjectiveCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, String description, double latitude, double longitude, File? imageFile});
}

/// @nodoc
class __$PrimitiveObjectiveCopyWithImpl<$Res> extends _$PrimitiveObjectiveCopyWithImpl<$Res> implements _$PrimitiveObjectiveCopyWith<$Res> {
  __$PrimitiveObjectiveCopyWithImpl(_PrimitiveObjective _value, $Res Function(_PrimitiveObjective) _then) : super(_value, (v) => _then(v as _PrimitiveObjective));

  @override
  _PrimitiveObjective get _value => super._value as _PrimitiveObjective;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_PrimitiveObjective(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_PrimitiveObjective extends _PrimitiveObjective {
  const _$_PrimitiveObjective({required this.id, required this.description, required this.latitude, required this.longitude, required this.imageFile}) : super._();

  @override
  final UniqueId id;
  @override
  final String description;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'PrimitiveObjective(id: $id, description: $description, latitude: $latitude, longitude: $longitude, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrimitiveObjective &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.latitude, latitude) || const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) || const DeepCollectionEquality().equals(other.longitude, longitude)) &&
            (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(imageFile);
  
  @JsonKey(ignore: true)
  @override
  _$PrimitiveObjectiveCopyWith<_PrimitiveObjective> get copyWith => __$PrimitiveObjectiveCopyWithImpl<_PrimitiveObjective>(this, _$identity);
}

abstract class _PrimitiveObjective extends PrimitiveObjective {
  const factory _PrimitiveObjective({required UniqueId id, required String description, required double latitude, required double longitude, required File? imageFile}) = _$_PrimitiveObjective;

  const _PrimitiveObjective._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  double get latitude => throw _privateConstructorUsedError;

  @override
  double get longitude => throw _privateConstructorUsedError;

  @override
  File? get imageFile => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$PrimitiveObjectiveCopyWith<_PrimitiveObjective> get copyWith => throw _privateConstructorUsedError;
}
