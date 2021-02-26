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

  // TODO: Find a better way to filter the results
  // Quite annoying that Firestore doesn't support filtering by substring
  // The current way of doing it is completely un-scalable
  // hopefully it will work for the tests
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
      (experiences) {
        final _resultList = experiences
            .where(
              (experience) => experience.title.getOrCrash().toLowerCase().contains(
                    title.getOrCrash().toLowerCase(),
                  ),
            )
            .toImmutableList();
        if (_resultList.isNotEmpty()) {
          return right<Failure, KtList<Experience>>(
            _resultList,
          );
        } else {
          return left<Failure, KtList<Experience>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(onError(error)),
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
      (tags) {
        final _resultList = tags
            .where(
              (tag) => tag.name.getOrCrash().toLowerCase().contains(
                    name.getOrCrash().toLowerCase(),
                  ),
            )
            .toImmutableList();
        if (_resultList.isNotEmpty()) {
          return right<Failure, KtList<Tag>>(
            _resultList,
          );
        } else {
          return left<Failure, KtList<Tag>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
        (error) => left(onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByName(SearchTerm name) async* {
    yield* _firestore.userCollection
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
      (users) {
        final _resultList = users
            .where(
              (user) => user.name.getOrCrash().toLowerCase().contains(
                    name.getOrCrash().toLowerCase(),
                  ),
            )
            .toImmutableList();
        if (_resultList.isNotEmpty()) {
          return right<Failure, KtList<User>>(
            _resultList,
          );
        } else {
          return left<Failure, KtList<User>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
        (error) => left(onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByUserName(SearchTerm username) async* {
    yield* _firestore.userCollection
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => UserDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
      (users) {
        final _resultList = users
            .where(
              (user) => user.username.getOrCrash().toLowerCase().contains(
                    username.getOrCrash().toLowerCase(),
                  ),
            )
            .toImmutableList();
        if (_resultList.isNotEmpty()) {
          return right<Failure, KtList<User>>(
            _resultList,
          );
        } else {
          return left<Failure, KtList<User>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTags(TagSet tags) async* {
    if (tags.getOrCrash().isNotEmpty()) {
      final _auxTagList = tags.getOrCrash().toList().asList();
      yield* _firestore.experienceCollection
          .where(
            "tagsIds",
            arrayContainsAny: _auxTagList,
          )
          .orderBy(
            "creationDate",
            descending: true,
          )
          .snapshots()
          .map(
            (snapshot) => snapshot.docs.map(
              (document) => ExperienceDto.fromFirestore(document).toDomain(),
            ),
          )
          .map(
        (experiences) {
          if (experiences.isNotEmpty) {
            return right<Failure, KtList<Experience>>(
              experiences.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Experience>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
        (error) => left(onError(error)),
      );
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByDifficulty(Difficulty difficulty) {
    // TODO: implement searchExperiencesByDifficulty
    throw UnimplementedError();
  }

  Failure onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else if (error is AssertionError) {
      _logger.e("Failed assertion error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Failed assertion error"),
      );
    } else {
      _logger.e("Unknown server error, type: ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
