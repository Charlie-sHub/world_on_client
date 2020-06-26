// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DeviceTearOff {
  const _$DeviceTearOff();

  _Device call({int id, @required String name, @required String type, @required String company}) {
    return _Device(
      id: id,
      name: name,
      type: type,
      company: company,
    );
  }
}

// ignore: unused_element
const $Device = _$DeviceTearOff();

mixin _$Device {
  int get id;
  String get name;
  String get type;
  String get company;

  $DeviceCopyWith<Device> get copyWith;
}

abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
  _$DeviceCopyWithImpl<$Res>;
  $Res call({int id, String name, String type, String company});
}

class _$DeviceCopyWithImpl<$Res> implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  final Device _value;
  // ignore: unused_field
  final $Res Function(Device) _then;

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

abstract class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) then) =
  __$DeviceCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String type, String company});
}

class __$DeviceCopyWithImpl<$Res> extends _$DeviceCopyWithImpl<$Res>
  implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(_Device _value, $Res Function(_Device) _then)
    : super(_value, (v) => _then(v as _Device));

  @override
  _Device get _value => super._value as _Device;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object company = freezed,
  }) {
    return _then(_Device(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      company: company == freezed ? _value.company : company as String,
    ));
  }
}

class _$_Device extends _Device {
  const _$_Device({this.id,
    @required this.name,
    @required this.type,
    @required this.company})
    : assert(name != null),
        assert(type != null),
      assert(company != null),
      super._();

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
    return 'Device(id: $id, name: $name, type: $type, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Device &&
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
  _$DeviceCopyWith<_Device> get copyWith =>
    __$DeviceCopyWithImpl<_Device>(this, _$identity);
}

abstract class _Device extends Device {
  const _Device._() : super._();
  
  const factory _Device({int id,
    @required String name,
    @required String type,
    @required String company}) = _$_Device;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get company;
  @override
  _$DeviceCopyWith<_Device> get copyWith;
}
