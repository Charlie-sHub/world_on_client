// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'coins_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinsDto _$CoinsDtoFromJson(Map<String, dynamic> json) {
  return _CoinsDto.fromJson(json);
}

/// @nodoc
class _$CoinsDtoTearOff {
  const _$CoinsDtoTearOff();

  _CoinsDto call({required String tenCoinsProductId}) {
    return _CoinsDto(
      tenCoinsProductId: tenCoinsProductId,
    );
  }

  CoinsDto fromJson(Map<String, Object> json) {
    return CoinsDto.fromJson(json);
  }
}

/// @nodoc
const $CoinsDto = _$CoinsDtoTearOff();

/// @nodoc
mixin _$CoinsDto {
  String get tenCoinsProductId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinsDtoCopyWith<CoinsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsDtoCopyWith<$Res> {
  factory $CoinsDtoCopyWith(CoinsDto value, $Res Function(CoinsDto) then) = _$CoinsDtoCopyWithImpl<$Res>;

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
    Object? tenCoinsProductId = freezed,
  }) {
    return _then(_value.copyWith(
      tenCoinsProductId: tenCoinsProductId == freezed
          ? _value.tenCoinsProductId
          : tenCoinsProductId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CoinsDtoCopyWith<$Res> implements $CoinsDtoCopyWith<$Res> {
  factory _$CoinsDtoCopyWith(_CoinsDto value, $Res Function(_CoinsDto) then) = __$CoinsDtoCopyWithImpl<$Res>;

  @override
  $Res call({String tenCoinsProductId});
}

/// @nodoc
class __$CoinsDtoCopyWithImpl<$Res> extends _$CoinsDtoCopyWithImpl<$Res> implements _$CoinsDtoCopyWith<$Res> {
  __$CoinsDtoCopyWithImpl(_CoinsDto _value, $Res Function(_CoinsDto) _then)
      : super(_value, (v) => _then(v as _CoinsDto));

  @override
  _CoinsDto get _value => super._value as _CoinsDto;

  @override
  $Res call({
    Object? tenCoinsProductId = freezed,
  }) {
    return _then(_CoinsDto(
      tenCoinsProductId: tenCoinsProductId == freezed
          ? _value.tenCoinsProductId
          : tenCoinsProductId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinsDto extends _CoinsDto {
  const _$_CoinsDto({required this.tenCoinsProductId}) : super._();

  factory _$_CoinsDto.fromJson(Map<String, dynamic> json) => _$_$_CoinsDtoFromJson(json);

  @override
  final String tenCoinsProductId;

  @override
  String toString() {
    return 'CoinsDto(tenCoinsProductId: $tenCoinsProductId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CoinsDto &&
            (identical(other.tenCoinsProductId, tenCoinsProductId) ||
                const DeepCollectionEquality().equals(other.tenCoinsProductId, tenCoinsProductId)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(tenCoinsProductId);

  @JsonKey(ignore: true)
  @override
  _$CoinsDtoCopyWith<_CoinsDto> get copyWith => __$CoinsDtoCopyWithImpl<_CoinsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoinsDtoToJson(this);
  }
}

abstract class _CoinsDto extends CoinsDto {
  const factory _CoinsDto({required String tenCoinsProductId}) = _$_CoinsDto;
  const _CoinsDto._() : super._();

  factory _CoinsDto.fromJson(Map<String, dynamic> json) = _$_CoinsDto.fromJson;

  @override
  String get tenCoinsProductId => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$CoinsDtoCopyWith<_CoinsDto> get copyWith => throw _privateConstructorUsedError;
}
