import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.prod])
class ProductionSearchRepository implements SearchRepositoryInterface {
  final _logger = Logger();
  final FirebaseFirestore _firestore;

  ProductionSearchRepository(this._firestore);

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByDifficulty(Difficulty difficulty) {
    // TODO: implement searchExperiencesByDifficulty
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTags(TagSet tags) {
    // TODO: implement searchExperiencesByTags
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTitle(SearchTerm title) {
    // TODO: implement searchExperiencesByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchSearchTagsByName(SearchTerm name) async* {
    yield* _firestore.tagCollection
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => TagDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
          (tags) => right<Failure, KtList<Tag>>(
            tags.where((tag) => tag.name.getOrCrash().contains(name.getOrCrash())).toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (error) {
        if (error is FirebaseException) {
          _logger.e("Some FirebaseException: ${error.message}");
          return left(
            const Failure.coreData(
              CoreDataFailure.serverError(errorString: "Unknown server error"),
            ),
          );
        } else {
          _logger.e("Some server error");
          return left(
            const Failure.coreData(
              CoreDataFailure.serverError(errorString: "Unknown server error"),
            ),
          );
        }
      },
    );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByName(SearchTerm name) {
    // TODO: implement searchUsersByName
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByUserName(SearchTerm username) {
    // TODO: implement searchUsersByUserName
    throw UnimplementedError();
  }
}
