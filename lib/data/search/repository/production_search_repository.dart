import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(
  as: SearchRepositoryInterface,
  env: Environment.prod,
)
class ProductionSearchRepository implements SearchRepositoryInterface {
  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByDifficulty(Difficulty difficulty) {
    // TODO: implement searchExperiencesByDifficulty
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByTags(TagSet tags) {
    // TODO: implement searchExperiencesByTags
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByName(SearchTerm name) {
    // TODO: implement searchExperiencesByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Tag>>> searchTagsByName(SearchTerm name) {
    // TODO: implement searchTagsByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<User>>> searchUsersByName(SearchTerm name) {
    // TODO: implement searchUsersByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<User>>> searchUsersByUserName(SearchTerm username) {
    // TODO: implement searchUsersByUserName
    throw UnimplementedError();
  }
}
