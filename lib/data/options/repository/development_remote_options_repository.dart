import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

@LazySingleton(as: RemoteOptionsRepositoryInterface, env: [Environment.dev])
class DevelopmentRemoteOptionsRepository implements RemoteOptionsRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> deleteUser(UniqueId userId) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> saveGlobalOptions(Options option) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
