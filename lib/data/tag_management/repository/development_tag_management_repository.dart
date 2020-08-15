import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(as: TagManagementRepositoryInterface, env: [Environment.dev])
class DevelopmentTagManagementRepository implements TagManagementRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> createTag(Tag tag) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> editTag(Tag tag) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Tag>> getTag(int id) {
    if (_random.nextBool()) {
      return getRightFuture(
        getValidTag().copyWith(
          id: id,
        ),
      );
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> removeTag(int id) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
