import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

class EditAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepositoryInterface _repository;

  const EditAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      final achievement = Achievement(
        id: params.id,
        name: params.name,
        description: params.description,
        imageName: params.imageName,
        type: params.type,
        requisite: params.requisite,
        experiencePoints: params.experiencePoints,
        creator: params.creator,
        creationDate: params.creationDate,
        modificationDate: PastDate(DateTime.now()),
        tags: params.tags,
      );
      return _repository.editAchievement(achievement);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;
  final int id;
  final Name name;
  final EntityDescription description;
  final String imageName; // TODO: Figure the images out
  final String type;
  final int requisite;
  final ExperiencePoints experiencePoints;
  final PastDate creationDate;
  final User creator;
  final Set<Tag> tags;

  Params({
    @required this.userRequesting,
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageName,
    @required this.type,
    @required this.requisite,
    @required this.experiencePoints,
    @required this.creationDate,
    @required this.creator,
    @required this.tags,
  });
}
