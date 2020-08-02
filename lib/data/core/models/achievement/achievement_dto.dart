import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

part 'achievement_dto.freezed.dart';
part 'achievement_dto.g.dart';

@freezed
abstract class AchievementDto implements _$AchievementDto {
  const AchievementDto._();

  const factory AchievementDto({
    @required int id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required String type,
    @required int requisite,
    @required int experiencePoints,
    @required UserDto creator,
    @required String creationDate,
    @required String modificationDate,
    @required Set<TagDto> tags,
  }) = _AchievementDto;

  factory AchievementDto.fromDomain(Achievement achievement) => AchievementDto(
        id: achievement.id,
        name: achievement.name.getOrCrash(),
        description: achievement.description.getOrCrash(),
        imageURL: achievement.imageURL,
        type: achievement.type,
        requisite: achievement.requisite,
        experiencePoints: achievement.experiencePoints.getOrCrash(),
        creator: UserDto.fromDomain(achievement.creator),
        creationDate: achievement.creationDate.getOrCrash().toIso8601String(),
        modificationDate: achievement.modificationDate.getOrCrash().toIso8601String(),
        tags: achievement.tags.getOrCrash().asSet().map((tag) => TagDto.fromDomain(tag)).toSet(),
      );

  Achievement toDomain() => Achievement(
        id: id,
        name: Name(name),
        description: EntityDescription(description),
        imageURL: imageURL,
        imageFile: dartz.none(),
        type: type,
        requisite: requisite,
        experiencePoints: ExperiencePoints(experiencePoints),
        creator: creator.toDomain(),
        creationDate: PastDate(DateTime.parse(creationDate)),
        modificationDate: PastDate(DateTime.parse(modificationDate)),
        tags: TagSet(tags.map((tagDto) => tagDto.toDomain()).toImmutableSet()),
      );

  factory AchievementDto.fromJson(Map<String, dynamic> json) => _$AchievementDtoFromJson(json);

// TODO: Implement fromFirestore methods in the DTOs
//factory AchievementDto.fromFirestore(DocumentSnapshot document) {
//  return AchievementDto.fromJson(document.data);
//}
}
