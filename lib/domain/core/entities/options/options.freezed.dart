// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OptionsTearOff {
  const _$OptionsTearOff();

// ignore: unused_element
  _Options call({int id, @required String languageCode}) {
    return _Options(
      id: id,
      languageCode: languageCode,
    );
  }
}

// ignore: unused_element
const $Options = _$OptionsTearOff();

mixin _$Options {
  int get id;
  String get languageCode;

  $OptionsCopyWith<Options> get copyWith;
}

abstract class $OptionsCopyWith<$Res> {
  factory $OptionsCopyWith(Options value, $Res Function(Options) then) = _$OptionsCopyWithImpl<$Res>;

  $Res call({int id, String languageCode});
}

class _$OptionsCopyWithImpl<$Res> implements $OptionsCopyWith<$Res> {
  _$OptionsCopyWithImpl(this._value, this._then);

  final Options _value;
  // ignore: unused_field
  final $Res Function(Options) _then;

  @override
  $Res call({
    Object id = freezed,
    Object languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      languageCode: languageCode == freezed
        ? _value.languageCode
        : languageCode as String,
    ));
  }
}

abstract class _$OptionsCopyWith<$Res> implements $OptionsCopyWith<$Res> {
  factory _$OptionsCopyWith(_Options value, $Res Function(_Options) then) =
  __$OptionsCopyWithImpl<$Res>;
  @override
  $Res call({int id, String languageCode});
}

class __$OptionsCopyWithImpl<$Res> extends _$OptionsCopyWithImpl<$Res>
  implements _$OptionsCopyWith<$Res> {
  __$OptionsCopyWithImpl(_Options _value, $Res Function(_Options) _then)
    : super(_value, (v) => _then(v as _Options));
  
  @override
  _Options get _value => super._value as _Options;
  
  @override
  $Res call({
    Object id = freezed,
    Object languageCode = freezed,
  }) {
    return _then(_Options(
      id: id == freezed ? _value.id : id as int,
      languageCode: languageCode == freezed
        ? _value.languageCode
        : languageCode as String,
    ));
  }
}

class _$_Options extends _Options {
  const _$_Options({this.id, @required this.languageCode})
      : assert(languageCode != null),
        super._();

  @override
  final int id;
  @override
  final String languageCode;

  @override
  String toString() {
    return 'Options(id: $id, languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _Options &&
        (identical(other.id, id) ||
          const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.languageCode, languageCode) ||
          const DeepCollectionEquality()
            .equals(other.languageCode, languageCode)));
  }

  @override
  int get hashCode =>
    runtimeType.hashCode ^
    const DeepCollectionEquality().hash(id) ^
    const DeepCollectionEquality().hash(languageCode);

  @override
  _$OptionsCopyWith<_Options> get copyWith =>
    __$OptionsCopyWithImpl<_Options>(this, _$identity);
}

abstract class _Options extends Options {
  const _Options._() : super._();
  const factory _Options({int id, @required String languageCode}) = _$_Options;

  @override
  int get id;
  @override
  String get languageCode;
  @override
  _$OptionsCopyWith<_Options> get copyWith;
}
