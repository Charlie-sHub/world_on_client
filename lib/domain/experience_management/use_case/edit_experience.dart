import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/comment.dart';
import 'package:worldon/domain/core/entities/coordinates.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/location.dart';
import 'package:worldon/domain/core/entities/objective.dart';
import 'package:worldon/domain/core/entities/reward.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

class EditExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  EditExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      final experience = Experience(
        id: params.id,
        name: params.name,
        description: params.description,
        imageURLs: params.imageNames,
        coordinates: params.coordinates,
        location: params.location,
        creator: params.creator,
        difficulty: params.difficulty,
        creationDate: params.creationDate,
        modificationDate: PastDate(DateTime.now()),
        comments: params.comments,
        objectives: params.objectives,
        rewards: params.rewards,
        tags: params.tags,
        likedBy: params.likedBy,
        doneBy: params.doneBy,
      );
      return _repository.editExperience(experience);
    } else {
      return left(const CoreDomainFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;
  final int id;
  final Name name;
  final EntityDescription description;
  final Set<String> imageNames;
  final Coordinates coordinates;
  final Location location;
  final User creator;
  final Difficulty difficulty;
  final PastDate creationDate;
  final Set<Objective> objectives;
  final Set<Reward> rewards;
  final Set<Tag> tags;

  // TODO: Should these Sets be here?
  // They can't be changed when editing an Experience yet leaving them null could be problematic as it may nullify the entries in the database
  final Set<Comment> comments;
  final Set<User> likedBy;
  final Set<User> doneBy;

  Params({
    @required this.userRequesting,
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.imageNames,
    @required this.coordinates,
    @required this.location,
    @required this.creator,
    @required this.difficulty,
    @required this.creationDate,
    @required this.objectives,
    @required this.rewards,
    @required this.tags,
    @required this.comments,
    @required this.likedBy,
    @required this.doneBy,
  });
}
