import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
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
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTitle(SearchTerm title) async* {
    yield* _firestore.experienceCollection
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => ExperienceDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
          (experiences) => right<Failure, KtList<Experience>>(
            experiences.where((experience) => experience.title.getOrCrash().contains(title.getOrCrash())).toImmutableList(),
          ),
        )
        .onErrorReturnWith(
          (error) => left(
            onError(error),
          ),
        );
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
          (error) => left(
            onError(error),
          ),
        );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByName(SearchTerm name) async* {
    yield* _firestore.userCollection
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (users) =>
        right<Failure, KtList<User>>(
          users.where((user) => user.name.getOrCrash().contains(name.getOrCrash())).toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByUserName(SearchTerm username) async* {
    yield* _firestore.userCollection
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
        ),
    )
      .map(
        (users) =>
        right<Failure, KtList<User>>(
          users.where((user) => user.username.getOrCrash().contains(username.getOrCrash())).toImmutableList(),
        ),
    )
      .onErrorReturnWith(
        (error) =>
        left(
          onError(error),
        ),
    );
  }

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

  Failure onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
