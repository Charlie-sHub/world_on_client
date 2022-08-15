import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/algolia/algolia_helpers.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.prod])
class ProductionSearchRepository implements SearchRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;

  // TODO: Use environment variables instead of hard coding the apiKey and applicationId
  Algolia algolia = const Algolia.init(
    applicationId: "F2D62LNQIN",
    apiKey: "8e7f2dd6d6d42450a4b3d12388b96207",
  );

  ProductionSearchRepository(
    this._firestore,
    this._logger,
  );

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTitle(
    SearchTerm term,
  ) async* {
    final results = <Experience>[];
    try {
      final algoliaQuery =
          algolia.queryExperienceIndex().query(term.getOrCrash()).setLength(40);
      final querySnapshot = await algoliaQuery.getObjects();
      for (final queryResult in querySnapshot.hits) {
        final id = queryResult.objectID;
        final documentReference =
            await _firestore.experienceDocumentReference(id);
        final experienceDocument = await documentReference.get();
        final experience = experienceDocument.data()!.toDomain();
        results.add(experience);
      }
      if (results.isNotEmpty) {
        yield right<Failure, KtList<Experience>>(
          results.toImmutableList(),
        );
      } else {
        yield left<Failure, KtList<Experience>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error) {
      yield left<Failure, KtList<Experience>>(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchTagsByName(SearchTerm term) async* {
    final results = <Tag>[];
    try {
      final algoliaQuery =
          algolia.queryTagIndex().query(term.getOrCrash()).setLength(50);
      final querySnapshot = await algoliaQuery.getObjects();
      for (final queryResult in querySnapshot.hits) {
        final id = queryResult.objectID;
        final tagDocument = await _firestore.tagCollection.doc(id).get();
        final tag = tagDocument.data()!.toDomain();
        results.add(tag);
      }
      if (results.isNotEmpty) {
        yield right<Failure, KtList<Tag>>(
          results.toImmutableList(),
        );
      } else {
        yield left<Failure, KtList<Tag>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error) {
      yield left<Failure, KtList<Tag>>(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchUsersByName(
    SearchTerm term,
  ) async* {
    final results = <User>[];
    try {
      final algoliaQuery =
          algolia.queryUserIndex().query(term.getOrCrash()).setLength(50);
      final querySnapshot = await algoliaQuery.getObjects();
      for (final queryResult in querySnapshot.hits) {
        final id = queryResult.objectID;
        final userDocument = await _firestore.userCollection.doc(id).get();
        final user = userDocument.data()!.toDomain();
        results.add(user);
      }
      if (results.isNotEmpty) {
        yield right<Failure, KtList<User>>(
          results.toImmutableList(),
        );
      } else {
        yield left<Failure, KtList<User>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error) {
      yield left<Failure, KtList<User>>(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTags(
    TagSet tags,
  ) async* {
    final tagSet = tags.getOrCrash();
    if (tagSet.isNotEmpty()) {
      final auxTagList = tagSet.toList().asList();
      final iterableOfIdLists = partition(auxTagList, 10);
      final combinedStreamList = iterableOfIdLists
          .map(
            (idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.tagsIds,
                  arrayContainsAny: idList,
                )
                .orderBy(
                  ExperienceFields.creationDate,
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        combinedStreamList,
        (List<QuerySnapshot<ExperienceDto>> values) {
          final documentList = <QueryDocumentSnapshot<ExperienceDto>>[];
          for (final snapshot in values) {
            for (final document in snapshot.docs) {
              documentList.add(document);
            }
          }
          final filteredList = documentList.take(50);
          final experienceList = filteredList.map(
            (document) => document.data().toDomain(),
          );
          return experienceList;
        },
      ).map(
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
        (error, _) => left(_onError(error)),
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
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByDifficulty(
    Difficulty difficulty,
  ) async* {
    yield* _firestore.experienceCollection
        .where(
          ExperienceFields.difficulty,
          isEqualTo: difficulty.getOrCrash(),
        )
        .limit(50)
        .orderBy("difficulty")
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => document.data().toDomain(),
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
      (error, _) => left(_onError(error)),
    );
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(
          errorString: "Firebase error: ${error.message}",
        ),
      );
    } else if (error is AlgoliaError) {
      _logger.e("Algolia error: ${error.error}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Algolia error"),
      );
    } else if (error is AssertionError) {
      _logger.e("Failed assertion error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Failed assertion error"),
      );
    } else {
      _logger.e("Unknown server error, type: ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
