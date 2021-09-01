// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OptionsTearOff {
  const _$OptionsTearOff();

  _Options call({required UniqueId id, required String languageCode}) {
    return _Options(
      id: id,
      languageCode: languageCode,
    );
  }
}

/// @nodoc
const $Options = _$OptionsTearOff();

/// @nodoc
mixin _$Options {
  UniqueId get id => throw _privateConstructorUsedError;
  String get languageCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OptionsCopyWith<Options> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsCopyWith<$Res> {
  factory $OptionsCopyWith(Options value, $Res Function(Options) then) =
      _$OptionsCopyWithImpl<$Res>;
  $Res call({UniqueId id, String languageCode});
}

/// @nodoc
class _$OptionsCopyWithImpl<$Res> implements $OptionsCopyWith<$Res> {
  _$OptionsCopyWithImpl(this._value, this._then);

  final Options _value;
  // ignore: unused_field
  final $Res Function(Options) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OptionsCopyWith<$Res> implements $OptionsCopyWith<$Res> {
  factory _$OptionsCopyWith(_Options value, $Res Function(_Options) then) =
      __$OptionsCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String languageCode});
}

/// @nodoc
class __$OptionsCopyWithImpl<$Res> extends _$OptionsCopyWithImpl<$Res>
    implements _$OptionsCopyWith<$Res> {
  __$OptionsCopyWithImpl(_Options _value, $Res Function(_Options) _then)
      : super(_value, (v) => _then(v as _Options));

  @override
  _Options get _value => super._value as _Options;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_Options(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Options extends _Options {
  const _$_Options({required this.id, required this.languageCode}) : super._();

  @override
  final UniqueId id;
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

  @JsonKey(ignore: true)
  @override
  _$OptionsCopyWith<_Options> get copyWith =>
      __$OptionsCopyWithImpl<_Options>(this, _$identity);
}

abstract class _Options extends Options {
  const factory _Options({required UniqueId id, required String languageCode}) =
      _$_Options;
  const _Options._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  String get languageCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OptionsCopyWith<_Options> get copyWith =>
      throw _privateConstructorUsedError;
}
