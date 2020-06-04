import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class CreateAchievement implements AsyncUseCase<Unit, Params> {
  final AchievementRepository _repository;

  const CreateAchievement(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.createAchievement(params.achievement);
  }
}

class Params {
  final Achievement achievement;

  Params({@required this.achievement});
/*
  final String name;
  final String description;
  final String imageName; // TODO: Figure the images out
  final String type;
  final int requisite;
  final int experiencePoints;
  final User creator;
  final DateTime creationDate;
  final DateTime modificationDate;
  final Set<Tag> tags;

  Params({
    @required this.name,
    @required this.description,
    @required this.imageName,
    @required this.type,
    @required this.requisite,
    @required this.experiencePoints,
    @required this.creator,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.tags,
  });
  */
}
