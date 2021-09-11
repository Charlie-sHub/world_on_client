// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'objective_id_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ObjectiveIdListDto _$ObjectiveIdListDtoFromJson(Map<String, dynamic> json) {
  return _ObjectiveIdListDto.fromJson(json);
}

/// @nodoc
class _$ObjectiveIdListDtoTearOff {
  const _$ObjectiveIdListDtoTearOff();

  _ObjectiveIdListDto call({required List<String> objectivesIds}) {
    return _ObjectiveIdListDto(
      objectivesIds: objectivesIds,
    );
  }

  ObjectiveIdListDto fromJson(Map<String, Object> json) {
    return ObjectiveIdListDto.fromJson(json);
  }
}

/// @nodoc
const $ObjectiveIdListDto = _$ObjectiveIdListDtoTearOff();

/// @nodoc
mixin _$ObjectiveIdListDto {
  List<String> get objectivesIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObjectiveIdListDtoCopyWith<ObjectiveIdListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectiveIdListDtoCopyWith<$Res> {
  factory $ObjectiveIdListDtoCopyWith(
          ObjectiveIdListDto value, $Res Function(ObjectiveIdListDto) then) =
      _$ObjectiveIdListDtoCopyWithImpl<$Res>;
  $Res call({List<String> objectivesIds});
}

/// @nodoc
class _$ObjectiveIdListDtoCopyWithImpl<$Res>
    implements $ObjectiveIdListDtoCopyWith<$Res> {
  _$ObjectiveIdListDtoCopyWithImpl(this._value, this._then);

  final ObjectiveIdListDto _value;
  // ignore: unused_field
  final $Res Function(ObjectiveIdListDto) _then;

  @override
  $Res call({
    Object? objectivesIds = freezed,
  }) {
    return _then(_value.copyWith(
      objectivesIds: objectivesIds == freezed
          ? _value.objectivesIds
          : objectivesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ObjectiveIdListDtoCopyWith<$Res>
    implements $ObjectiveIdListDtoCopyWith<$Res> {
  factory _$ObjectiveIdListDtoCopyWith(
          _ObjectiveIdListDto value, $Res Function(_ObjectiveIdListDto) then) =
      __$ObjectiveIdListDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<String> objectivesIds});
}

/// @nodoc
class __$ObjectiveIdListDtoCopyWithImpl<$Res>
    extends _$ObjectiveIdListDtoCopyWithImpl<$Res>
    implements _$ObjectiveIdListDtoCopyWith<$Res> {
  __$ObjectiveIdListDtoCopyWithImpl(
      _ObjectiveIdListDto _value, $Res Function(_ObjectiveIdListDto) _then)
      : super(_value, (v) => _then(v as _ObjectiveIdListDto));

  @override
  _ObjectiveIdListDto get _value => super._value as _ObjectiveIdListDto;

  @override
  $Res call({
    Object? objectivesIds = freezed,
  }) {
    return _then(_ObjectiveIdListDto(
      objectivesIds: objectivesIds == freezed
          ? _value.objectivesIds
          : objectivesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ObjectiveIdListDto extends _ObjectiveIdListDto {
  const _$_ObjectiveIdListDto({required this.objectivesIds}) : super._();

  factory _$_ObjectiveIdListDto.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectiveIdListDtoFromJson(json);

  @override
  final List<String> objectivesIds;

  @override
  String toString() {
    return 'ObjectiveIdListDto(objectivesIds: $objectivesIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ObjectiveIdListDto &&
            (identical(other.objectivesIds, objectivesIds) ||
                const DeepCollectionEquality()
                    .equals(other.objectivesIds, objectivesIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(objectivesIds);

  @JsonKey(ignore: true)
  @override
  _$ObjectiveIdListDtoCopyWith<_ObjectiveIdListDto> get copyWith =>
      __$ObjectiveIdListDtoCopyWithImpl<_ObjectiveIdListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ObjectiveIdListDtoToJson(this);
  }
}

abstract class _ObjectiveIdListDto extends ObjectiveIdListDto {
  const factory _ObjectiveIdListDto({required List<String> objectivesIds}) =
      _$_ObjectiveIdListDto;
  const _ObjectiveIdListDto._() : super._();

  factory _ObjectiveIdListDto.fromJson(Map<String, dynamic> json) =
      _$_ObjectiveIdListDto.fromJson;

  @override
  List<String> get objectivesIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ObjectiveIdListDtoCopyWith<_ObjectiveIdListDto> get copyWith =>
      throw _privateConstructorUsedError;
}
