import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';
@LazySingleton(as: MainFeedRepositoryInterface, env: [Environment.dev])
class DevelopmentMainFeedRepository implements MainFeedRepositoryInterface {

  @override
  Stream<Either<Failure, KtList<Experience>>> watchFeed() async* {
    throw UnimplementedError();
  }
}
