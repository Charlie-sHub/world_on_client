import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/data/core/misc/server_timestamp_converter.dart';
import 'package:worldon/data/core/models/comment/comment_dto.dart';
import 'package:worldon/data/core/models/coordinates/coordinates_dto.dart';
import 'package:worldon/data/core/models/location/location_dto.dart';
import 'package:worldon/data/core/models/objective/objective_dto.dart';
import 'package:worldon/data/core/models/reward/reward_dto.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'experience_dto.freezed.dart';
part 'experience_dto.g.dart';

@freezed
class ExperienceDto with _$ExperienceDto {
  const ExperienceDto._();

  const factory ExperienceDto({
    required String id,
    required String title,
    required String description,
    required Set<String> imageURLs,
    required CoordinatesDto coordinates,
    required LocationDto location,
    required String creatorId,
    required UserDto creator,
    required int difficulty,
    @ServerTimestampConverter() required DateTime creationDate,
    @ServerTimestampConverter() required DateTime modificationDate,
    required List<ObjectiveDto> objectives,
    required Set<RewardDto> rewards,
    required Set<TagDto> tags,
    // Probably shouldn't be part of the DTO, as in Firestore it's a sub document of the experience document
    required Set<CommentDto> comments,
    required Set<String> likedBy,
    required Set<String> doneBy,
  }) = _ExperienceDto;

  factory ExperienceDto.fromDomain(Experience experience) => ExperienceDto(
        id: experience.id.getOrCrash(),
        title: experience.title.getOrCrash(),
        description: experience.description.getOrCrash(),
        imageURLs: experience.imageURLs,
        coordinates: CoordinatesDto.fromDomain(experience.coordinates),
        location: LocationDto.fromDomain(experience.location),
        creatorId: experience.creator.id.getOrCrash(),
        creator: UserDto.fromDomain(experience.creator),
        difficulty: experience.difficulty.getOrCrash(),
        creationDate: experience.creationDate.getOrCrash(),
        modificationDate: experience.modificationDate.getOrCrash(),
        objectives: experience.objectives.getOrCrash().map((objective) => ObjectiveDto.fromDomain(objective)).dart,
        rewards: experience.rewards.getOrCrash().dart.map((reward) => RewardDto.fromDomain(reward)).toSet(),
        tags: experience.tags.getOrCrash().dart.map((tag) => TagDto.fromDomain(tag)).toSet(),
        comments: {},
        likedBy: experience.likedBy.map((_uniqueId) => _uniqueId.getOrCrash()).toSet(),
        doneBy: experience.doneBy.map((_uniqueId) => _uniqueId.getOrCrash()).toSet(),
      );

  Experience toDomain() => Experience(
        id: UniqueId.fromUniqueString(id),
        title: Name(title),
        description: EntityDescription(description),
        imageURLs: imageURLs,
        imageAssetsOption: dartz.none(),
        coordinates: coordinates.toDomain(),
        location: location.toDomain(),
        creator: creator.toDomain(),
        difficulty: Difficulty(difficulty),
        creationDate: PastDate(creationDate),
        modificationDate: PastDate(modificationDate),
        objectives: ObjectiveList(objectives.map((objectiveDto) => objectiveDto.toDomain()).toImmutableList()),
        rewards: RewardSet(rewards.map((rewardDto) => rewardDto.toDomain()).toImmutableSet()),
        tags: TagSet(tags.map((tagDto) => tagDto.toDomain()).toImmutableSet()),
        comments: {},
        likedBy: likedBy.map((_id) => UniqueId.fromUniqueString(_id)).toSet(),
        doneBy: doneBy.map((_id) => UniqueId.fromUniqueString(_id)).toSet(),
      );

  factory ExperienceDto.fromJson(Map<String, dynamic> json) => _$ExperienceDtoFromJson(json);

  factory ExperienceDto.fromFirestore(DocumentSnapshot document) => ExperienceDto.fromJson(
        document.data()!,
      ).copyWith(
        id: document.id,
      );
}
