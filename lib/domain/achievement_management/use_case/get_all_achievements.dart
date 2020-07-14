import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: Environment.dev)
class GetAllAchievements implements StreamUseCase<KtSet<Achievement>, NoParams> {
  final AchievementRepositoryInterface _repository;
  
  GetAllAchievements(this._repository);
  
  @override
  Stream<Either<Failure, KtSet<Achievement>>> call(NoParams params) {
    return _repository.getAllAchievement();
  }
}
