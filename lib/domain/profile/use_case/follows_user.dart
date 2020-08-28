import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class FollowsUser implements AsyncUseCase<bool, Params> {
  final ProfileRepositoryInterface _repository;

  FollowsUser(this._repository);

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return _repository.followsUser(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
