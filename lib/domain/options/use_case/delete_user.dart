import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

class DeleteUser implements AsyncUseCase<Unit, Params> {
  final RemoteOptionsRepositoryInterface _repository;

  const DeleteUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userDeleting.adminPowers || params.userDeleting.id == params.userToDelete.id;
    if (isAuthorized) {
      return _repository.deleteUser(params.userToDelete.id);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userDeleting;
  final User userToDelete;

  Params({@required this.userDeleting, @required this.userToDelete});
}
