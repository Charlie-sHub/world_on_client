import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class UnFollowUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  UnFollowUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.unFollowUser(
      params.userToUnFollowId,
    );
  }
}

class Params {
  final UniqueId userToUnFollowId;

  Params({required this.userToUnFollowId});
}
