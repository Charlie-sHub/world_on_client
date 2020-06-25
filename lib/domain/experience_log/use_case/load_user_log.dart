import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

class LoadUserLog implements AsyncUseCase<Set<Experience>, NoParams> {
  final ExperienceLogRepositoryInterface _repository;

  LoadUserLog(this._repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(NoParams params) async {
    return _repository.loadUserLog();
  }
}
