import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository.dart';

class UnFollowUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepository _repository;

  const UnFollowUser(this._repository);

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

  Params({@required this.userId, @required this.userToUnFollowId});
}
