import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class UnFollowUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  UnFollowUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.unFollowUser(
      userId: params.userId,
      userToUnFollowId: params.userToUnFollowId,
    );
  }
}

class Params {
  final int userId;
  final int userToUnFollowId;

  Params({
    @required this.userId,
    @required this.userToUnFollowId,
  });
}
