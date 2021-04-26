// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagDto _$TagDtoFromJson(Map<String, dynamic> json) {
  return _TagDto.fromJson(json);
}

/// @nodoc
class _$TagDtoTearOff {
  const _$TagDtoTearOff();

  _TagDto call(
      {required String id,
      required String name,
      required String creatorId,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate}) {
    return _TagDto(
      id: id,
      name: name,
      creatorId: creatorId,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }

  TagDto fromJson(Map<String, Object> json) {
    return TagDto.fromJson(json);
  }
}

/// @nodoc
const $TagDto = _$TagDtoTearOff();

/// @nodoc
mixin _$TagDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagDtoCopyWith<TagDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagDtoCopyWith<$Res> {
  factory $TagDtoCopyWith(TagDto value, $Res Function(TagDto) then) = _$TagDtoCopyWithImpl<$Res>;

  $Res call({String id, String name, String creatorId, @ServerTimestampConverter() DateTime creationDate, @ServerTimestampConverter() DateTime modificationDate});
}

/// @nodoc
class _$TagDtoCopyWithImpl<$Res> implements $TagDtoCopyWith<$Res> {
  _$TagDtoCopyWithImpl(this._value, this._then);

  final TagDto _value;
  // ignore: unused_field
  final $Res Function(TagDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
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
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TagDtoCopyWith<$Res> implements $TagDtoCopyWith<$Res> {
  factory _$TagDtoCopyWith(_TagDto value, $Res Function(_TagDto) then) = __$TagDtoCopyWithImpl<$Res>;

  @override
  $Res call({String id, String name, String creatorId, @ServerTimestampConverter() DateTime creationDate, @ServerTimestampConverter() DateTime modificationDate});
}

/// @nodoc
class __$TagDtoCopyWithImpl<$Res> extends _$TagDtoCopyWithImpl<$Res> implements _$TagDtoCopyWith<$Res> {
  __$TagDtoCopyWithImpl(_TagDto _value, $Res Function(_TagDto) _then) : super(_value, (v) => _then(v as _TagDto));

  @override
  _TagDto get _value => super._value as _TagDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? creatorId = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
  }) {
    return _then(_TagDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TagDto extends _TagDto {
  const _$_TagDto({required this.id, required this.name, required this.creatorId, @ServerTimestampConverter() required this.creationDate, @ServerTimestampConverter() required this.modificationDate})
      : super._();

  factory _$_TagDto.fromJson(Map<String, dynamic> json) => _$_$_TagDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String creatorId;
  @override
  @ServerTimestampConverter()
  final DateTime creationDate;
  @override
  @ServerTimestampConverter()
  final DateTime modificationDate;

  @override
  String toString() {
    return 'TagDto(id: $id, name: $name, creatorId: $creatorId, creationDate: $creationDate, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TagDto &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.creatorId, creatorId) || const DeepCollectionEquality().equals(other.creatorId, creatorId)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
            (identical(other.modificationDate, modificationDate) || const DeepCollectionEquality().equals(other.modificationDate, modificationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(creatorId) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);
  
  @JsonKey(ignore: true)
  @override
  _$TagDtoCopyWith<_TagDto> get copyWith => __$TagDtoCopyWithImpl<_TagDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TagDtoToJson(this);
  }
}

abstract class _TagDto extends TagDto {
  const factory _TagDto(
      {required String id,
      required String name,
      required String creatorId,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate}) = _$_TagDto;
  const _TagDto._() : super._();

  factory _TagDto.fromJson(Map<String, dynamic> json) = _$_TagDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get creatorId => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TagDtoCopyWith<_TagDto> get copyWith => throw _privateConstructorUsedError;
}
