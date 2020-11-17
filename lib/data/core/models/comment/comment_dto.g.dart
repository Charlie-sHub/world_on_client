// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentDto _$_$_CommentDtoFromJson(Map<String, dynamic> json) {
  return _$_CommentDto(
    posterId: json['posterId'] as String,
    experienceId: json['experienceId'] as String,
    content: json['content'] as String,
    creationDate: json['creationDate'] as String,
    modificationDate: json['modificationDate'] as String,
  );
}

Map<String, dynamic> _$_$_CommentDtoToJson(_$_CommentDto instance) => <String, dynamic>{
      'posterId': instance.posterId,
      'experienceId': instance.experienceId,
      'content': instance.content,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
    };
