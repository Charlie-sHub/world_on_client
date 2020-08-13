import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.dev])
class DevelopmentCoreRepository implements CoreRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> deleteCache() {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }
}
