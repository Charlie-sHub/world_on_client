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

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.dev])
class DevelopmentSearchRepository implements SearchRepositoryInterface {
  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByDifficulty(Difficulty difficulty) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTags(TagSet tags) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTitle(SearchTerm title) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchTagsByName(SearchTerm name) async* {
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchUsersByName(SearchTerm name) async* {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, KtList<User>>> getShareableUsers() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, KtList<User>>> searchShareableUsers(SearchTerm name) {
    throw UnimplementedError();
  }
}
