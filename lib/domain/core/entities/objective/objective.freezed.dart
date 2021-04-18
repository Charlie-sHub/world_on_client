// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'objective.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ObjectiveTearOff {
  const _$ObjectiveTearOff();

  _Objective call({required UniqueId id, required EntityDescription description, required Coordinates coordinates, required String imageURL, required Option<File> imageFile}) {
    return _Objective(
      id: id,
      description: description,
      coordinates: coordinates,
      imageURL: imageURL,
      imageFile: imageFile,
    );
  }
}

/// @nodoc
const $Objective = _$ObjectiveTearOff();

/// @nodoc
mixin _$Objective {
  UniqueId get id => throw _privateConstructorUsedError;
  EntityDescription get description => throw _privateConstructorUsedError;
  Coordinates get coordinates => throw _privateConstructorUsedError;
  String get imageURL => throw _privateConstructorUsedError;
  Option<File> get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ObjectiveCopyWith<Objective> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectiveCopyWith<$Res> {
  factory $ObjectiveCopyWith(Objective value, $Res Function(Objective) then) = _$ObjectiveCopyWithImpl<$Res>;

  $Res call({UniqueId id, EntityDescription description, Coordinates coordinates, String imageURL, Option<File> imageFile});

  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$ObjectiveCopyWithImpl<$Res> implements $ObjectiveCopyWith<$Res> {
  _$ObjectiveCopyWithImpl(this._value, this._then);

  final Objective _value;
  // ignore: unused_field
  final $Res Function(Objective) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? coordinates = freezed,
    Object? imageURL = freezed,
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
              as EntityDescription,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Option<File>,
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
abstract class _$ObjectiveCopyWith<$Res> implements $ObjectiveCopyWith<$Res> {
  factory _$ObjectiveCopyWith(_Objective value, $Res Function(_Objective) then) = __$ObjectiveCopyWithImpl<$Res>;

  @override
  $Res call({UniqueId id, EntityDescription description, Coordinates coordinates, String imageURL, Option<File> imageFile});

  @override
  $CoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$ObjectiveCopyWithImpl<$Res> extends _$ObjectiveCopyWithImpl<$Res> implements _$ObjectiveCopyWith<$Res> {
  __$ObjectiveCopyWithImpl(_Objective _value, $Res Function(_Objective) _then) : super(_value, (v) => _then(v as _Objective));

  @override
  _Objective get _value => super._value as _Objective;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? coordinates = freezed,
    Object? imageURL = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_Objective(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as EntityDescription,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: imageFile == freezed
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as Option<File>,
    ));
  }
}

/// @nodoc
class _$_Objective extends _Objective {
  const _$_Objective({required this.id, required this.description, required this.coordinates, required this.imageURL, required this.imageFile}) : super._();

  @override
  final UniqueId id;
  @override
  final EntityDescription description;
  @override
  final Coordinates coordinates;
  @override
  final String imageURL;
  @override
  final Option<File> imageFile;

  @override
  String toString() {
    return 'Objective(id: $id, description: $description, coordinates: $coordinates, imageURL: $imageURL, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Objective &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) || const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.coordinates, coordinates) || const DeepCollectionEquality().equals(other.coordinates, coordinates)) &&
            (identical(other.imageURL, imageURL) || const DeepCollectionEquality().equals(other.imageURL, imageURL)) &&
            (identical(other.imageFile, imageFile) || const DeepCollectionEquality().equals(other.imageFile, imageFile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(imageURL) ^
      const DeepCollectionEquality().hash(imageFile);

  @JsonKey(ignore: true)
  @override
  _$ObjectiveCopyWith<_Objective> get copyWith => __$ObjectiveCopyWithImpl<_Objective>(this, _$identity);
}

abstract class _Objective extends Objective {
  const factory _Objective({required UniqueId id, required EntityDescription description, required Coordinates coordinates, required String imageURL, required Option<File> imageFile}) = _$_Objective;

  const _Objective._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;

  @override
  EntityDescription get description => throw _privateConstructorUsedError;

  @override
  Coordinates get coordinates => throw _privateConstructorUsedError;

  @override
  String get imageURL => throw _privateConstructorUsedError;

  @override
  Option<File> get imageFile => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$ObjectiveCopyWith<_Objective> get copyWith => throw _privateConstructorUsedError;
}
