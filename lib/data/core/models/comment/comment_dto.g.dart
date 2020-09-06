// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    id: json['id'] as int,
    poster: json['poster'] == null ? null : UserDto.fromJson(json['poster'] as Map<String, dynamic>),
    experienceId: json['experienceId'] as int,
    content: json['content'] as String,
    creationDate: json['creationDate'] as String,
    modificationDate: json['modificationDate'] as String,
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) =>
  <String, dynamic>{
      'id': instance.id,
      'poster': instance.poster,
      'experienceId': instance.experienceId,
      'content': instance.content,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
    };
