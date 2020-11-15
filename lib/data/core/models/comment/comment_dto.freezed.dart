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
      {String id,
      @required String posterId,
      @required String experienceId,
      @required String content,
      @required String creationDate,
      @required String modificationDate}) {
    return _CommentDto(
      id: id,
      posterId: posterId,
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
  String get posterId;
  String get experienceId;
  String get content;
  String get creationDate;
  String get modificationDate;

  Map<String, dynamic> toJson();
  $CommentDtoCopyWith<CommentDto> get copyWith;
}

/// @nodoc
abstract class $CommentDtoCopyWith<$Res> {
  factory $CommentDtoCopyWith(
          CommentDto value, $Res Function(CommentDto) then) =
      _$CommentDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String posterId,
      String experienceId,
      String content,
      String creationDate,
      String modificationDate});
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
    Object posterId = freezed,
    Object experienceId = freezed,
    Object content = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      posterId: posterId == freezed ? _value.posterId : posterId as String,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId as String,
      content: content == freezed ? _value.content : content as String,
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
abstract class _$CommentDtoCopyWith<$Res> implements $CommentDtoCopyWith<$Res> {
  factory _$CommentDtoCopyWith(
          _CommentDto value, $Res Function(_CommentDto) then) =
      __$CommentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String posterId,
      String experienceId,
      String content,
      String creationDate,
      String modificationDate});
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
    Object posterId = freezed,
    Object experienceId = freezed,
    Object content = freezed,
    Object creationDate = freezed,
    Object modificationDate = freezed,
  }) {
    return _then(_CommentDto(
      id: id == freezed ? _value.id : id as String,
      posterId: posterId == freezed ? _value.posterId : posterId as String,
      experienceId: experienceId == freezed
          ? _value.experienceId
          : experienceId as String,
      content: content == freezed ? _value.content : content as String,
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

/// @nodoc
class _$_CommentDto extends _CommentDto {
  const _$_CommentDto(
      {this.id,
      @required this.posterId,
      @required this.experienceId,
      @required this.content,
      @required this.creationDate,
      @required this.modificationDate})
      : assert(posterId != null),
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
  final String posterId;
  @override
  final String experienceId;
  @override
  final String content;
  @override
  final String creationDate;
  @override
  final String modificationDate;

  @override
  String toString() {
    return 'CommentDto(id: $id, posterId: $posterId, experienceId: $experienceId, content: $content, creationDate: $creationDate, modificationDate: $modificationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.posterId, posterId) ||
                const DeepCollectionEquality()
                    .equals(other.posterId, posterId)) &&
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
      const DeepCollectionEquality().hash(posterId) ^
      const DeepCollectionEquality().hash(experienceId) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(creationDate) ^
      const DeepCollectionEquality().hash(modificationDate);

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
      {String id,
      @required String posterId,
      @required String experienceId,
      @required String content,
      @required String creationDate,
      @required String modificationDate}) = _$_CommentDto;

  factory _CommentDto.fromJson(Map<String, dynamic> json) =
      _$_CommentDto.fromJson;

  @override
  String get id;
  @override
  String get posterId;
  @override
  String get experienceId;
  @override
  String get content;
  @override
  String get creationDate;
  @override
  String get modificationDate;
  @override
  _$CommentDtoCopyWith<_CommentDto> get copyWith;
}
