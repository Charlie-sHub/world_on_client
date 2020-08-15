import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(as: ExperienceNavigationRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> finishExperience(int experienceId) {
    // get the logged in user with the users dao
    // get the experience by its id from the experience dao
    // copy the user with the experience added to its done experiences
    // update the user with the users dao
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> likeExperience(int experienceId) {
    // get the logged in user with the users dao
    // get the experience by its id from the experience dao
    // copy the user with the experience added to its liked experiences
    // update the user with the users dao
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    if (_random.nextBool()) {
      final _experienceSet = KtSet.of(
        getValidExperience(),
        getValidExperience().copyWith(
          id: 2,
          title: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          title: Name("Itaque"),
        ),
      );
      return getRightFuture(_experienceSet);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> rateDifficulty({
    Difficulty difficulty,
    int experienceId,
  }) {
    // get the experience by its id from the experience dao
    // copy with the new difficulty
    // update with the experience dao
    // To actually implement the difficulty being an average of all the ratings, we'd need to keep all the ratings given by everyone in the database, hadn't thought of that
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> rewardUser(int experienceId) {
    // get the logged in user with the users dao
    // get the experience by its id from the experience dao
    // calculate the experience that should be awarded
    // copy the user with the experience points added to its own
    // update the user with the users dao
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
