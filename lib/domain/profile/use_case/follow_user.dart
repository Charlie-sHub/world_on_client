import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class FollowUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  FollowUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.followUser(
      userId: params.userId,
      userToFollowId: params.userToFollowId,
    );
  }
}

class Params {
  final int userId;
  final int userToFollowId;

  Params({@required this.userId, @required this.userToFollowId});
}
