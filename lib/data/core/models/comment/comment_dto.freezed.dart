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

class _$CommentDtoTearOff {
  const _$CommentDtoTearOff();

// ignore: unused_element
  _CommentDto call({@required int id, @required UserDto poster, @required int experienceId, @required String content, @required String creationDate, @required String modificationDate}) {
    return _CommentDto(
      id: id,
      poster: poster,
      experienceId: experienceId,
      content: content,
      creationDate: creationDate,
      modificationDate: modificationDate,
    );
  }
}

// ignore: unused_element
const $CommentDto = _$CommentDtoTearOff();

mixin _$CommentDto {
  int get id;
  UserDto get poster;
  int get experienceId;
  String get content;
  String get creationDate;
  String get modificationDate;

  Map<String, dynamic> toJson();
  $CommentDtoCopyWith<CommentDto> get copyWith;
}

abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(CommentDto value, $Res Function(CommentDto) then) = _$CommentDtoCopyWithImpl<$Res>;

  $Res call({int id, UserDto poster, int experienceId, String content, String creationDate, String modificationDate});

  $UserDtoCopyWith<$Res> get poster;
}

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
      id: id == freezed ? _value.id : id as int,
      poster: poster == freezed ? _value.poster : poster as UserDto,
      experienceId: experienceId == freezed ? _value.experienceId : experienceId as int,
      content: content == freezed ? _value.content : content as String,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as String,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as String,
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

abstract class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(_CommentDto value, $Res Function(_CommentDto) then) = __$CommentDtoCopyWithImpl<$Res>;
  
  @override
  $Res call({int id, UserDto poster, int experienceId, String content, String creationDate, String modificationDate});
  
  @override
  $UserDtoCopyWith<$Res> get poster;
}

class __$CommentDtoCopyWithImpl<$Res> extends _$CommentDtoCopyWithImpl<$Res> implements _$CommentDtoCopyWith<$Res> {
  __$CommentDtoCopyWithImpl(_CommentDto _value, $Res Function(_CommentDto) _then) : super(_value, (v) => _then(v as _CommentDto));
  
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
      id: id == freezed ? _value.id : id as int,
      poster: poster == freezed ? _value.poster : poster as UserDto,
      experienceId: experienceId == freezed ? _value.experienceId : experienceId as int,
      content: content == freezed ? _value.content : content as String,
      creationDate: creationDate == freezed ? _value.creationDate : creationDate as String,
      modificationDate: modificationDate == freezed ? _value.modificationDate : modificationDate as String,
    ));
  }
}

@JsonSerializable()
class _$_CommentDto extends _CommentDto {
  const _$_CommentDto({@required this.id, @required this.poster, @required this.experienceId, @required this.content, @required this.creationDate, @required this.modificationDate})
    : assert(id != null),
      assert(poster != null),
      assert(experienceId != null),
      assert(content != null),
      assert(creationDate != null),
      assert(modificationDate != null),
      super._();
  
  factory _$_CommentDto.fromJson(Map<String, dynamic> json) => _$_$_CommentDtoFromJson(json);
  
  @override
  final int id;
  @override
  final UserDto poster;
  @override
  final int experienceId;
  @override
  final String content;
  @override
  final String creationDate;
  @override
  final String modificationDate;

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
  
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith => __$CommentDtoCopyWithImpl<_CommentDto>(this, _$identity);
  
  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentDtoToJson(this);
  }
}

abstract class _CommentDto extends CommentDto {
  const _CommentDto._() : super._();
  
  const factory _CommentDto({@required int id, @required UserDto poster, @required int experienceId, @required String content, @required String creationDate, @required String modificationDate}) =
  _$_CommentDto;
  
  factory _CommentDto.fromJson(Map<String, dynamic> json) = _$_CommentDto.fromJson;
  
  @override
  int get id;
  
  @override
  UserDto get poster;
  
  @override
  int get experienceId;

  @override
  String get content;
  
  @override
  String get creationDate;
  @override
  String get modificationDate;
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith;
}
