// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coordinates_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoordinatesDto _$CoordinatesDtoFromJson(Map<String, dynamic> json) {
  return _CoordinatesDto.fromJson(json);
}

/// @nodoc
class _$CoordinatesDtoTearOff {
  const _$CoordinatesDtoTearOff();

  _CoordinatesDto call({required double latitude, required double longitude}) {
    return _CoordinatesDto(
      latitude: latitude,
      longitude: longitude,
    );
  }

  CoordinatesDto fromJson(Map<String, Object> json) {
    return CoordinatesDto.fromJson(json);
  }
}

/// @nodoc
const $CoordinatesDto = _$CoordinatesDtoTearOff();

/// @nodoc
mixin _$CoordinatesDto {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesDtoCopyWith<CoordinatesDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesDtoCopyWith<$Res> {
  factory $CoordinatesDtoCopyWith(CoordinatesDto value, $Res Function(CoordinatesDto) then) =
      _$CoordinatesDtoCopyWithImpl<$Res>;

  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$CoordinatesDtoCopyWithImpl<$Res> implements $CoordinatesDtoCopyWith<$Res> {
  _$CoordinatesDtoCopyWithImpl(this._value, this._then);

  final CoordinatesDto _value;

  // ignore: unused_field
  final $Res Function(CoordinatesDto) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$CoordinatesDtoCopyWith<$Res> implements $CoordinatesDtoCopyWith<$Res> {
  factory _$CoordinatesDtoCopyWith(_CoordinatesDto value, $Res Function(_CoordinatesDto) then) =
      __$CoordinatesDtoCopyWithImpl<$Res>;

  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$CoordinatesDtoCopyWithImpl<$Res> extends _$CoordinatesDtoCopyWithImpl<$Res>
    implements _$CoordinatesDtoCopyWith<$Res> {
  __$CoordinatesDtoCopyWithImpl(_CoordinatesDto _value, $Res Function(_CoordinatesDto) _then)
      : super(_value, (v) => _then(v as _CoordinatesDto));

  @override
  _CoordinatesDto get _value => super._value as _CoordinatesDto;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_CoordinatesDto(
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
@JsonSerializable()
class _$_CoordinatesDto extends _CoordinatesDto {
  const _$_CoordinatesDto({required this.latitude, required this.longitude}) : super._();

  factory _$_CoordinatesDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CoordinatesDtoFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'CoordinatesDto(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoordinatesDto &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality().equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality().equals(other.longitude, longitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude);

  @JsonKey(ignore: true)
  @override
  _$CoordinatesDtoCopyWith<_CoordinatesDto> get copyWith =>
      __$CoordinatesDtoCopyWithImpl<_CoordinatesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoordinatesDtoToJson(this);
  }
}

abstract class _CoordinatesDto extends CoordinatesDto {
  const factory _CoordinatesDto({required double latitude, required double longitude}) =
      _$_CoordinatesDto;

  const _CoordinatesDto._() : super._();

  factory _CoordinatesDto.fromJson(Map<String, dynamic> json) = _$_CoordinatesDto.fromJson;

  @override
  double get latitude => throw _privateConstructorUsedError;

  @override
  double get longitude => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$CoordinatesDtoCopyWith<_CoordinatesDto> get copyWith => throw _privateConstructorUsedError;
}
