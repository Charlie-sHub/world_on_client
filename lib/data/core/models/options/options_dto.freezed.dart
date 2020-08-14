// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'options_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OptionsDto _$OptionsDtoFromJson(Map<String, dynamic> json) {
  return _OptionsDto.fromJson(json);
}

class _$OptionsDtoTearOff {
  const _$OptionsDtoTearOff();

// ignore: unused_element
  _OptionsDto call({@required int id, @required String languageCode}) {
    return _OptionsDto(
      id: id,
      languageCode: languageCode,
    );
  }
}

// ignore: unused_element
const $OptionsDto = _$OptionsDtoTearOff();

mixin _$OptionsDto {
  int get id;
  String get languageCode;

  Map<String, dynamic> toJson();
  $OptionsDtoCopyWith<OptionsDto> get copyWith;
}

abstract class $OptionsDtoCopyWith<$Res> {
  factory $OptionsDtoCopyWith(OptionsDto value, $Res Function(OptionsDto) then) = _$OptionsDtoCopyWithImpl<$Res>;

  $Res call({int id, String languageCode});
}

class _$OptionsDtoCopyWithImpl<$Res> implements $OptionsDtoCopyWith<$Res> {
  _$OptionsDtoCopyWithImpl(this._value, this._then);

  final OptionsDto _value;
  // ignore: unused_field
  final $Res Function(OptionsDto) _then;

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

abstract class _$OptionsDtoCopyWith<$Res> implements $OptionsDtoCopyWith<$Res> {
  factory _$OptionsDtoCopyWith(_OptionsDto value, $Res Function(_OptionsDto) then) =
  __$OptionsDtoCopyWithImpl<$Res>;
  
  @override
  $Res call({int id, String languageCode});
}

class __$OptionsDtoCopyWithImpl<$Res> extends _$OptionsDtoCopyWithImpl<$Res>
  implements _$OptionsDtoCopyWith<$Res> {
  __$OptionsDtoCopyWithImpl(_OptionsDto _value, $Res Function(_OptionsDto) _then)
    : super(_value, (v) => _then(v as _OptionsDto));
  
  @override
  _OptionsDto get _value => super._value as _OptionsDto;
  
  @override
  $Res call({
    Object id = freezed,
    Object languageCode = freezed,
  }) {
    return _then(_OptionsDto(
      id: id == freezed ? _value.id : id as int,
      languageCode: languageCode == freezed
        ? _value.languageCode
        : languageCode as String,
    ));
  }
}

@JsonSerializable()
class _$_OptionsDto extends _OptionsDto {
  const _$_OptionsDto({@required this.id, @required this.languageCode})
    : assert(id != null),
      assert(languageCode != null),
      super._();
  
  factory _$_OptionsDto.fromJson(Map<String, dynamic> json) =>
    _$_$_OptionsDtoFromJson(json);
  
  @override
  final int id;
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
  _$OptionsDtoCopyWith<_OptionsDto> get copyWith =>
    __$OptionsDtoCopyWithImpl<_OptionsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OptionsDtoToJson(this);
  }
}

abstract class _OptionsDto extends OptionsDto {
  const _OptionsDto._() : super._();
  
  const factory _OptionsDto({@required int id, @required String languageCode}) =
  _$_OptionsDto;
  
  factory _OptionsDto.fromJson(Map<String, dynamic> json) =
  _$_OptionsDto.fromJson;
  
  @override
  int get id;
  
  @override
  String get languageCode;
  
  @override
  _$OptionsDtoCopyWith<_OptionsDto> get copyWith;
}
