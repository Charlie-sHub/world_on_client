import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class DeleteTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepositoryInterface _repository;

  DeleteTag(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final userRequestingOption =
        await getIt<GetLoggedInUser>().call(getIt<NoParams>());
    final userRequesting = userRequestingOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final isAuthorized = userRequesting.id == params.tag.creatorId ||
        userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.removeTag(params.tag.id);
    } else {
      return left(
        const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()),
      );
    }
  }
}

class Params {
  final Tag tag;

  Params({
    required this.tag,
  });
}
