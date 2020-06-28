// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SystemTearOff {
  const _$SystemTearOff();

  _System call({int id, @required String name, @required String type, @required String company}) {
    return _System(
      id: id,
      name: name,
      type: type,
      company: company,
    );
  }
}

// ignore: unused_element
const $System = _$SystemTearOff();

mixin _$System {
  int get id;
  String get name;
  String get type;
  String get company;

  $SystemCopyWith<System> get copyWith;
}

abstract class $SystemCopyWith<$Res> {
  factory $SystemCopyWith(System value, $Res Function(System) then) = _$SystemCopyWithImpl<$Res>;
  $Res call({int id, String name, String type, String company});
}

class _$SystemCopyWithImpl<$Res> implements $SystemCopyWith<$Res> {
  _$SystemCopyWithImpl(this._value, this._then);

  final System _value;
  // ignore: unused_field
  final $Res Function(System) _then;

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

abstract class _$SystemCopyWith<$Res> implements $SystemCopyWith<$Res> {
  factory _$SystemCopyWith(_System value, $Res Function(_System) then) =
  __$SystemCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String type, String company});
}

class __$SystemCopyWithImpl<$Res> extends _$SystemCopyWithImpl<$Res>
  implements _$SystemCopyWith<$Res> {
  __$SystemCopyWithImpl(_System _value, $Res Function(_System) _then)
    : super(_value, (v) => _then(v as _System));

  @override
  _System get _value => super._value as _System;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object company = freezed,
  }) {
    return _then(_System(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as String,
      company: company == freezed ? _value.company : company as String,
    ));
  }
}

class _$_System extends _System {
  const _$_System({this.id,
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
    return 'System(id: $id, name: $name, type: $type, company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _System &&
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
  _$SystemCopyWith<_System> get copyWith =>
    __$SystemCopyWithImpl<_System>(this, _$identity);
}

abstract class _System extends System {
  const _System._() : super._();

  const factory _System({int id,
    @required String name,
    @required String type,
    @required String company}) = _$_System;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get company;
  @override
  _$SystemCopyWith<_System> get copyWith;
}
