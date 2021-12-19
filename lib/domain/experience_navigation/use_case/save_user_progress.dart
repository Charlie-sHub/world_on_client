import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class SaveUserProgress implements AsyncUseCase<ObjectiveList, Params> {
  final ExperienceNavigationRepositoryInterface _repository;

  SaveUserProgress(this._repository);

  @override
  Future<Either<Failure, ObjectiveList>> call(Params params) async =>
      _repository.saveUserProgress(
        params.objectiveList,
        params.experienceId,
      );
}

class Params {
  final UniqueId experienceId;
  final ObjectiveList objectiveList;

  Params({
    required this.experienceId,
    required this.objectiveList,
  });
}
