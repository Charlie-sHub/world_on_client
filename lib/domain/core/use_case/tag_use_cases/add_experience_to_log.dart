import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/repository/core_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class AddExperienceToLog implements AsyncUseCase<Unit, Params> {
  final CoreRepository repository;

  AddExperienceToLog(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.addExperienceToLog(
      userId: params.userId,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int userId;
  final int experienceId;

  Params({this.userId, this.experienceId});
}
