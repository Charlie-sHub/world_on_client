import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

class CreateAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepositoryInterface _repository;

  const CreateAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final achievement = Achievement(
      id: null,
      name: params.name,
      description: params.description,
      imageName: params.imageName,
      type: params.type,
      requisite: params.requisite,
      experiencePoints: params.experiencePoints,
      creator: params.creator,
      creationDate: PastDate(DateTime.now()),
      modificationDate: PastDate(DateTime.now()),
      tags: params.tags,
    );
    return _repository.createAchievement(achievement);
  }
}

class Params {
  final Name name;
  final EntityDescription description;

  // TODO: Figure the images out
  // I'm leaning on leaving the URLs of the images in these attributes and using the Flutter Image class with them
  // though that's pretty much ignoring the architecture, also the current server doesn't support that, but since it'll be abandoned in favor of Firebase that shouldn't be an issue
  final String imageName;
  final String type;
  final int requisite;
  final ExperiencePoints experiencePoints;
  final User creator;
  final Set<Tag> tags;

  Params({
    @required this.name,
    @required this.description,
    @required this.imageName,
    @required this.type,
    @required this.requisite,
    @required this.experiencePoints,
    @required this.creator,
    @required this.tags,
  });
}
