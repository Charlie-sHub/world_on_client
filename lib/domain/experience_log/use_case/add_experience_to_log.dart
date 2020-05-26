import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository.dart';

class AddExperienceToLog implements AsyncUseCase<Unit, Params> {
  final ExperienceLogRepository repository;

  const AddExperienceToLog(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.addExperienceToLog(
      experienceId: params.experienceId,
      userId: params.userId,
    );
  }
}

class Params {
  final int experienceId;
  final int userId;

  Params({@required this.experienceId, @required this.userId});
}
