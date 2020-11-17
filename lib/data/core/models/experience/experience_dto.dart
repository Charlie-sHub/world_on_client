import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
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
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'experience_dto.freezed.dart';
part 'experience_dto.g.dart';

@freezed
abstract class ExperienceDto implements _$ExperienceDto {
  const ExperienceDto._();

  const factory ExperienceDto({
    @JsonKey(ignore: true) String id,
    @required String title,
    @required String description,
    @required Set<String> imageURLs,
    @required CoordinatesDto coordinates,
    @required LocationDto location,
    @required UserDto creator,
    @required int difficulty,
    @required String creationDate,
    @required String modificationDate,
    @required Set<ObjectiveDto> objectives,
    @required Set<RewardDto> rewards,
    @required Set<TagDto> tags,
    // Probably shouldn't be part of the DTO, as in Firestore it's a sub document of the experience document
    @required Set<CommentDto> comments,
    @required Set<UserDto> likedBy,
    @required Set<UserDto> doneBy,
  }) = _ExperienceDto;

  factory ExperienceDto.fromDomain(Experience experience) => ExperienceDto(
        id: experience.id.getOrCrash(),
        title: experience.title.getOrCrash(),
        description: experience.description.getOrCrash(),
        imageURLs: experience.imageURLs,
        coordinates: CoordinatesDto.fromDomain(experience.coordinates),
        location: LocationDto.fromDomain(experience.location),
        creator: UserDto.fromDomain(experience.creator),
        difficulty: experience.difficulty.getOrCrash(),
        creationDate: experience.creationDate.getOrCrash().toIso8601String(),
        modificationDate: experience.modificationDate.getOrCrash().toIso8601String(),
        objectives: experience.objectives.getOrCrash().asSet().map((objective) => ObjectiveDto.fromDomain(objective)).toSet(),
        rewards: experience.rewards.getOrCrash().asSet().map((reward) => RewardDto.fromDomain(reward)).toSet(),
        tags: experience.tags.getOrCrash().asSet().map((tag) => TagDto.fromDomain(tag)).toSet(),
        comments: {},
        likedBy: {},
        doneBy: {},
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
        creationDate: PastDate(DateTime.parse(creationDate)),
        modificationDate: PastDate(DateTime.parse(modificationDate)),
        objectives: ObjectiveSet(objectives.map((objectiveDto) => objectiveDto.toDomain()).toImmutableSet()),
        rewards: RewardSet(rewards.map((rewardDto) => rewardDto.toDomain()).toImmutableSet()),
        tags: TagSet(tags.map((tagDto) => tagDto.toDomain()).toImmutableSet()),
        comments: {},
        // TODO: Figure out a way to save and retrieve the likes and doneBys
        // Denormalization would go too far
        // it's ok for the creator and the tags, but for potentially infinite likes and doneBys?
        likedBy: {},
        doneBy: {},
      );

  factory ExperienceDto.fromJson(Map<String, dynamic> json) => _$ExperienceDtoFromJson(json);

  factory ExperienceDto.fromFirestore(DocumentSnapshot document) => ExperienceDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
