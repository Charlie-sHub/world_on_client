import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.prod])
class ProductionSearchRepository implements SearchRepositoryInterface {
  @override
  Stream<Either<Failure, KtList<Experience>>> searchExperiencesByDifficulty(Difficulty difficulty) {
    // TODO: implement searchExperiencesByDifficulty
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> searchExperiencesByTags(TagSet tags) {
    // TODO: implement searchExperiencesByTags
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> searchExperiencesByName(SearchTerm name) {
    // TODO: implement searchExperiencesByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> searchTagsByName(SearchTerm name) {
    // TODO: implement searchTagsByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> searchUsersByName(SearchTerm name) {
    // TODO: implement searchUsersByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> searchUsersByUserName(SearchTerm username) {
    // TODO: implement searchUsersByUserName
    throw UnimplementedError();
  }
}
