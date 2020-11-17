// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AchievementDto _$_$_AchievementDtoFromJson(Map<String, dynamic> json) {
  return _$_AchievementDto(
    name: json['name'] as String,
    description: json['description'] as String,
    imageURL: json['imageURL'] as String,
    type: json['type'] as String,
    requisite: json['requisite'] as int,
    experiencePoints: json['experiencePoints'] as int,
    creatorId: json['creatorId'] as String,
    creationDate: json['creationDate'] as String,
    modificationDate: json['modificationDate'] as String,
    tagsIds: (json['tagsIds'] as List)?.map((e) => e as String)?.toSet(),
  );
}

Map<String, dynamic> _$_$_AchievementDtoToJson(_$_AchievementDto instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'imageURL': instance.imageURL,
      'type': instance.type,
      'requisite': instance.requisite,
      'experiencePoints': instance.experiencePoints,
      'creatorId': instance.creatorId,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
      'tagsIds': instance.tagsIds?.toList(),
    };
