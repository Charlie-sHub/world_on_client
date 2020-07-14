import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class LoadUserAchievements implements StreamUseCase<KtSet<Achievement>, Params> {
  final ProfileRepositoryInterface _repository;
  
  LoadUserAchievements(this._repository);
  
  @override
  Stream<Either<Failure, KtSet<Achievement>>> call(Params params) async* {
    yield* _repository.loadUserAchievements(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
