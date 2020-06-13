import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
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

  CreateAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final achievement = Achievement(
      id: null,
      name: params.name,
      description: params.description,
      imageURL: params.imageUrl,
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
  final String imageUrl;
  final String type;
  final int requisite;
  final ExperiencePoints experiencePoints;
  final User creator;
  final Set<Tag> tags;

  Params({
    @required this.name,
    @required this.description,
    @required this.imageUrl,
    @required this.type,
    @required this.requisite,
    @required this.experiencePoints,
    @required this.creator,
    @required this.tags,
  });
}
