import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class EditUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface repository;

  EditUser(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final userRequestingOption =
        await getIt<GetLoggedInUser>().call(getIt<NoParams>());
    final userRequesting = userRequestingOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    final isAuthorized = userRequesting.id == params.userToEdit.id ||
        userRequesting.adminPowers;
    if (isAuthorized) {
      return repository.editUser(params.userToEdit);
    } else {
      return left(
        const Failure.coreDomain(CoreDomainFailure.unAuthorizedError()),
      );
    }
  }
}

class Params {
  final User userToEdit;

  Params({
    required this.userToEdit,
  });
}
