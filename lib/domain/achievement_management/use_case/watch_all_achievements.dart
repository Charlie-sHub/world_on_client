import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchAllAchievements implements StreamUseCase<KtList<Achievement>, NoParams> {
  final AchievementRepositoryInterface _repository;

  WatchAllAchievements(this._repository);

  @override
  Stream<Either<Failure, KtList<Achievement>>> call(NoParams params) => _repository.watchAllAchievements();
}
