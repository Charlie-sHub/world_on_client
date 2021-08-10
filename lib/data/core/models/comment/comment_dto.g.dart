// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    id: json['id'] as String,
    poster: SimpleUserDto.fromJson(json['poster'] as Map<String, dynamic>),
    experienceId: json['experienceId'] as String,
    content: json['content'] as String,
    creationDate: const ServerTimestampConverter()
        .fromJson(json['creationDate'] as Timestamp),
    modificationDate: const ServerTimestampConverter()
        .fromJson(json['modificationDate'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster': instance.poster.toJson(),
      'experienceId': instance.experienceId,
      'content': instance.content,
      'creationDate':
          const ServerTimestampConverter().toJson(instance.creationDate),
      'modificationDate':
          const ServerTimestampConverter().toJson(instance.modificationDate),
    };
