import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class LoadUserAchievements implements StreamUseCase<Set<Achievement>, Params> {
  final ProfileRepositoryInterface _repository;

  LoadUserAchievements(this._repository);

  @override
  Stream<Either<Failure, Set<Achievement>>> call(Params params) async* {
    yield* _repository.loadUserAchievements(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
