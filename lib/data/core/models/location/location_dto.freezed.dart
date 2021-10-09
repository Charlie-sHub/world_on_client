// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) {
  return _LocationDto.fromJson(json);
}

/// @nodoc
class _$LocationDtoTearOff {
  const _$LocationDtoTearOff();

  _LocationDto call(
      {required String id,
      required String city,
      required String country,
      required String postalCode,
      required Set<ExperienceDto> experiences}) {
    return _LocationDto(
      id: id,
      city: city,
      country: country,
      postalCode: postalCode,
      experiences: experiences,
    );
  }

  LocationDto fromJson(Map<String, Object?> json) {
    return LocationDto.fromJson(json);
  }
}

/// @nodoc
const $LocationDto = _$LocationDtoTearOff();

/// @nodoc
mixin _$LocationDto {
  String get id => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get postalCode => throw _privateConstructorUsedError;
  Set<ExperienceDto> get experiences => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationDtoCopyWith<LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(
          LocationDto value, $Res Function(LocationDto) then) =
      _$LocationDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String city,
      String country,
      String postalCode,
      Set<ExperienceDto> experiences});
}

/// @nodoc
class _$LocationDtoCopyWithImpl<$Res> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  final LocationDto _value;
  // ignore: unused_field
  final $Res Function(LocationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
    Object? experiences = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      experiences: experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as Set<ExperienceDto>,
    ));
  }
}

/// @nodoc
abstract class _$LocationDtoCopyWith<$Res>
    implements $LocationDtoCopyWith<$Res> {
  factory _$LocationDtoCopyWith(
          _LocationDto value, $Res Function(_LocationDto) then) =
      __$LocationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String city,
      String country,
      String postalCode,
      Set<ExperienceDto> experiences});
}

/// @nodoc
class __$LocationDtoCopyWithImpl<$Res> extends _$LocationDtoCopyWithImpl<$Res>
    implements _$LocationDtoCopyWith<$Res> {
  __$LocationDtoCopyWithImpl(
      _LocationDto _value, $Res Function(_LocationDto) _then)
      : super(_value, (v) => _then(v as _LocationDto));

  @override
  _LocationDto get _value => super._value as _LocationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
    Object? experiences = freezed,
  }) {
    return _then(_LocationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: postalCode == freezed
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      experiences: experiences == freezed
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as Set<ExperienceDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationDto extends _LocationDto {
  const _$_LocationDto(
      {required this.id,
      required this.city,
      required this.country,
      required this.postalCode,
      required this.experiences})
      : super._();

  factory _$_LocationDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationDtoFromJson(json);

  @override
  final String id;
  @override
  final String city;
  @override
  final String country;
  @override
  final String postalCode;
  @override
  final Set<ExperienceDto> experiences;

  @override
  String toString() {
    return 'LocationDto(id: $id, city: $city, country: $country, postalCode: $postalCode, experiences: $experiences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            const DeepCollectionEquality()
                .equals(other.experiences, experiences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, city, country, postalCode,
      const DeepCollectionEquality().hash(experiences));

  @JsonKey(ignore: true)
  @override
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      __$LocationDtoCopyWithImpl<_LocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationDtoToJson(this);
  }
}

abstract class _LocationDto extends LocationDto {
  const factory _LocationDto(
      {required String id,
      required String city,
      required String country,
      required String postalCode,
      required Set<ExperienceDto> experiences}) = _$_LocationDto;
  const _LocationDto._() : super._();

  factory _LocationDto.fromJson(Map<String, dynamic> json) =
      _$_LocationDto.fromJson;

  @override
  String get id;
  @override
  String get city;
  @override
  String get country;
  @override
  String get postalCode;
  @override
  Set<ExperienceDto> get experiences;
  @override
  @JsonKey(ignore: true)
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
