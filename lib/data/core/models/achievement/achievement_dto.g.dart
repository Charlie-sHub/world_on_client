// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AchievementDto _$$_AchievementDtoFromJson(Map<String, dynamic> json) =>
    _$_AchievementDto(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageURL: json['imageURL'] as String,
      type: json['type'] as String,
      requisite: json['requisite'] as int,
      experiencePoints: json['experiencePoints'] as int,
      creatorId: json['creatorId'] as String,
      creationDate: const ServerTimestampConverter()
          .fromJson(json['creationDate'] as Timestamp),
      modificationDate: const ServerTimestampConverter()
          .fromJson(json['modificationDate'] as Timestamp),
      tagNames:
          (json['tagNames'] as List<dynamic>).map((e) => e as String).toSet(),
    );

Map<String, dynamic> _$$_AchievementDtoToJson(_$_AchievementDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageURL': instance.imageURL,
      'type': instance.type,
      'requisite': instance.requisite,
      'experiencePoints': instance.experiencePoints,
      'creatorId': instance.creatorId,
      'creationDate':
          const ServerTimestampConverter().toJson(instance.creationDate),
      'modificationDate':
          const ServerTimestampConverter().toJson(instance.modificationDate),
      'tagNames': instance.tagNames.toList(),
    };
