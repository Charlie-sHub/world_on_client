import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/objective.dart';
import 'package:worldon/domain/core/entities/reward.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

class CreateExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  CreateExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final experience = Experience(
      id: null,
      name: params.name,
      description: params.description,
      imageNames: params.imageNames,
      latitude: params.latitude,
      longitude: params.longitude,
      location: params.location,
      creator: params.creator,
      difficulty: params.difficulty,
      creationDate: PastDate(DateTime.now()),
      modificationDate: PastDate(DateTime.now()),
      comments: null,
      objectives: params.objectives,
      rewards: params.rewards,
      tags: params.tags,
      likedBy: null,
      doneBy: null,
    );
    return _repository.createExperience(experience);
  }
}

class Params {
  final Name name;
  final EntityDescription description;
  final Set<String> imageNames;
  final double latitude;
  final double longitude;
  final Location location;
  final User creator;
  final Difficulty difficulty;

  // TODO: Determine how to create Objectives
  final Set<Objective> objectives;
  final Set<Reward> rewards;
  final Set<Tag> tags;

  Params({
    @required this.name,
    @required this.description,
    @required this.imageNames,
    @required this.latitude,
    @required this.longitude,
    @required this.location,
    @required this.creator,
    @required this.difficulty,
    @required this.objectives,
    @required this.rewards,
    @required this.tags,
  });
}
