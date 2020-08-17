import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';
import 'package:worldon/injectionatabase.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.dev])
class DevelopmentCoreRepository implements CoreRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Future<Either<Failure, Unit>> deleteCache() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
