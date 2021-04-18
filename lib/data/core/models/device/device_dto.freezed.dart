// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'device_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceDto _$DeviceDtoFromJson(Map<String, dynamic> json) {
  return _DeviceDto.fromJson(json);
}

/// @nodoc
class _$DeviceDtoTearOff {
  const _$DeviceDtoTearOff();

  _DeviceDto call({required String id, required String name, required String type, required String company}) {
    return _DeviceDto(
      id: id,
      name: name,
      type: type,
      company: company,
    );
  }

  DeviceDto fromJson(Map<String, Object> json) {
    return DeviceDto.fromJson(json);
  }
}

/// @nodoc
const $DeviceDto = _$DeviceDtoTearOff();

/// @nodoc
mixin _$DeviceDto {
  String get id => throw _privateConstructorUsedError;

  String get name => throw _privateConstructorUsedError;

  String get type => throw _privateConstructorUsedError;

  String get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceDtoCopyWith<DeviceDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDtoCopyWith<$Res> {
  factory $DeviceDtoCopyWith(DeviceDto value, $Res Function(DeviceDto) then) = _$DeviceDtoCopyWithImpl<$Res>;

  $Res call({String id, String name, String type, String company});
}

/// @nodoc
class _$DeviceDtoCopyWithImpl<$Res> implements $DeviceDtoCopyWith<$Res> {
  _$DeviceDtoCopyWithImpl(this._value, this._then);

  final DeviceDto _value;
  // ignore: unused_field
  final $Res Function(DeviceDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? company = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeviceDtoCopyWith<$Res> implements $DeviceDtoCopyWith<$Res> {
  factory _$DeviceDtoCopyWith(_DeviceDto value, $Res Function(_DeviceDto) then) = __$DeviceDtoCopyWithImpl<$Res>;

  @override
  $Res call({String id, String name, String type, String company});
}

/// @nodoc
class __$DeviceDtoCopyWithImpl<$Res> extends _$DeviceDtoCopyWithImpl<$Res> implements _$DeviceDtoCopyWith<$Res> {
  __$DeviceDtoCopyWithImpl(_DeviceDto _value, $Res Function(_DeviceDto) _then) : super(_value, (v) => _then(v as _DeviceDto));

  @override
  _DeviceDto get _value => super._value as _DeviceDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? company = freezed,
  }) {
    return _then(_DeviceDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DeviceDto extends _DeviceDto {
  const _$_DeviceDto({required this.id, required this.name, required this.type, required this.company}) : super._();

  factory _$_DeviceDto.fromJson(Map<String, dynamic> json) => _$_$_DeviceDtoFromJson(json);

  @override
  final String id;
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
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) || const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.company, company) || const DeepCollectionEquality().equals(other.company, company)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(company);

  @JsonKey(ignore: true)
  @override
  _$DeviceDtoCopyWith<_DeviceDto> get copyWith => __$DeviceDtoCopyWithImpl<_DeviceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceDtoToJson(this);
  }
}

abstract class _DeviceDto extends DeviceDto {
  const factory _DeviceDto({required String id, required String name, required String type, required String company}) = _$_DeviceDto;

  const _DeviceDto._() : super._();

  factory _DeviceDto.fromJson(Map<String, dynamic> json) = _$_DeviceDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get type => throw _privateConstructorUsedError;

  @override
  String get company => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$DeviceDtoCopyWith<_DeviceDto> get copyWith => throw _privateConstructorUsedError;
}
