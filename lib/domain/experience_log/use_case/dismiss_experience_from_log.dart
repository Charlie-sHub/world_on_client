import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository.dart';

class DismissExperienceFromLog implements AsyncUseCase<Unit, Params> {
  final ExperienceLogRepository repository;

  DismissExperienceFromLog(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.dismissExperienceFromLog(
      experienceId: params.experienceId,
      userId: params.userId,
    );
  }
}

class Params {
  final int experienceId;
  final int userId;

  Params({this.experienceId, this.userId});
}
