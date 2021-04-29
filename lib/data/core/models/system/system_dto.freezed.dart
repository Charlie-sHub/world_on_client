// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'system_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SystemDto _$SystemDtoFromJson(Map<String, dynamic> json) {
  return _SystemDto.fromJson(json);
}

/// @nodoc
class _$SystemDtoTearOff {
  const _$SystemDtoTearOff();

  _SystemDto call({required String id, required String name, required String type, required String company}) {
    return _SystemDto(
      id: id,
      name: name,
      type: type,
      company: company,
    );
  }

  SystemDto fromJson(Map<String, Object> json) {
    return SystemDto.fromJson(json);
  }
}

/// @nodoc
const $SystemDto = _$SystemDtoTearOff();

/// @nodoc
mixin _$SystemDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SystemDtoCopyWith<SystemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemDtoCopyWith<$Res> {
  factory $SystemDtoCopyWith(SystemDto value, $Res Function(SystemDto) then) = _$SystemDtoCopyWithImpl<$Res>;

  $Res call({String id, String name, String type, String company});
}

/// @nodoc
class _$SystemDtoCopyWithImpl<$Res> implements $SystemDtoCopyWith<$Res> {
  _$SystemDtoCopyWithImpl(this._value, this._then);

  final SystemDto _value;
  // ignore: unused_field
  final $Res Function(SystemDto) _then;

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
abstract class _$SystemDtoCopyWith<$Res> implements $SystemDtoCopyWith<$Res> {
  factory _$SystemDtoCopyWith(_SystemDto value, $Res Function(_SystemDto) then) = __$SystemDtoCopyWithImpl<$Res>;

  @override
  $Res call({String id, String name, String type, String company});
}

/// @nodoc
class __$SystemDtoCopyWithImpl<$Res> extends _$SystemDtoCopyWithImpl<$Res> implements _$SystemDtoCopyWith<$Res> {
  __$SystemDtoCopyWithImpl(_SystemDto _value, $Res Function(_SystemDto) _then) : super(_value, (v) => _then(v as _SystemDto));

  @override
  _SystemDto get _value => super._value as _SystemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? company = freezed,
  }) {
    return _then(_SystemDto(
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
@JsonSerializable()
class _$_SystemDto extends _SystemDto {
  const _$_SystemDto({required this.id, required this.name, required this.type, required this.company}) : super._();

  factory _$_SystemDto.fromJson(Map<String, dynamic> json) => _$_$_SystemDtoFromJson(json);

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
    return 'SystemDto(id: $id, name: $name, type: $type, company: $company)';
  }
  
  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SystemDto &&
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
  _$SystemDtoCopyWith<_SystemDto> get copyWith => __$SystemDtoCopyWithImpl<_SystemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SystemDtoToJson(this);
  }
}

abstract class _SystemDto extends SystemDto {
  const factory _SystemDto({required String id, required String name, required String type, required String company}) = _$_SystemDto;

  const _SystemDto._() : super._();

  factory _SystemDto.fromJson(Map<String, dynamic> json) = _$_SystemDto.fromJson;

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
  _$SystemDtoCopyWith<_SystemDto> get copyWith => throw _privateConstructorUsedError;
}
