import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository.dart';

class LoadUserAchievements implements AsyncUseCase<Set<Achievement>, Params> {
  final ProfileRepository _repository;

  const LoadUserAchievements(this._repository);

  @override
  Future<Either<Failure, Set<Achievement>>> call(Params params) async {
    return _repository.loadUserAchievements(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
