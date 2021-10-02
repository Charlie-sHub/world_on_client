// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TagDto _$$_TagDtoFromJson(Map<String, dynamic> json) => _$_TagDto(
      id: json['id'] as String,
      name: json['name'] as String,
      creatorId: json['creatorId'] as String,
      creationDate: const ServerTimestampConverter()
          .fromJson(json['creationDate'] as Timestamp),
      modificationDate: const ServerTimestampConverter()
          .fromJson(json['modificationDate'] as Timestamp),
    );

Map<String, dynamic> _$$_TagDtoToJson(_$_TagDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'creatorId': instance.creatorId,
      'creationDate':
          const ServerTimestampConverter().toJson(instance.creationDate),
      'modificationDate':
          const ServerTimestampConverter().toJson(instance.modificationDate),
    };
