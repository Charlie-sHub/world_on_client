import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(
  as: SearchRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentSearchRepository implements SearchRepositoryInterface {
  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByDifficulty(Difficulty difficulty) {
    // TODO: implement searchExperiencesByDifficulty
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByTags(Set<Tag> tags) {
    // TODO: implement searchExperiencesByTags
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Experience>>> searchExperiencesByName(Name name) {
    // TODO: implement searchExperiencesByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<Tag>>> searchTagsByName(Name name) {
    // TODO: implement searchTagsByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<User>>> searchUsersByName(Name name) {
    // TODO: implement searchUsersByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, Set<User>>> searchUsersByUserName(Name username) {
    // TODO: implement searchUsersByUserName
    throw UnimplementedError();
  }
}
