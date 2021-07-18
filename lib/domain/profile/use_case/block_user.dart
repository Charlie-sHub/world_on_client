import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/failures/profile_domain_failure.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class BlockUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  BlockUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    if (params.currentUserId != params.blockedId) {
      return _repository.blockUser(params.blockedId);
    } else {
      return left(
        const Failure.profileDomain(
          ProfileDomainFailure.blockItself(),
        ),
      );
    }
  }
}

class Params {
  final UniqueId currentUserId;
  final UniqueId blockedId;

  Params({
    required this.currentUserId,
    required this.blockedId,
  });
}
