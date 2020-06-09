import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class DeleteExperience implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  DeleteExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.userRequesting == params.experience.creator || params.userRequesting.adminPowers;
    if (isAuthorized) {
      return _repository.deleteExperience(params.experience.id);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User userRequesting;
  final Experience experience;

  Params({@required this.userRequesting, @required this.experience});
}
