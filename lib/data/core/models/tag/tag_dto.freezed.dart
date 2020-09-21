// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TagDto _$TagDtoFromJson(Map<String, dynamic> json) {
  return _TagDto.fromJson(json);
}

/// @nodoc
class _$TagDtoTearOff {
  const _$TagDtoTearOff();

// ignore: unused_element
  _TagDto call({@required int id,
    @required String name,
    @required int creatorId,
    @required String creationDate,
    @required String modificationDate}) {
    return _TagDto(
      id: id,
      name: name,
      creatorId: creatorId,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }

// ignore: unused_element
  TagDto fromJson(Map<String, Object> json) {
    return TagDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TagDto = _$TagDtoTearOff();

/// @nodoc
mixin _$TagDto {
  int get id;
  
  String get name;
  
  int get creatorId;
  
  String get creationDate;
  
  String get modificationDate;

  Map<String, dynamic> toJson();
  $TagDtoCopyWith<TagDto> get copyWith;
}

/// @nodoc
abstract class $TagDtoCopyWith<$Res> {
  factory $TagDtoCopyWith(TagDto value, $Res Function(TagDto) then) =
  _$TagDtoCopyWithImpl<$Res>;
  
  $Res call({int id,
    String name,
    int creatorId,
    String creationDate,
    String modificationDate});
}

/// @nodoc
class _$TagDtoCopyWithImpl<$Res> implements $TagDtoCopyWith<$Res> {
  _$TagDtoCopyWithImpl(this._value, this._then);

  final TagDto _value;
  // ignore: unused_field
  final $Res Function(TagDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      creatorId: creatorId == freezed ? _value.creatorId : creatorId as int,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
    ));
  }
}

/// @nodoc
abstract class _$TagDtoCopyWith<$Res> implements $TagDtoCopyWith<$Res> {
  factory _$TagDtoCopyWith(_TagDto value, $Res Function(_TagDto) then) =
  __$TagDtoCopyWithImpl<$Res>;
  
  @override
  $Res call({int id,
    String name,
    int creatorId,
    String creationDate,
    String modificationDate});
}

/// @nodoc
class __$TagDtoCopyWithImpl<$Res> extends _$TagDtoCopyWithImpl<$Res>
  implements _$TagDtoCopyWith<$Res> {
  __$TagDtoCopyWithImpl(_TagDto _value, $Res Function(_TagDto) _then)
    : super(_value, (v) => _then(v as _TagDto));
  
  @override
  _TagDto get _value => super._value as _TagDto;
  
  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object creatorId = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_TagDto(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      creatorId: creatorId == freezed ? _value.creatorId : creatorId as int,
      creationDate: creationDate == freezed
        ? _value.creationDate
        : creationDate as String,
      modificationDate: modificationDate == freezed
        ? _value.modificationDate
        : modificationDate as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_TagDto extends _TagDto {
  const _$_TagDto({@required this.id,
    @required this.name,
    @required this.creatorId,
    @required this.creationDate,
    @required this.modificationDate})
    : assert(id != null),
      assert(name != null),
      assert(creatorId != null),
      assert(creationDate != null),
      assert(modificationDate != null),
      super._();
  
  factory _$_TagDto.fromJson(Map<String, dynamic> json) =>
    _$_$_TagDtoFromJson(json);
  
  @override
  final int id;
  @override
  final String name;
  @override
  final int creatorId;
  @override
  final String creationDate;
  @override
  final String modificationDate;

  @override
  String toString() {
    return 'TagDto(id: $id, name: $name, creatorId: $creatorId, creationDate: $creationDate, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
      (other is _TagDto &&
        (identical(other.id, id) ||
          const DeepCollectionEquality().equals(other.id, id)) &&
        (identical(other.name, name) ||
          const DeepCollectionEquality().equals(other.name, name)) &&
        (identical(other.creatorId, creatorId) ||
          const DeepCollectionEquality()
            .equals(other.creatorId, creatorId)) &&
        (identical(other.creationDate, creationDate) ||
          const DeepCollectionEquality()
            .equals(other.creationDate, creationDate)) &&
        (identical(other.modificationDate, modificationDate) ||
          const DeepCollectionEquality()
            .equals(other.modificationDate, modificationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(creatorId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);
  
  @override
  _$TagDtoCopyWith<_TagDto> get copyWith =>
    __$TagDtoCopyWithImpl<_TagDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TagDtoToJson(this);
  }
}

abstract class _TagDto extends TagDto {
  const _TagDto._() : super._();
  
  const factory _TagDto({@required int id,
    @required String name,
    @required int creatorId,
    @required String creationDate,
    @required String modificationDate}) = _$_TagDto;
  
  factory _TagDto.fromJson(Map<String, dynamic> json) = _$_TagDto.fromJson;
  
  @override
  int get id;
  
  @override
  String get name;
  
  @override
  int get creatorId;
  
  @override
  String get creationDate;
  @override
  String get modificationDate;
  @override
  _$TagDtoCopyWith<_TagDto> get copyWith;
}
