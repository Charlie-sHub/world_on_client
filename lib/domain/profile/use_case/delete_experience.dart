import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository.dart';

class DeleteExperience implements AsyncUseCase<Unit, Params> {
  final ProfileRepository _repository;

  const DeleteExperience(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.user == params.experience.creator || params.user.adminPowers;
    if (isAuthorized) {
      return _repository.deleteExperience(params.experience.id);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User user;
  final Experience experience;

  Params({@required this.user, @required this.experience});
}
