import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository.dart';

class EditUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepository repository;

  const EditUser(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.userToEdit || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return repository.editUser(params.userToEdit);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;

  final User userToEdit;

  Params({@required this.userRequesting, @required this.userToEdit});
}
