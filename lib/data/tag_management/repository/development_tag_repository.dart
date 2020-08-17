import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';
import 'package:worldon/injectionoor/moor_database.dart';

@LazySingleton(as: TagCoreRepositoryInterface, env: [Environment.dev])
class DevelopmentTagRepository implements TagCoreRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Stream<Either<Failure, KtSet<Tag>>> watchAllTags() {
    Either<Failure, KtSet<Tag>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidTag(),
        getValidTag().copyWith(
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
  Future<Either<Failure, User>> getCreator(int id) {
    if (_random.nextBool()) {
      return getRightFuture(getValidUser());
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Stream<Either<Failure, KtSet<Tag>>> watchTagsByCreator(int id) {
    Either<Failure, KtSet<Tag>> _either;
    if (_random.nextBool()) {
      _either = right(KtSet.of(
        getValidTag(),
        getValidTag().copyWith(
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
  Future<Either<Failure, Unit>> addTagToInterests(Tag tag) {
    // get the logged in user from the users dao
    // get the tag by its id with the tag dao
    // copy the logged in user with the tag added to its interests
    // update user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag) {
    // get the logged in user from the users dao
    // get the tag by its id with the tag dao
    // copy the logged in user with the tag removed from its interests
    // update user
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
