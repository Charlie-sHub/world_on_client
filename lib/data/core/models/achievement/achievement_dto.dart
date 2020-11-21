import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'achievement_dto.freezed.dart';
part 'achievement_dto.g.dart';

// TODO: Create DTOs that properly reflect the denormalized nature of the database
// For example in the Experience it makes sense to have the names of the tags of the experience
// but not the rest of the tag data, that way the documents in Firebase can be smaller neater and the transformation to and from domain easier
@freezed
abstract class AchievementDto implements _$AchievementDto {
  const AchievementDto._();

  const factory AchievementDto({
    @required String id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required String type,
    @required int requisite,
    @required int experiencePoints,
    @required String creatorId,
    @required String creationDate,
    @required String modificationDate,
    @required Set<String> tagNames,
  }) = _AchievementDto;

  factory AchievementDto.fromDomain(Achievement achievement) => AchievementDto(
        id: achievement.id.getOrCrash(),
        name: achievement.name.getOrCrash(),
        description: achievement.description.getOrCrash(),
        imageURL: achievement.imageURL,
        type: achievement.type,
        requisite: achievement.requisite,
        experiencePoints: achievement.experiencePoints.getOrCrash(),
        creatorId: achievement.creatorId.getOrCrash(),
        creationDate: achievement.creationDate.getOrCrash().toIso8601String(),
        modificationDate: achievement.modificationDate.getOrCrash().toIso8601String(),
        tagNames: achievement.tags.getOrCrash().asSet().map((tag) => tag.name.getOrCrash()).toSet(),
      );

  Achievement toDomain() => Achievement(
        id: UniqueId.fromUniqueString(id),
        name: Name(name),
        description: EntityDescription(description),
        imageURL: imageURL,
        imageFile: dartz.none(),
        type: type,
        requisite: requisite,
        experiencePoints: ExperiencePoints(experiencePoints),
        creatorId: UniqueId.fromUniqueString(creatorId),
        creationDate: PastDate(DateTime.now()),
        modificationDate: PastDate(DateTime.now()),
        tags: TagSet(tagNames.map((name) => Tag.empty().copyWith(name: Name(name))).toImmutableSet()),
      );

  factory AchievementDto.fromJson(Map<String, dynamic> json) => _$AchievementDtoFromJson(json);

  factory AchievementDto.fromFirestore(DocumentSnapshot document) => AchievementDto.fromJson(
        document.data(),
      ).copyWith(
        id: document.id,
      );
}
