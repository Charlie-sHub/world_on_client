import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class FollowUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;
  
  FollowUser(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.followUser(params.userToFollowId);
  }
}

class Params {
  final int userToFollowId;

  Params({@required this.userToFollowId});
}
