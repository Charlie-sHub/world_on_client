import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class AddExperienceToLog implements AsyncUseCase<Unit, Params> {
  final CoreRepositoryInterface _repository;

  const AddExperienceToLog(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.addExperienceToLog(
      userId: params.userId,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int userId;
  final int experienceId;

  Params({@required this.userId, @required this.experienceId});
}
