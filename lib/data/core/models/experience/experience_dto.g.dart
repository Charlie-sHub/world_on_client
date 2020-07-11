// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExperienceDto _$_$_ExperienceDtoFromJson(Map<String, dynamic> json) {
  return _$_ExperienceDto(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    imageURLs: (json['imageURLs'] as List)?.map((e) => e as String)?.toSet(),
    coordinates: json['coordinates'] == null ? null : CoordinatesDto.fromJson(json['coordinates'] as Map<String, dynamic>),
    location: json['location'] == null ? null : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
    creator: json['creator'] == null ? null : UserDto.fromJson(json['creator'] as Map<String, dynamic>),
    difficulty: json['difficulty'] as int,
    creationDate: json['creationDate'] as String,
    modificationDate: json['modificationDate'] as String,
    objectives: (json['objectives'] as List)?.map((e) => e == null ? null : ObjectiveDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    rewards: (json['rewards'] as List)?.map((e) => e == null ? null : RewardDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    tags: (json['tags'] as List)?.map((e) => e == null ? null : TagDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    comments: (json['comments'] as List)?.map((e) => e == null ? null : CommentDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    likedBy: (json['likedBy'] as List)?.map((e) => e == null ? null : UserDto.fromJson(e as Map<String, dynamic>))?.toSet(),
    doneBy: (json['doneBy'] as List)?.map((e) => e == null ? null : UserDto.fromJson(e as Map<String, dynamic>))?.toSet(),
  );
}

Map<String, dynamic> _$_$_ExperienceDtoToJson(_$_ExperienceDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageURLs': instance.imageURLs?.toList(),
      'coordinates': instance.coordinates,
      'location': instance.location,
      'creator': instance.creator,
      'difficulty': instance.difficulty,
      'creationDate': instance.creationDate,
      'modificationDate': instance.modificationDate,
      'objectives': instance.objectives?.toList(),
      'rewards': instance.rewards?.toList(),
      'tags': instance.tags?.toList(),
      'comments': instance.comments?.toList(),
      'likedBy': instance.likedBy?.toList(),
      'doneBy': instance.doneBy?.toList(),
    };
