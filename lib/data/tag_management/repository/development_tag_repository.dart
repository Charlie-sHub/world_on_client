import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';

import '../../../injection.dart';

@LazySingleton(as: TagCoreRepositoryInterface, env: [Environment.dev])
class DevelopmentTagRepository implements TagCoreRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Future<Either<Failure, Unit>> addTagToInterests(Tag tag) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userInterest = _createUserInterest(_moorUserWithRelations.user, tag);
          await _database.moorTagsDao.insertUserInterest(_userInterest);
          return right(unit);
        },
      );
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag) async {
    try {
      final _moorUserOption = await _database.moorUsersDao.getLoggedInUser();
      return _moorUserOption.fold(
        () => throw UnAuthenticatedError,
        (_moorUserWithRelations) async {
          final _userInterest = _createUserInterest(_moorUserWithRelations.user, tag);
          await _database.moorTagsDao.removeUserInterest(_userInterest);
          return right(unit);
        },
      );
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  UserInterestsCompanion _createUserInterest(MoorUser _moorUser, Tag tag) => UserInterestsCompanion.insert(
        userId: _moorUser.id,
        tagId: tag.id,
      );

  @override
  Stream<Either<Failure, KtList<Tag>>> watchAllTags() {
    Either<Failure, KtList<Tag>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidTag(),
          getValidTag().copyWith(
            id: 2,
            name: Name("Nullam quam"),
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Future<Either<Failure, User>> getCreator(int id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidUser());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchTagsByCreator(int id) {
    Either<Failure, KtList<Tag>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidTag(),
          getValidTag().copyWith(
            id: 2,
            name: Name("Nullam quam"),
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
