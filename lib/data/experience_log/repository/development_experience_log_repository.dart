import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: ExperienceLogRepositoryInterface, env: [Environment.dev])
class DevelopmentExperienceLogRepository implements ExperienceLogRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  final _logger = Logger();

  @override
  Future<Either<Failure, Unit>> addExperienceToLog(int experienceId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userToDoExperience = UserToDoExperience(
        userId: _moorUser.id,
        experienceId: experienceId,
      );
      await _database.moorExperiencesDao.insertExperienceTodo(_userToDoExperience);
      return right(unit);
    } catch (exception) {
      final _errorMessage = "Development repository error: $exception";
      _logger.e(_errorMessage);
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: _errorMessage,
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> dismissExperienceFromLog(int experienceId) async {
    try {
      final _moorUser = await _database.moorUsersDao.getLoggedInUser();
      final _userToDoExperience = UserToDoExperience(
        userId: _moorUser.id,
        experienceId: experienceId,
      );
      await _database.moorExperiencesDao.removeExperienceTodo(_userToDoExperience);
      return right(unit);
    } catch (exception) {
      final _errorMessage = "Development repository error: $exception";
      _logger.e(_errorMessage);
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: _errorMessage,
          ),
        ),
      );
    }
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
