// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'objective_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ObjectiveDto _$ObjectiveDtoFromJson(Map<String, dynamic> json) {
  return _ObjectiveDto.fromJson(json);
}

/// @nodoc
class _$ObjectiveDtoTearOff {
  const _$ObjectiveDtoTearOff();

// ignore: unused_element
  _ObjectiveDto call(
      {@required String id,
      @required String description,
      @required CoordinatesDto coordinates,
      @required String imageURL}) {
    return _ObjectiveDto(
      id: id,
      description: description,
      coordinates: coordinates,
      imageURL: imageURL,
    );
  }

// ignore: unused_element
  ObjectiveDto fromJson(Map<String, Object> json) {
    return ObjectiveDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ObjectiveDto = _$ObjectiveDtoTearOff();

/// @nodoc
mixin _$ObjectiveDto {
  String get id;
  String get description;
  CoordinatesDto get coordinates;
  String get imageURL;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ObjectiveDtoCopyWith<ObjectiveDto> get copyWith;
}

/// @nodoc
abstract class $ObjectiveDtoCopyWith<$Res> {
  factory $ObjectiveDtoCopyWith(
          ObjectiveDto value, $Res Function(ObjectiveDto) then) =
      _$ObjectiveDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String description,
      CoordinatesDto coordinates,
      String imageURL});

  $CoordinatesDtoCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$ObjectiveDtoCopyWithImpl<$Res> implements $ObjectiveDtoCopyWith<$Res> {
  _$ObjectiveDtoCopyWithImpl(this._value, this._then);

  final ObjectiveDto _value;
  // ignore: unused_field
  final $Res Function(ObjectiveDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object coordinates = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      description:
          description == freezed ? _value.description : description as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as CoordinatesDto,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }

  @override
  $CoordinatesDtoCopyWith<$Res> get coordinates {
    if (_value.coordinates == null) {
      return null;
    }
    return $CoordinatesDtoCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value));
    });
  }
}

/// @nodoc
abstract class _$ObjectiveDtoCopyWith<$Res>
    implements $ObjectiveDtoCopyWith<$Res> {
  factory _$ObjectiveDtoCopyWith(
          _ObjectiveDto value, $Res Function(_ObjectiveDto) then) =
      __$ObjectiveDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String description,
      CoordinatesDto coordinates,
      String imageURL});

  @override
  $CoordinatesDtoCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$ObjectiveDtoCopyWithImpl<$Res> extends _$ObjectiveDtoCopyWithImpl<$Res>
    implements _$ObjectiveDtoCopyWith<$Res> {
  __$ObjectiveDtoCopyWithImpl(
      _ObjectiveDto _value, $Res Function(_ObjectiveDto) _then)
      : super(_value, (v) => _then(v as _ObjectiveDto));

  @override
  _ObjectiveDto get _value => super._value as _ObjectiveDto;

  @override
  $Res call({
    Object id = freezed,
    Object description = freezed,
    Object coordinates = freezed,
    Object imageURL = freezed,
  }) {
    return _then(_ObjectiveDto(
      id: id == freezed ? _value.id : id as String,
      description:
          description == freezed ? _value.description : description as String,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates as CoordinatesDto,
      imageURL: imageURL == freezed ? _value.imageURL : imageURL as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ObjectiveDto extends _ObjectiveDto {
  const _$_ObjectiveDto(
      {@required this.id,
      @required this.description,
      @required this.coordinates,
      @required this.imageURL})
      : assert(id != null),
        assert(description != null),
        assert(coordinates != null),
        assert(imageURL != null),
        super._();

  factory _$_ObjectiveDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ObjectiveDtoFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final CoordinatesDto coordinates;
  @override
  final String imageURL;

  @override
  String toString() {
    return 'ObjectiveDto(id: $id, description: $description, coordinates: $coordinates, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectiveDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.imageURL, imageURL) ||
                const DeepCollectionEquality()
                    .equals(other.imageURL, imageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(imageURL);

  @JsonKey(ignore: true)
  @override
  _$ObjectiveDtoCopyWith<_ObjectiveDto> get copyWith =>
      __$ObjectiveDtoCopyWithImpl<_ObjectiveDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ObjectiveDtoToJson(this);
  }
}

abstract class _ObjectiveDto extends ObjectiveDto {
  const _ObjectiveDto._() : super._();
  const factory _ObjectiveDto(
      {@required String id,
      @required String description,
      @required CoordinatesDto coordinates,
      @required String imageURL}) = _$_ObjectiveDto;

  factory _ObjectiveDto.fromJson(Map<String, dynamic> json) =
      _$_ObjectiveDto.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  CoordinatesDto get coordinates;
  @override
  String get imageURL;
  @override
  @JsonKey(ignore: true)
  _$ObjectiveDtoCopyWith<_ObjectiveDto> get copyWith;
}
