import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository.dart';

class LoadUserLog implements AsyncUseCase<Set<Experience>, Params> {
  final ExperienceLogRepository _repository;

  const LoadUserLog(this._repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return _repository.loadUserLog(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
