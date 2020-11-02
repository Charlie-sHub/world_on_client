import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchFeed implements StreamUseCase<KtList<Experience>, NoParams> {
  final MainFeedRepositoryInterface _repository;

  WatchFeed(this._repository);

  @override
  Stream<Either<Failure, KtList<Experience>>> call(NoParams params) async* {
    yield* _repository.watchFeed();
  }
}
