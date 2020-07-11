import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';

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
    @required int requisite, // This will probably be reworked in the future to accommodate different kinds of achievements
    @required int experiencePoints,
    @required UserDto creator,
    @required String creationDate,
    @required String modificationDate,
    @required List<TagDto> tags,
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
        tags: achievement.tags.getOrCrash().map((tag) => TagDto.fromDomain(tag)).asList(),
      );
}
