// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
class _$CommentDtoTearOff {
  const _$CommentDtoTearOff();

  _CommentDto call(
      {@JsonKey(ignore: true) String? id,
      required UserDto poster,
      required String experienceId,
      required String content,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate}) {
    return _CommentDto(
      id: id,
      poster: poster,
      experienceId: experienceId,
      content: content,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }

  CommentDto fromJson(Map<String, Object> json) {
    return CommentDto.fromJson(json);
  }
}

/// @nodoc
const $CommentDto = _$CommentDtoTearOff();

/// @nodoc
mixin _$CommentDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;

  UserDto get poster => throw _privateConstructorUsedError;

  String get experienceId => throw _privateConstructorUsedError;

  String get content => throw _privateConstructorUsedError;

  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;

  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentDtoCopyWith<CommentDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(CommentDto value, $Res Function(CommentDto) then) = _$CommentDtoCopyWithImpl<$Res>;

  $Res call(
      {@JsonKey(ignore: true) String? id,
      UserDto poster,
      String experienceId,
      String content,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate});

  $UserDtoCopyWith<$Res> get poster;
}

/// @nodoc
class _$CommentDtoCopyWithImpl<$Res> implements $CommentDtoCopyWith<$Res> {
  _$CommentDtoCopyWithImpl(this._value, this._then);

  final CommentDto _value;
  // ignore: unused_field
  final $Res Function(CommentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? poster = freezed,
    Object? experienceId = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as UserDto,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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

  @override
  $UserDtoCopyWith<$Res> get poster {
    return $UserDtoCopyWith<$Res>(_value.poster, (value) {
      return _then(_value.copyWith(poster: value));
    });
  }
}

/// @nodoc
abstract class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(_CommentDto value, $Res Function(_CommentDto) then) = __$CommentDtoCopyWithImpl<$Res>;

  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      UserDto poster,
      String experienceId,
      String content,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate});

  @override
  $UserDtoCopyWith<$Res> get poster;
}

/// @nodoc
class __$CommentDtoCopyWithImpl<$Res> extends _$CommentDtoCopyWithImpl<$Res> implements _$CommentDtoCopyWith<$Res> {
  __$CommentDtoCopyWithImpl(_CommentDto _value, $Res Function(_CommentDto) _then) : super(_value, (v) => _then(v as _CommentDto));

  @override
  _CommentDto get _value => super._value as _CommentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? poster = freezed,
    Object? experienceId = freezed,
    Object? content = freezed,
    Object? creationDate = freezed,
    Object? modificationDate = freezed,
  }) {
    return _then(_CommentDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: poster == freezed
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as UserDto,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_CommentDto extends _CommentDto {
  const _$_CommentDto(
      {@JsonKey(ignore: true) this.id,
      required this.poster,
      required this.experienceId,
      required this.content,
      @ServerTimestampConverter() required this.creationDate,
      @ServerTimestampConverter() required this.modificationDate})
      : super._();

  factory _$_CommentDto.fromJson(Map<String, dynamic> json) => _$_$_CommentDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final UserDto poster;
  @override
  final String experienceId;
  @override
  final String content;
  @override
  @ServerTimestampConverter()
  final DateTime creationDate;
  @override
  @ServerTimestampConverter()
  final DateTime modificationDate;

  @override
  String toString() {
    return 'CommentDto(id: $id, poster: $poster, experienceId: $experienceId, content: $content, creationDate: $creationDate, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDto &&
            (identical(other.id, id) || const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.poster, poster) || const DeepCollectionEquality().equals(other.poster, poster)) &&
            (identical(other.experienceId, experienceId) || const DeepCollectionEquality().equals(other.experienceId, experienceId)) &&
            (identical(other.content, content) || const DeepCollectionEquality().equals(other.content, content)) &&
            (identical(other.creationDate, creationDate) || const DeepCollectionEquality().equals(other.creationDate, creationDate)) &&
            (identical(other.modificationDate, modificationDate) || const DeepCollectionEquality().equals(other.modificationDate, modificationDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(poster) ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);

  @JsonKey(ignore: true)
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith => __$CommentDtoCopyWithImpl<_CommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDtoToJson(this);
  }
}

abstract class _CommentDto extends CommentDto {
  const factory _CommentDto(
      {@JsonKey(ignore: true) String? id,
      required UserDto poster,
      required String experienceId,
      required String content,
      @ServerTimestampConverter() required DateTime creationDate,
      @ServerTimestampConverter() required DateTime modificationDate}) = _$_CommentDto;

  const _CommentDto._() : super._();

  factory _CommentDto.fromJson(Map<String, dynamic> json) = _$_CommentDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;

  @override
  UserDto get poster => throw _privateConstructorUsedError;

  @override
  String get experienceId => throw _privateConstructorUsedError;

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime get creationDate => throw _privateConstructorUsedError;

  @override
  @ServerTimestampConverter()
  DateTime get modificationDate => throw _privateConstructorUsedError;

  @override
  @JsonKey(ignore: true)
  _$CommentDtoCopyWith<_CommentDto> get copyWith => throw _privateConstructorUsedError;
}
