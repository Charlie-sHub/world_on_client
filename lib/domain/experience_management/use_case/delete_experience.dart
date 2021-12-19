import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';
import 'package:worldon/injection.dart';

// Maybe move this to Experience management
@LazySingleton(env: [Environment.dev, Environment.prod])
class DeleteExperience implements AsyncUseCase<Unit, Params> {
  final ExperienceManagementRepositoryInterface _repository;

  DeleteExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final _userRequestingOption = await getIt<GetLoggedInUser>().call(
      getIt<NoParams>(),
    );
    final _userRequesting = _userRequestingOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final _isAuthorized = _userRequesting.id == params.experience.creator.id ||
        _userRequesting.adminPowers;
    if (_isAuthorized) {
      return _repository.deleteExperience(params.experience.id);
    } else {
      return left(
        const Failure.coreDomain(
          CoreDomainFailure.unAuthorizedError(),
        ),
      );
    }
  }
}

class Params {
  final Experience experience;

  Params({
    required this.experience,
  });
}
