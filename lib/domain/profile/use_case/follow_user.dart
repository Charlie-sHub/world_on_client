import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/failures/profile_domain_failure.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class FollowUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  FollowUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    if (params.currentUserId != params.followedId) {
      return _repository.followUser(params.followedId);
    } else {
      return left(
        const Failure.profileDomain(
          ProfileDomainFailure.followItself(),
        ),
      );
    }
  }
}

class Params {
  final UniqueId currentUserId;
  final UniqueId followedId;

  Params({
    required this.currentUserId,
    required this.followedId,
  });
}
