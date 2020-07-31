// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AchievementDto _$_$_AchievementDtoFromJson(Map<String, dynamic> json) {
  return _$_AchievementDto(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    imageURL: json['imageURL'] as String,
    imageFile: (json['imageFile'] as List)?.map((e) => e as int)?.toList(),
    type: json['type'] as String,
    requisite: json['requisite'] as int,
    experiencePoints: json['experiencePoints'] as int,
    creator: json['creator'] == null ? null : UserDto.fromJson(json['creator'] as Map<String, dynamic>),
    creationDate: json['creationDate'] as String,
    modificationDate: json['modificationDate'] as String,
    tags: (json['tags'] as List)
      ?.map((e) =>
    e == null ? null : TagDto.fromJson(e as Map<String, dynamic>))
      ?.toSet(),
  );
}

Map<String, dynamic> _$_$_AchievementDtoToJson(_$_AchievementDto instance) =>
  <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageURL': instance.imageURL,
    'imageFile': instance.imageFile,
      'type': instance.type,
      'requisite': instance.requisite,
      'experiencePoints': instance.experiencePoints,
      'creator': instance.creator,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
      'tags': instance.tags?.toList(),
    };
