import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(
  as: ExperienceNavigationRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentExperienceNavigationRepository implements ExperienceNavigationRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> finishExperience(int experienceId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> likeExperience(int experienceId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, KtSet<Experience>>> loadSurroundingExperiences(Coordinates coordinates) {
    Either<Failure, KtSet<Experience>> _either;
    if (_random.nextBool()) {
      final _experienceSet = KtSet.of(
        getValidExperience(),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Itaque"),
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
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> rewardUser(int experienceId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }
}
