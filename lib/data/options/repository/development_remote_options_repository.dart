import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_left_server_error.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_right_future.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

@LazySingleton(as: RemoteOptionsRepositoryInterface, env: [Environment.dev])
class DevelopmentRemoteOptionsRepository implements RemoteOptionsRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> deleteUser(int userId) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }

  @override
  Future<Either<Failure, Unit>> saveGlobalOptions(Options option) {
    if (_random.nextBool()) {
      return getRightFuture(unit);
    } else {
      return getLeftServerErrorFuture();
    }
  }
}
