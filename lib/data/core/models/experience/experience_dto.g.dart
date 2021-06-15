// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExperienceDto _$_$_ExperienceDtoFromJson(Map<String, dynamic> json) {
  return _$_ExperienceDto(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    imageURLs: (json['imageURLs'] as List<dynamic>).map((e) => e as String).toSet(),
    coordinates: CoordinatesDto.fromJson(json['coordinates'] as Map<String, dynamic>),
    location: LocationDto.fromJson(json['location'] as Map<String, dynamic>),
    creatorId: json['creatorId'] as String,
    creator: UserDto.fromJson(json['creator'] as Map<String, dynamic>),
    difficulty: json['difficulty'] as int,
    creationDate: const ServerTimestampConverter().fromJson(json['creationDate'] as Timestamp),
    modificationDate: const ServerTimestampConverter().fromJson(json['modificationDate'] as Timestamp),
    objectives: (json['objectives'] as List<dynamic>).map((e) => ObjectiveDto.fromJson(e as Map<String, dynamic>)).toList(),
    rewards: (json['rewards'] as List<dynamic>).map((e) => RewardDto.fromJson(e as Map<String, dynamic>)).toSet(),
    tags: (json['tags'] as List<dynamic>).map((e) => TagDto.fromJson(e as Map<String, dynamic>)).toSet(),
    comments: (json['comments'] as List<dynamic>).map((e) => CommentDto.fromJson(e as Map<String, dynamic>)).toSet(),
    likedBy: (json['likedBy'] as List<dynamic>).map((e) => e as String).toSet(),
    doneBy: (json['doneBy'] as List<dynamic>).map((e) => e as String).toSet(),
    toDoBy: (json['toDoBy'] as List<dynamic>).map((e) => e as String).toSet(),
    isPromoted: json['isPromoted'] as bool,
  );
}

Map<String, dynamic> _$_$_ExperienceDtoToJson(_$_ExperienceDto instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageURLs': instance.imageURLs.toList(),
      'coordinates': instance.coordinates.toJson(),
      'location': instance.location.toJson(),
      'creatorId': instance.creatorId,
      'creator': instance.creator.toJson(),
      'difficulty': instance.difficulty,
      'creationDate': const ServerTimestampConverter().toJson(instance.creationDate),
      'modificationDate': const ServerTimestampConverter().toJson(instance.modificationDate),
      'objectives': instance.objectives.map((e) => e.toJson()).toList(),
      'rewards': instance.rewards.map((e) => e.toJson()).toList(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'likedBy': instance.likedBy.toList(),
      'doneBy': instance.doneBy.toList(),
      'toDoBy': instance.toDoBy.toList(),
      'isPromoted': instance.isPromoted,
    };
