import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_experience_list_stream.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: MainFeedRepositoryInterface, env: [Environment.dev])
class DevelopmentMainFeedRepository implements MainFeedRepositoryInterface {
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Stream<Either<Failure, KtList<Experience>>> watchFeed() async* {
    final _moorUser = await _database.moorUsersDao.getLoggedInUser();
    final _stream = _database.moorExperiencesDao.watchFeed(_moorUser.id);
    yield* createExperienceListStream(_stream, _logger);
  }
}
