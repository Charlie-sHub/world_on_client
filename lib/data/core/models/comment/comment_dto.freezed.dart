// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) {
  return _CommentDto.fromJson(json);
}

/// @nodoc
class _$CommentDtoTearOff {
  const _$CommentDtoTearOff();

// ignore: unused_element
  _CommentDto call(
      {@required String id,
      @required UserDto poster,
      @required String experienceId,
      @required String content,
      @required @ServerTimestampConverter() DateTime creationDate,
      @required @ServerTimestampConverter() DateTime modificationDate}) {
    return _CommentDto(
      id: id,
      poster: poster,
      experienceId: experienceId,
      content: content,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }

// ignore: unused_element
  CommentDto fromJson(Map<String, Object> json) {
    return CommentDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CommentDto = _$CommentDtoTearOff();

/// @nodoc
mixin _$CommentDto {
  String get id;
  UserDto get poster;
  String get experienceId;
  String get content;
  @ServerTimestampConverter()
  DateTime get creationDate;
  @ServerTimestampConverter()
  DateTime get modificationDate;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CommentDtoCopyWith<CommentDto> get copyWith;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
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
    Object id = freezed,
    Object poster = freezed,
    Object experienceId = freezed,
    Object content = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      poster: poster == freezed ? _value.poster : poster as UserDto,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId as String,
      content: content == freezed ? _value.content : content as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate as DateTime,
    ));
  }

  @override
  $UserDtoCopyWith<$Res> get poster {
    if (_value.poster == null) {
      return null;
    }
    return $UserDtoCopyWith<$Res>(_value.poster, (value) {
      return _then(_value.copyWith(poster: value));
    });
  }
}

/// @nodoc
abstract class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(
          _CommentDto value, $Res Function(_CommentDto) then) =
      __$CommentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      UserDto poster,
      String experienceId,
      String content,
      @ServerTimestampConverter() DateTime creationDate,
      @ServerTimestampConverter() DateTime modificationDate});

  @override
  $UserDtoCopyWith<$Res> get poster;
}

/// @nodoc
class __$CommentDtoCopyWithImpl<$Res> extends _$CommentDtoCopyWithImpl<$Res>
    implements _$CommentDtoCopyWith<$Res> {
  __$CommentDtoCopyWithImpl(
      _CommentDto _value, $Res Function(_CommentDto) _then)
      : super(_value, (v) => _then(v as _CommentDto));

  @override
  _CommentDto get _value => super._value as _CommentDto;

  @override
  $Res call({
    Object id = freezed,
    Object poster = freezed,
    Object experienceId = freezed,
    Object content = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_CommentDto(
      id: id == freezed ? _value.id : id as String,
      poster: poster == freezed ? _value.poster : poster as UserDto,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId as String,
      content: content == freezed ? _value.content : content as String,
      creationDate: creationDate == freezed
          ? _value.creationDate
          : creationDate as DateTime,
      modificationDate: modificationDate == freezed
          ? _value.modificationDate
          : modificationDate as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommentDto extends _CommentDto {
  const _$_CommentDto(
      {@required this.id,
      @required this.poster,
      @required this.experienceId,
      @required this.content,
      @required @ServerTimestampConverter() this.creationDate,
      @required @ServerTimestampConverter() this.modificationDate})
      : assert(id != null),
        assert(poster != null),
        assert(experienceId != null),
        assert(content != null),
        assert(creationDate != null),
        assert(modificationDate != null),
        super._();

  factory _$_CommentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentDtoFromJson(json);

  @override
  final String id;
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
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.poster, poster) ||
                const DeepCollectionEquality().equals(other.poster, poster)) &&
            (identical(other.experienceId, experienceId) ||
                const DeepCollectionEquality()
                    .equals(other.experienceId, experienceId)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
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
      const DeepCollectionEquality().hash(poster) ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);

  @JsonKey(ignore: true)
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith =>
      __$CommentDtoCopyWithImpl<_CommentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDtoToJson(this);
  }
}

abstract class _CommentDto extends CommentDto {
  const _CommentDto._() : super._();
  const factory _CommentDto(
          {@required String id,
          @required UserDto poster,
          @required String experienceId,
          @required String content,
          @required @ServerTimestampConverter() DateTime creationDate,
          @required @ServerTimestampConverter() DateTime modificationDate}) =
      _$_CommentDto;

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$_CommentDto.fromJson;

  @override
  String get id;
  @override
  UserDto get poster;
  @override
  String get experienceId;
  @override
  String get content;
  @override
  @ServerTimestampConverter()
  DateTime get creationDate;
  @override
  @ServerTimestampConverter()
  DateTime get modificationDate;
  @override
  @JsonKey(ignore: true)
  _$CommentDtoCopyWith<_CommentDto> get copyWith;
}
