import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ExperienceManagementRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceManagementRepository implements ExperienceManagementRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Future<Either<Failure, Unit>> createExperience(Experience experience) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> editExperience(Experience experience) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Experience>> getExperience(int id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidExperience());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> removeExperience(int id) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
