// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagDto _$_$_TagDtoFromJson(Map<String, dynamic> json) {
  return _$_TagDto(
    name: json['name'] as String,
    creatorId: json['creatorId'] as String,
    creationDate: json['creationDate'] as String,
    modificationDate: json['modificationDate'] as String,
  );
}

Map<String, dynamic> _$_$_TagDtoToJson(_$_TagDto instance) => <String, dynamic>{
      'name': instance.name,
      'creatorId': instance.creatorId,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
    };
