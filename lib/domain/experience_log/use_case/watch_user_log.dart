import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchUserLog implements StreamUseCase<KtList<Experience>, NoParams> {
  final ExperienceLogRepositoryInterface _repository;

  WatchUserLog(this._repository);

  @override
  Stream<Either<Failure, KtList<Experience>>> call(NoParams params) async* {
    yield* _repository.watchUserLog();
  }
}
