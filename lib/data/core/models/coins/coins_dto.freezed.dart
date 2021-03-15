// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'coins_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CoinsDto _$CoinsDtoFromJson(Map<String, dynamic> json) {
  return _CoinsDto.fromJson(json);
}

/// @nodoc
class _$CoinsDtoTearOff {
  const _$CoinsDtoTearOff();

// ignore: unused_element
  _CoinsDto call({@required String tenCoinsProductId}) {
    return _CoinsDto(
      tenCoinsProductId: tenCoinsProductId,
    );
  }

// ignore: unused_element
  CoinsDto fromJson(Map<String, Object> json) {
    return CoinsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CoinsDto = _$CoinsDtoTearOff();

/// @nodoc
mixin _$CoinsDto {
  String get tenCoinsProductId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CoinsDtoCopyWith<CoinsDto> get copyWith;
}

/// @nodoc
abstract class $CoinsDtoCopyWith<$Res> {
  factory $CoinsDtoCopyWith(CoinsDto value, $Res Function(CoinsDto) then) =
  _$CoinsDtoCopyWithImpl<$Res>;
  $Res call({String tenCoinsProductId});
}

/// @nodoc
class _$CoinsDtoCopyWithImpl<$Res> implements $CoinsDtoCopyWith<$Res> {
  _$CoinsDtoCopyWithImpl(this._value, this._then);

  final CoinsDto _value;
  // ignore: unused_field
  final $Res Function(CoinsDto) _then;

  @override
  $Res call({
    Object tenCoinsProductId = freezed,
  }) {
    return _then(_value.copyWith(
      tenCoinsProductId: tenCoinsProductId == freezed
        ? _value.tenCoinsProductId
        : tenCoinsProductId as String,
    ));
  }
}

/// @nodoc
abstract class _$CoinsDtoCopyWith<$Res> implements $CoinsDtoCopyWith<$Res> {
  factory _$CoinsDtoCopyWith(_CoinsDto value, $Res Function(_CoinsDto) then) =
  __$CoinsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String tenCoinsProductId});
}

/// @nodoc
class __$CoinsDtoCopyWithImpl<$Res> extends _$CoinsDtoCopyWithImpl<$Res>
  implements _$CoinsDtoCopyWith<$Res> {
  __$CoinsDtoCopyWithImpl(_CoinsDto _value, $Res Function(_CoinsDto) _then)
    : super(_value, (v) => _then(v as _CoinsDto));
  
  @override
  _CoinsDto get _value => super._value as _CoinsDto;
  
  @override
  $Res call({
    Object tenCoinsProductId = freezed,
  }) {
    return _then(_CoinsDto(
      tenCoinsProductId: tenCoinsProductId == freezed
        ? _value.tenCoinsProductId
        : tenCoinsProductId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_CoinsDto extends _CoinsDto {
const _$_CoinsDto({@required this.tenCoinsProductId})
:
assert
(
tenCoinsProductId != null
)
,
super
.

_();

factory
_$_CoinsDto.fromJson(

Map<String, dynamic> json
)
=>

_$_$_CoinsDtoFromJson(json);

@override
final String tenCoinsProductId;

@override
String toString() {
  return 'CoinsDto(tenCoinsProductId: $tenCoinsProductId)';
}

@override
bool operator
==
(

dynamic other
) {
return identical(this, other) ||
(other is _CoinsDto &&
(identical(other.tenCoinsProductId, tenCoinsProductId) ||
const DeepCollectionEquality()
  .equals(other.tenCoinsProductId, tenCoinsProductId)));
}

@override
int get hashCode =>
  runtimeType.hashCode ^
  const DeepCollectionEquality().hash(tenCoinsProductId);

@JsonKey(ignore: true)
@override
_$CoinsDtoCopyWith<_CoinsDto> get copyWith =>
  __$CoinsDtoCopyWithImpl<_CoinsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$_$_CoinsDtoToJson(this);
}}

abstract class _CoinsDto extends CoinsDto {
  const _CoinsDto._() : super._();
  
  const factory _CoinsDto({@required String tenCoinsProductId}) = _$_CoinsDto;

  factory _CoinsDto.fromJson(Map<String, dynamic> json) = _$_CoinsDto.fromJson;

  @override
  String get tenCoinsProductId;
  @override
  @JsonKey(ignore: true)
  _$CoinsDtoCopyWith<_CoinsDto> get copyWith;
}
