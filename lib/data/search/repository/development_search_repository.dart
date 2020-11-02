import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_experience_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_tag_list_stream.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_user_list_stream.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

import '../../../injection.dart';

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.dev])
class DevelopmentSearchRepository implements SearchRepositoryInterface {
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByDifficulty(Difficulty difficulty) async* {
    final _stream = _database.moorExperiencesDao.watchSearchExperiencesByDifficulty(difficulty.getOrCrash());
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTags(TagSet tags) async* {
    final _tagIdList = tags.getOrCrash().map((_tag) => _tag.id).asList();
    final _stream = _database.moorExperiencesDao.watchSearchExperiencesByTags(_tagIdList);
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTitle(SearchTerm title) async* {
    final _stream = _database.moorExperiencesDao.watchSearchExperiencesByTitle(title.getOrCrash());
    yield* createExperienceListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchSearchTagsByName(SearchTerm name) async* {
    final _stream = _database.moorTagsDao.watchSearchTagsByName(name.getOrCrash());
    yield* createTagListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByName(SearchTerm name) async* {
    final _stream = _database.moorUsersDao.watchSearchUsersByName(name.getOrCrash());
    yield* createUserListStream(_stream, _logger);
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByUserName(SearchTerm username) async* {
    final _stream = _database.moorUsersDao.watchSearchUsersByUserName(username.getOrCrash());
    yield* createUserListStream(_stream, _logger);
  }
}
