// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DeviceDto _$DeviceDtoFromJson(Map<String, dynamic> json) {
  return _DeviceDto.fromJson(json);
}

class _$DeviceDtoTearOff {
  const _$DeviceDtoTearOff();

// ignore: unused_element
  _DeviceDto call({@required int id, @required String name, @required String type, @required String company}) {
    return _DeviceDto(
      id: id,
      name: name,
      type: type,
      company: company,
    );
  }
}

// ignore: unused_element
const $DeviceDto = _$DeviceDtoTearOff();

mixin _$DeviceDto {
  int get id;
  String get name;
  String get type;
  String get company;

  Map<String, dynamic> toJson();
  $DeviceDtoCopyWith<DeviceDto> get copyWith;
}

abstract class $DeviceDtoCopyWith<$Res> {
  factory $DeviceDtoCopyWith(DeviceDto value, $Res Function(DeviceDto) then) =
  _$DeviceDtoCopyWithImpl<$Res>;
  $Res call({int id, String name, String type, String company});
}

class _$DeviceDtoCopyWithImpl<$Res> implements $DeviceDtoCopyWith<$Res> {
  _$DeviceDtoCopyWithImpl(this._value, this._then);

  final DeviceDto _value;
  // ignore: unused_field
  final $Res Function(DeviceDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      company: company == freezed ? _value.company : company as String,
    ));
  }
}

abstract class _$DeviceDtoCopyWith<$Res> implements $DeviceDtoCopyWith<$Res> {
  factory _$DeviceDtoCopyWith(_DeviceDto value, $Res Function(_DeviceDto) then) =
  __$DeviceDtoCopyWithImpl<$Res>;
  
  @override
  $Res call({int id, String name, String type, String company});
}

class __$DeviceDtoCopyWithImpl<$Res> extends _$DeviceDtoCopyWithImpl<$Res>
  implements _$DeviceDtoCopyWith<$Res> {
  __$DeviceDtoCopyWithImpl(_DeviceDto _value, $Res Function(_DeviceDto) _then)
    : super(_value, (v) => _then(v as _DeviceDto));
  
  @override
  _DeviceDto get _value => super._value as _DeviceDto;
  
  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object company = freezed,
  }) {
    return _then(_DeviceDto(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      company: company == freezed ? _value.company : company as String,
    ));
  }
}

@JsonSerializable()
class _$_DeviceDto extends _DeviceDto {
  const _$_DeviceDto({@required this.id,
    @required this.name,
    @required this.type,
    @required this.company})
    : assert(id != null),
      assert(name != null),
      assert(type != null),
      assert(company != null),
      super._();
  
  factory _$_DeviceDto.fromJson(Map<String, dynamic> json) =>
    _$_$_DeviceDtoFromJson(json);
  
  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String company;

  @override
  String toString() {
    return 'DeviceDto(id: $id, name: $name, type: $type, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _DeviceDto &&
        (identical(other.id, id) ||
          const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)) &&
        (identical(other.type, type) ||
          const DeepCollectionEquality().equals(other.type, type)) &&
        (identical(other.company, company) ||
          const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(company);

  @override
  _$DeviceDtoCopyWith<_DeviceDto> get copyWith =>
    __$DeviceDtoCopyWithImpl<_DeviceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceDtoToJson(this);
  }
}

abstract class _DeviceDto extends DeviceDto {
  const _DeviceDto._() : super._();
  
  const factory _DeviceDto({@required int id,
    @required String name,
    @required String type,
    @required String company}) = _$_DeviceDto;
  
  factory _DeviceDto.fromJson(Map<String, dynamic> json) =
  _$_DeviceDto.fromJson;
  
  @override
  int get id;
  
  @override
  String get name;
  
  @override
  String get type;
  @override
  String get company;
  @override
  _$DeviceDtoCopyWith<_DeviceDto> get copyWith;
}
