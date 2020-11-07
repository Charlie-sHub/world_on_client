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
    @required String id,
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
        comments: experience.comments.map((comment) => CommentDto.fromDomain(comment)).toSet(),
        likedBy: experience.likedBy.map((user) => UserDto.fromDomain(user)).toSet(),
        doneBy: experience.doneBy.map((user) => UserDto.fromDomain(user)).toSet(),
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
        comments: comments.map((commentDto) => commentDto.toDomain()).toSet(),
        likedBy: likedBy.map((userDto) => userDto.toDomain()).toSet(),
        doneBy: doneBy.map((userDto) => userDto.toDomain()).toSet(),
      );

  factory ExperienceDto.fromJson(Map<String, dynamic> json) => _$ExperienceDtoFromJson(json);
}
