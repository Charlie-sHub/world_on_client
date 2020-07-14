// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'system_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SystemDto _$SystemDtoFromJson(Map<String, dynamic> json) {
  return _SystemDto.fromJson(json);
}

class _$SystemDtoTearOff {
  const _$SystemDtoTearOff();

  _SystemDto call({@required int id, @required String name, @required String type, @required String company}) {
    return _SystemDto(
      id: id,
      name: name,
      type: type,
      company: company,
    );
  }
}

// ignore: unused_element
const $SystemDto = _$SystemDtoTearOff();

mixin _$SystemDto {
  int get id;
  String get name;
  String get type;
  String get company;

  Map<String, dynamic> toJson();
  $SystemDtoCopyWith<SystemDto> get copyWith;
}

abstract class $SystemDtoCopyWith<$Res> {
  factory $SystemDtoCopyWith(SystemDto value, $Res Function(SystemDto) then) =
  _$SystemDtoCopyWithImpl<$Res>;
  $Res call({int id, String name, String type, String company});
}

class _$SystemDtoCopyWithImpl<$Res> implements $SystemDtoCopyWith<$Res> {
  _$SystemDtoCopyWithImpl(this._value, this._then);

  final SystemDto _value;
  // ignore: unused_field
  final $Res Function(SystemDto) _then;

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

abstract class _$SystemDtoCopyWith<$Res> implements $SystemDtoCopyWith<$Res> {
  factory _$SystemDtoCopyWith(_SystemDto value, $Res Function(_SystemDto) then) =
  __$SystemDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String type, String company});
}

class __$SystemDtoCopyWithImpl<$Res> extends _$SystemDtoCopyWithImpl<$Res>
  implements _$SystemDtoCopyWith<$Res> {
  __$SystemDtoCopyWithImpl(_SystemDto _value, $Res Function(_SystemDto) _then)
    : super(_value, (v) => _then(v as _SystemDto));

  @override
  _SystemDto get _value => super._value as _SystemDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object company = freezed,
  }) {
    return _then(_SystemDto(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      company: company == freezed ? _value.company : company as String,
    ));
  }
}

@JsonSerializable()
class _$_SystemDto extends _SystemDto {
  const _$_SystemDto({@required this.id,
    @required this.name,
    @required this.type,
    @required this.company})
      : assert(id != null),
        assert(name != null),
        assert(type != null),
        assert(company != null),
        super._();
  
  factory _$_SystemDto.fromJson(Map<String, dynamic> json) =>
    _$_$_SystemDtoFromJson(json);

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
    return 'SystemDto(id: $id, name: $name, type: $type, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SystemDto &&
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
  _$SystemDtoCopyWith<_SystemDto> get copyWith =>
    __$SystemDtoCopyWithImpl<_SystemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SystemDtoToJson(this);
  }
}

abstract class _SystemDto extends SystemDto {
  const _SystemDto._() : super._();

  const factory _SystemDto({@required int id,
    @required String name,
    @required String type,
    @required String company}) = _$_SystemDto;

  factory _SystemDto.fromJson(Map<String, dynamic> json) =
  _$_SystemDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get company;
  @override
  _$SystemDtoCopyWith<_SystemDto> get copyWith;
}
