import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_achievement.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/injectionor/moor_database.dart';

@LazySingleton(as: AchievementRepositoryInterface, env: [Environment.dev])
class DevelopmentAchievementRepository implements AchievementRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Future<Either<Failure, Unit>> awardAchievement({
    int achievementId,
    int userId,
  }) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> createAchievement(Achievement achievement) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> editAchievement(Achievement achievement) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Achievement>> getAchievement(int ac) {
    if (_random.nextBool()) {
      return getRightFuture(getValidAchievement());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtSet<Achievement>>> watchAllAchievements() {
    Either<Failure, KtSet<Achievement>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidAchievement(),
        getValidAchievement().copyWith(
          id: 2,
          name: Name("Nullam quam"),
        ),
        getValidAchievement().copyWith(
          id: 3,
          name: Name("Curabitur"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Stream<Either<Failure, KtSet<Achievement>>> watchUserAchievements() {
    Either<Failure, KtSet<Achievement>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidAchievement(),
        getValidAchievement().copyWith(
          id: 2,
          name: Name("Nullam quam"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Future<Either<Failure, Unit>> removeAchievement(int ac) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
