import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(as: ExperienceLogRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceLogRepository implements ExperienceLogRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> addExperienceToLog(int experienceId) {
    // get the logged in user from the users dao
    // get the experience by its id with the experience dao
    // copy the logged in user with the experience added to its log
    // update user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> dismissExperienceFromLog(int experienceId) {
    // get the logged in user from the users dao
    // get the experience by its id with the experience dao
    // copy the logged in user with the experience removed from its log
    // update user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Stream<Either<Failure, KtSet<Experience>>> watchUserLog() {
    Either<Failure, KtSet<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidExperience(),
        getValidExperience().copyWith(
          id: 2,
          title: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          title: Name("Itaque"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
