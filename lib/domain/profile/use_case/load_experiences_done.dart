import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class LoadExperiencesDone implements AsyncUseCase<Set<Experience>, Params> {
  final ProfileRepositoryInterface repository;

  const LoadExperiencesDone(this.repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return repository.loadExperiencesDone(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
