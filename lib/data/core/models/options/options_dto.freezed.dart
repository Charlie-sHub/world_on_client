// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'options_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OptionsDto _$OptionsDtoFromJson(Map<String, dynamic> json) {
  return _OptionsDto.fromJson(json);
}

/// @nodoc
class _$OptionsDtoTearOff {
  const _$OptionsDtoTearOff();

  _OptionsDto call({required String id, required String languageCode}) {
    return _OptionsDto(
      id: id,
      languageCode: languageCode,
    );
  }

  OptionsDto fromJson(Map<String, Object> json) {
    return OptionsDto.fromJson(json);
  }
}

/// @nodoc
const $OptionsDto = _$OptionsDtoTearOff();

/// @nodoc
mixin _$OptionsDto {
  String get id => throw _privateConstructorUsedError;

  String get languageCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OptionsDtoCopyWith<OptionsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsDtoCopyWith<$Res> {
  factory $OptionsDtoCopyWith(OptionsDto value, $Res Function(OptionsDto) then) = _$OptionsDtoCopyWithImpl<$Res>;
  $Res call({String id, String languageCode});
}

/// @nodoc
class _$OptionsDtoCopyWithImpl<$Res> implements $OptionsDtoCopyWith<$Res> {
  _$OptionsDtoCopyWithImpl(this._value, this._then);

  final OptionsDto _value;
  // ignore: unused_field
  final $Res Function(OptionsDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OptionsDtoCopyWith<$Res> implements $OptionsDtoCopyWith<$Res> {
  factory _$OptionsDtoCopyWith(_OptionsDto value, $Res Function(_OptionsDto) then) = __$OptionsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String languageCode});
}

/// @nodoc
class __$OptionsDtoCopyWithImpl<$Res> extends _$OptionsDtoCopyWithImpl<$Res> implements _$OptionsDtoCopyWith<$Res> {
  __$OptionsDtoCopyWithImpl(_OptionsDto _value, $Res Function(_OptionsDto) _then) : super(_value, (v) => _then(v as _OptionsDto));

  @override
  _OptionsDto get _value => super._value as _OptionsDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? languageCode = freezed,
  }) {
    return _then(_OptionsDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OptionsDto extends _OptionsDto {
  const _$_OptionsDto({required this.id, required this.languageCode}) : super._();

  factory _$_OptionsDto.fromJson(Map<String, dynamic> json) => _$_$_OptionsDtoFromJson(json);

  @override
  final String id;
  @override
  final String languageCode;

  @override
  String toString() {
    return 'OptionsDto(id: $id, languageCode: $languageCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OptionsDto &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.languageCode, languageCode) || const DeepCollectionEquality().equals(other.languageCode, languageCode)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(id) ^ const DeepCollectionEquality().hash(languageCode);

  @JsonKey(ignore: true)
  @override
  _$OptionsDtoCopyWith<_OptionsDto> get copyWith => __$OptionsDtoCopyWithImpl<_OptionsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OptionsDtoToJson(this);
  }
}

abstract class _OptionsDto extends OptionsDto {
  const factory _OptionsDto({required String id, required String languageCode}) = _$_OptionsDto;

  const _OptionsDto._() : super._();

  factory _OptionsDto.fromJson(Map<String, dynamic> json) = _$_OptionsDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;

  @override
  String get languageCode => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$OptionsDtoCopyWith<_OptionsDto> get copyWith => throw _privateConstructorUsedError;
}
