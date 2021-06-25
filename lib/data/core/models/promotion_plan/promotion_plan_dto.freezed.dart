// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'promotion_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromotionPlanDto _$PromotionPlanDtoFromJson(Map<String, dynamic> json) {
  return _PromotionPlan.fromJson(json);
}

/// @nodoc
class _$PromotionPlanDtoTearOff {
  const _$PromotionPlanDtoTearOff();

  _PromotionPlan call(
      {required String id,
      required String name,
      required String description,
      required PromotionPlanCode code,
      required int valueInEuros,
      @ServerTimestampConverter() required DateTime boughtDate,
      required int timesSeen}) {
    return _PromotionPlan(
      id: id,
      name: name,
      description: description,
      code: code,
      valueInEuros: valueInEuros,
      boughtDate: boughtDate,
      timesSeen: timesSeen,
    );
  }

  PromotionPlanDto fromJson(Map<String, Object> json) {
    return PromotionPlanDto.fromJson(json);
  }
}

/// @nodoc
const $PromotionPlanDto = _$PromotionPlanDtoTearOff();

/// @nodoc
mixin _$PromotionPlanDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  PromotionPlanCode get code => throw _privateConstructorUsedError;
  int get valueInEuros => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get boughtDate => throw _privateConstructorUsedError;
  int get timesSeen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionPlanDtoCopyWith<PromotionPlanDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionPlanDtoCopyWith<$Res> {
  factory $PromotionPlanDtoCopyWith(PromotionPlanDto value, $Res Function(PromotionPlanDto) then) =
      _$PromotionPlanDtoCopyWithImpl<$Res>;

  $Res call(
      {String id,
      String name,
      String description,
      PromotionPlanCode code,
      int valueInEuros,
      @ServerTimestampConverter() DateTime boughtDate,
      int timesSeen});
}

/// @nodoc
class _$PromotionPlanDtoCopyWithImpl<$Res> implements $PromotionPlanDtoCopyWith<$Res> {
  _$PromotionPlanDtoCopyWithImpl(this._value, this._then);

  final PromotionPlanDto _value;

  // ignore: unused_field
  final $Res Function(PromotionPlanDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? valueInEuros = freezed,
    Object? boughtDate = freezed,
    Object? timesSeen = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as PromotionPlanCode,
      valueInEuros: valueInEuros == freezed
          ? _value.valueInEuros
          : valueInEuros // ignore: cast_nullable_to_non_nullable
              as int,
      boughtDate: boughtDate == freezed
          ? _value.boughtDate
          : boughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timesSeen: timesSeen == freezed
          ? _value.timesSeen
          : timesSeen // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PromotionPlanCopyWith<$Res> implements $PromotionPlanDtoCopyWith<$Res> {
  factory _$PromotionPlanCopyWith(_PromotionPlan value, $Res Function(_PromotionPlan) then) =
      __$PromotionPlanCopyWithImpl<$Res>;

  @override
  $Res call(
      {String id,
      String name,
      String description,
      PromotionPlanCode code,
      int valueInEuros,
      @ServerTimestampConverter() DateTime boughtDate,
      int timesSeen});
}

/// @nodoc
class __$PromotionPlanCopyWithImpl<$Res> extends _$PromotionPlanDtoCopyWithImpl<$Res>
    implements _$PromotionPlanCopyWith<$Res> {
  __$PromotionPlanCopyWithImpl(_PromotionPlan _value, $Res Function(_PromotionPlan) _then)
      : super(_value, (v) => _then(v as _PromotionPlan));

  @override
  _PromotionPlan get _value => super._value as _PromotionPlan;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? valueInEuros = freezed,
    Object? boughtDate = freezed,
    Object? timesSeen = freezed,
  }) {
    return _then(_PromotionPlan(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as PromotionPlanCode,
      valueInEuros: valueInEuros == freezed
          ? _value.valueInEuros
          : valueInEuros // ignore: cast_nullable_to_non_nullable
              as int,
      boughtDate: boughtDate == freezed
          ? _value.boughtDate
          : boughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timesSeen: timesSeen == freezed
          ? _value.timesSeen
          : timesSeen // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PromotionPlan extends _PromotionPlan {
  const _$_PromotionPlan(
      {required this.id,
      required this.name,
      required this.description,
      required this.code,
      required this.valueInEuros,
      @ServerTimestampConverter() required this.boughtDate,
      required this.timesSeen})
      : super._();

  factory _$_PromotionPlan.fromJson(Map<String, dynamic> json) => _$_$_PromotionPlanFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final PromotionPlanCode code;
  @override
  final int valueInEuros;
  @override
  @ServerTimestampConverter()
  final DateTime boughtDate;
  @override
  final int timesSeen;

  @override
  String toString() {
    return 'PromotionPlanDto(id: $id, name: $name, description: $description, code: $code, valueInEuros: $valueInEuros, boughtDate: $boughtDate, timesSeen: $timesSeen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PromotionPlan &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(other.description, description)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.valueInEuros, valueInEuros) ||
                const DeepCollectionEquality().equals(other.valueInEuros, valueInEuros)) &&
            (identical(other.boughtDate, boughtDate) ||
                const DeepCollectionEquality().equals(other.boughtDate, boughtDate)) &&
            (identical(other.timesSeen, timesSeen) ||
                const DeepCollectionEquality().equals(other.timesSeen, timesSeen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(valueInEuros) ^
      const DeepCollectionEquality().hash(boughtDate) ^
      const DeepCollectionEquality().hash(timesSeen);

  @JsonKey(ignore: true)
  @override
  _$PromotionPlanCopyWith<_PromotionPlan> get copyWith =>
      __$PromotionPlanCopyWithImpl<_PromotionPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PromotionPlanToJson(this);
  }
}

abstract class _PromotionPlan extends PromotionPlanDto {
  const factory _PromotionPlan(
      {required String id,
      required String name,
      required String description,
      required PromotionPlanCode code,
      required int valueInEuros,
      @ServerTimestampConverter() required DateTime boughtDate,
      required int timesSeen}) = _$_PromotionPlan;

  const _PromotionPlan._() : super._();

  factory _PromotionPlan.fromJson(Map<String, dynamic> json) = _$_PromotionPlan.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;

  @override
  String get name => throw _privateConstructorUsedError;

  @override
  String get description => throw _privateConstructorUsedError;

  @override
  PromotionPlanCode get code => throw _privateConstructorUsedError;

  @override
  int get valueInEuros => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get boughtDate => throw _privateConstructorUsedError;

  @override
  int get timesSeen => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$PromotionPlanCopyWith<_PromotionPlan> get copyWith => throw _privateConstructorUsedError;
}
