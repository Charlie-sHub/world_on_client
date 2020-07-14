import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(
  as: ExperienceLogRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentExperienceLogRepository implements ExperienceLogRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> addExperienceToLog(int experienceId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> dismissExperienceFromLog(int experienceId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtSet<Experience>>> loadUserLog() {
    Either<Failure, KtSet<Experience>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidExperience(),
        getValidExperience().copyWith(
          id: 2,
          name: Name("Phasellus"),
        ),
        getValidExperience().copyWith(
          id: 3,
          name: Name("Itaque"),
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
