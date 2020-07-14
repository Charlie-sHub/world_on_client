// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) {
  return _LocationDto.fromJson(json);
}

class _$LocationDtoTearOff {
  const _$LocationDtoTearOff();

  _LocationDto call({@required int id, @required String city, @required String country, @required String postalCode, @required Set<ExperienceDto> experiences}) {
    return _LocationDto(
      id: id,
      city: city,
      country: country,
      postalCode: postalCode,
      experiences: experiences,
    );
  }
}

// ignore: unused_element
const $LocationDto = _$LocationDtoTearOff();

mixin _$LocationDto {
  int get id;
  String get city;
  String get country;
  String get postalCode;
  Set<ExperienceDto> get experiences;

  Map<String, dynamic> toJson();
  $LocationDtoCopyWith<LocationDto> get copyWith;
}

abstract class $LocationDtoCopyWith<$Res> {
  factory $LocationDtoCopyWith(LocationDto value, $Res Function(LocationDto) then) =
  _$LocationDtoCopyWithImpl<$Res>;
  
  $Res call({int id,
    String city,
    String country,
    String postalCode,
    Set<ExperienceDto> experiences});
}

class _$LocationDtoCopyWithImpl<$Res> implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._value, this._then);

  final LocationDto _value;
  // ignore: unused_field
  final $Res Function(LocationDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object country = freezed,
    Object postalCode = freezed,
    Object experiences = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      postalCode:
      postalCode == freezed ? _value.postalCode : postalCode as String,
      experiences: experiences == freezed
        ? _value.experiences
        : experiences as Set<ExperienceDto>,
    ));
  }
}

abstract class _$LocationDtoCopyWith<$Res>
  implements $LocationDtoCopyWith<$Res> {
  factory _$LocationDtoCopyWith(_LocationDto value, $Res Function(_LocationDto) then) =
  __$LocationDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id,
    String city,
    String country,
    String postalCode,
    Set<ExperienceDto> experiences});
}

class __$LocationDtoCopyWithImpl<$Res> extends _$LocationDtoCopyWithImpl<$Res>
  implements _$LocationDtoCopyWith<$Res> {
  __$LocationDtoCopyWithImpl(_LocationDto _value, $Res Function(_LocationDto) _then)
    : super(_value, (v) => _then(v as _LocationDto));

  @override
  _LocationDto get _value => super._value as _LocationDto;

  @override
  $Res call({
    Object id = freezed,
    Object city = freezed,
    Object country = freezed,
    Object postalCode = freezed,
    Object experiences = freezed,
  }) {
    return _then(_LocationDto(
      id: id == freezed ? _value.id : id as int,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      postalCode:
      postalCode == freezed ? _value.postalCode : postalCode as String,
      experiences: experiences == freezed
        ? _value.experiences
        : experiences as Set<ExperienceDto>,
    ));
  }
}

@JsonSerializable()
class _$_LocationDto extends _LocationDto {
  const _$_LocationDto({@required this.id,
    @required this.city,
    @required this.country,
    @required this.postalCode,
    @required this.experiences})
      : assert(id != null),
        assert(city != null),
        assert(country != null),
        assert(postalCode != null),
        assert(experiences != null),
        super._();
  
  factory _$_LocationDto.fromJson(Map<String, dynamic> json) =>
    _$_$_LocationDtoFromJson(json);

  @override
  final int id;
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
        (other is _LocationDto &&
          (identical(other.id, id) ||
            const DeepCollectionEquality().equals(other.id, id)) &&
          (identical(other.city, city) ||
            const DeepCollectionEquality().equals(other.city, city)) &&
          (identical(other.country, country) ||
            const DeepCollectionEquality()
              .equals(other.country, country)) &&
          (identical(other.postalCode, postalCode) ||
            const DeepCollectionEquality()
              .equals(other.postalCode, postalCode)) &&
          (identical(other.experiences, experiences) ||
            const DeepCollectionEquality()
              .equals(other.experiences, experiences)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(experiences);

  @override
  _$LocationDtoCopyWith<_LocationDto> get copyWith =>
    __$LocationDtoCopyWithImpl<_LocationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocationDtoToJson(this);
  }
}

abstract class _LocationDto extends LocationDto {
  const _LocationDto._() : super._();

  const factory _LocationDto({@required int id,
    @required String city,
    @required String country,
    @required String postalCode,
    @required Set<ExperienceDto> experiences}) = _$_LocationDto;

  factory _LocationDto.fromJson(Map<String, dynamic> json) =
  _$_LocationDto.fromJson;

  @override
  int get id;
  @override
  String get city;
  @override
  String get country;
  @override
  String get postalCode;
  @override
  Set<ExperienceDto> get experiences;
  @override
  _$LocationDtoCopyWith<_LocationDto> get copyWith;
}
