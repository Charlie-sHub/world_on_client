import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class RemoveExperienceLiked implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  const RemoveExperienceLiked(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.removeExperienceLiked(
      userId: params.userId,
      experienceId: params.experienceId,
    );
  }
}

class Params {
  final int experienceId;
  final int userId;

  Params({@required this.experienceId, @required this.userId});
}
