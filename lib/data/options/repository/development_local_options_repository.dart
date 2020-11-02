import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/options/repository/local_options_repository_interface.dart';

@LazySingleton(as: LocalOptionsRepositoryInterface, env: [Environment.dev])
class DevelopmentLocalOptionsRepository implements LocalOptionsRepositoryInterface {
  final _random = Random();

  @override
  Future<Either<Failure, Unit>> saveLocalOptions(Options option) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
